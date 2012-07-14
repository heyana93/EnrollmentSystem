using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;

/// <summary>
/// Utility functions avaiable for all pages
/// </summary>
public class Utilities
{

    /// <summary> The start date </summary>
    private static DateTime startDate;

    /// <summary> The version </summary>
    private static String version = "v1.0.1";

    /// <summary>   Default constructor. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>

    public Utilities()
    {
    }

    /// <summary>   Gets or sets the date of the start. </summary>
    ///
    /// <value> The date of the start. </value>

    public static DateTime StartDate
    {
        get
        {
            return startDate;
        }
        set
        {
            startDate = value;
        }
    }

    /// <summary>   Shortens the input string to provided length. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="s">    The string. </param>
    /// <param name="len">  The length. </param>
    ///
    /// <returns>   . </returns>

    public static string Shorten(string s, int len)
    {
        if (string.IsNullOrEmpty(s))
        {
            return String.Empty;
        }
        else if (s.Length > len)
        {
            return string.Format("{0}...", s.Substring(0, len - 3));
        }
        else
        {
            return s;
        }
    }

    /// <summary>   Write Sex to string in readable format. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="s">    The string. </param>
    ///
    /// <returns>   . </returns>

    public static string SexToString(string s)
    {
        if (s == "m")
            return "Mężczyzna";
        else if (s == "f")
            return "Kobieta";
        else
            return "Dowolna";
    }

    /// <summary>   Generate a term code. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="building"> The building. </param>
    /// <param name="room">     The room. </param>
    /// <param name="day">      The day. </param>
    /// <param name="hour">     The hour. </param>
    ///
    /// <returns>   The term code. </returns>

    public static string GetCourseCode(String building, String room, String day, String hour)
    {
        String tB = building.Replace("-", "");
        tB = tB.Replace(" ", "");
        if (tB.Length > 4)
            tB = tB.Substring(0, 4);
        String tD = DayToShortString(day);
        String tH = hour.Substring(0, 2);

        return (tB + room + "-" + tD + tH);
    }

    /// <summary>   Converts day to short string in readable format. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="s">    The string. </param>
    ///
    /// <returns>   . </returns>

    public static string DayToShortString(string s)
    {
        if (s == "MON")
            return "PN";
        else if (s == "TUE")
            return "WT";
        else if (s == "WEN")
            return "SR";
        else if (s == "THU")
            return "CZ";
        else if (s == "FRI")
            return "PT";
        else if (s == "SAT")
            return "SO";
        else if (s == "SUN")
            return "NE";

        return String.Empty;
    }

    /// <summary>   Converts provided time objects to string. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="s1">   The first Object. </param>
    /// <param name="s2">   The second Object. </param>
    ///
    /// <returns>   . </returns>

    public static string TimeToString(Object s1, Object s2)
    {
        DateTime t1 = DateTime.Parse(s1.ToString());
        DateTime t2 = DateTime.Parse(s2.ToString());
        return (t1.ToShortTimeString() + " - " + t2.ToShortTimeString());
    }

    /// <summary>   Gets the academic year. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <returns>   The academic year. </returns>

    public static string GetAcademicYear()
    {
        if (DateTime.Now.Month > 7)
            return String.Format("{0}/{1}", DateTime.Now.Year, DateTime.Now.Year+1);
        else
            return String.Format("{0}/{1}", DateTime.Now.Year-1, DateTime.Now.Year);
    }

    /// <summary>   Gets the academic semester. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <returns>   The academic semester. </returns>

    public static string GetAcademicSemester()
    {
        if (DateTime.Now.Month > 9 || DateTime.Now.Month < 2 ||
           (DateTime.Now.Month == 2 && DateTime.Now.Day < 16))
            return "Zimowy";
        else if ((DateTime.Now.Month < 8 && DateTime.Now.Month > 2) || 
                 (DateTime.Now.Month == 2 && DateTime.Now.Day > 15))
            return "Letni";
        else
            return String.Empty;
    }

    /// <summary>   Generates student's list and writes to pdf. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="data">         The data. </param>
    /// <param name="path">         Full pathname of the file. </param>
    /// <param name="imgPath">      Full pathname of the image file. </param>
    /// <param name="name">         The name. </param>
    /// <param name="userName">     Name of the user. </param>
    /// <param name="courseName">   Name of the course. </param>
    /// <param name="courseCode">   The course code. </param>
    /// <param name="time">         The time. </param>
    /// <param name="place">        The place. </param>

    public static void StudentListToPDF(List<String> data, String path, String imgPath, String name, String userName, 
                                        String courseName, String courseCode, String time, String place)
    {
        Document doc = new Document(PageSize.A4.Rotate());
        doc.SetMargins(35f, 30f, 180f, 70f);
        PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(path + "\\" + name + ".pdf", FileMode.Create));
        doc.Open();

        //fonts
        BaseFont bf = BaseFont.CreateFont("c:\\windows\\fonts\\tahoma.ttf", "iso-8859-2", BaseFont.EMBEDDED);
        iTextSharp.text.Font header1 = new Font(bf, 14, iTextSharp.text.Font.UNDERLINE, BaseColor.BLACK);
        iTextSharp.text.Font header2 = new Font(bf, 12, iTextSharp.text.Font.ITALIC, BaseColor.BLACK);
        iTextSharp.text.Font mf = new Font(bf, 12, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);
        iTextSharp.text.Font normal = new Font(bf, 10, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);
        //---------
        //image
        Image img = Image.GetInstance(imgPath + "logo.jpg");
        img.ScalePercent(24f);
        img.SetAbsolutePosition(30, doc.PageSize.Height - img.ScaledHeight - 40);
        doc.Add(img);
        //---------
        //bottom and top lines
        PdfContentByte cb = writer.DirectContent;
        cb.MoveTo(30, doc.PageSize.Height - 104);
        cb.LineTo(doc.PageSize.Width - 30, doc.PageSize.Height - 104);
        cb.Stroke();
        cb.MoveTo(30, 60);
        cb.LineTo(doc.PageSize.Width - 30, 60);
        cb.Stroke();
        //------------
        //general paragraphs        
        cb.BeginText();
        cb.SetTextMatrix(32, doc.PageSize.Height - img.ScaledHeight - 40 - 10);
        cb.SetFontAndSize(bf, 8);
        cb.ShowText("Uniwersytet");
        cb.EndText();
        cb.BeginText();
        cb.SetTextMatrix(31, doc.PageSize.Height - img.ScaledHeight - 40 - 20);
        cb.SetFontAndSize(bf, 8);
        cb.ShowText("Ekonomiczny");
        cb.EndText();
        PlaceText(cb, "Uniwersytet Ekonomiczny", header1, 0, doc.PageSize.Height - 40 - 16,
            doc.PageSize.Width, doc.PageSize.Height - 40, 10, Element.ALIGN_CENTER);
        PlaceText(cb, DateTime.Now.ToShortDateString(), normal, doc.PageSize.Width - 120, doc.PageSize.Height - 40 - 12,
            doc.PageSize.Width - 30, doc.PageSize.Height - 40, 12, Element.ALIGN_RIGHT);
        PlaceText(cb, "Lista studentów dla wybranego kursu", header2, 90, doc.PageSize.Height - 60 - 14,
            340, doc.PageSize.Height - 60, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Prowadzący: ", mf, 35, doc.PageSize.Height - 112 - 14,
            110, doc.PageSize.Height - 112, 12, Element.ALIGN_LEFT);
        PlaceText(cb, userName, header2, 106, doc.PageSize.Height - 112 - 14,
            250, doc.PageSize.Height - 112, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Przedmiot: ", mf, 35, doc.PageSize.Height - 128 - 14,
            100, doc.PageSize.Height - 128, 12, Element.ALIGN_LEFT);
        PlaceText(cb, courseName + " (" + courseCode + ")", header2, 98, doc.PageSize.Height - 128 - 14,
            350, doc.PageSize.Height - 128, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Termin: ", mf, 35, doc.PageSize.Height - 144 - 14,
            100, doc.PageSize.Height - 144, 12, Element.ALIGN_LEFT);
        PlaceText(cb, time, header2, 80, doc.PageSize.Height - 144 - 14,
            250, doc.PageSize.Height - 144, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Sala: ", mf, 35, doc.PageSize.Height - 160 - 14,
            100, doc.PageSize.Height - 160, 12, Element.ALIGN_LEFT);
        PlaceText(cb, place, header2, 67, doc.PageSize.Height - 160 - 14,
            250, doc.PageSize.Height - 160, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Rok akademicki: ", mf, doc.PageSize.Width-250, doc.PageSize.Height - 128 - 14,
            doc.PageSize.Width - 150, doc.PageSize.Height - 128, 12, Element.ALIGN_LEFT);
        PlaceText(cb, GetAcademicYear(), header2, doc.PageSize.Width - 160, doc.PageSize.Height - 128 - 14,
            doc.PageSize.Width - 30, doc.PageSize.Height - 128, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Semestr: ", mf, doc.PageSize.Width - 250, doc.PageSize.Height - 144 - 14,
            doc.PageSize.Width - 100, doc.PageSize.Height - 144, 12, Element.ALIGN_LEFT);
        PlaceText(cb, GetAcademicSemester(), header2, doc.PageSize.Width - 200, doc.PageSize.Height - 144 - 14,
            doc.PageSize.Width - 30, doc.PageSize.Height - 144, 12, Element.ALIGN_LEFT);
        //-------------
        //main table
        int numOfWeeks = 16;
        PdfPTable table = new PdfPTable(2+numOfWeeks);
        table.TotalWidth = 700;
        table.LockedWidth = true;
        List<float> widths = new List<float>();
        widths.Add(1f);
        widths.Add(4f);
        for (int i = 0; i < numOfWeeks; i++)
            widths.Add(1f);
        table.SetWidths(widths.ToArray());
        table.HorizontalAlignment = 0;
        //table.SpacingBefore = 400;
        //table.SpacingAfter = 100f;

        PdfPCell cell = new PdfPCell(new Phrase("Nr", header2));
        cell.Rowspan = 2;
        cell.HorizontalAlignment = 1;
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        table.AddCell(cell);
        cell = new PdfPCell(new Phrase("Imię i nazwisko",header2));
        cell.Rowspan = 2;
        cell.HorizontalAlignment = 1;        
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        table.AddCell(cell);
        cell = new PdfPCell(new Phrase("Nr zajęć", header2));
        cell.Colspan = numOfWeeks;
        cell.HorizontalAlignment = 1;
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        table.AddCell(cell);
        for (int i = 0; i < numOfWeeks; i++)
            AddFormCell(String.Format("{0}", i + 1), 1, 0, header2, table);        

        //data from list
        for (int i = 0; i < data.Count; i++)
        {
            AddFormCell(String.Format("{0}", i + 1),1,0, mf, table);
            AddFormCell(data[i],0,5, mf, table);
            for (int j = 0; j < numOfWeeks; j++)
                AddFormCell("", 1,0, mf, table);
        }
        //        
        doc.Add(table); 
        //--------------
        //footer
        PlaceText(cb, "Użytkownik: " + userName, normal, 30, 46,
            200, 56, 10, Element.ALIGN_LEFT);
        PlaceText(cb, String.Format("SYSTEM_ZAPISOW ({0})",version), normal, 0, 30,
            doc.PageSize.Width, 42, 10, Element.ALIGN_CENTER);
        PlaceText(cb, String.Format("Strona {0} z {1}", writer.CurrentPageNumber, writer.PageNumber), normal, doc.PageSize.Width - 100, 46,
            doc.PageSize.Width - 35, 56, 10, Element.ALIGN_RIGHT);
        //-------------

        doc.Close();
    }

    /// <summary>   Generates schedule for the instructor and writes to pdf. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="data">     The data. </param>
    /// <param name="path">     Full pathname of the file. </param>
    /// <param name="imgPath">  Full pathname of the image file. </param>
    /// <param name="name">     The name. </param>
    /// <param name="userName"> Name of the user. </param>

    public static void ScheduleToPDF(DataTable data, String path, String imgPath, String name, String userName)
    {
        Document doc = new Document(PageSize.A4.Rotate());
        doc.SetMargins(35f, 30f, 180f, 70f);
        PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream(path + "\\" + name + ".pdf", FileMode.Create));
        doc.Open();

        //fonts
        BaseFont bf = BaseFont.CreateFont("c:\\windows\\fonts\\tahoma.ttf", "iso-8859-2", BaseFont.EMBEDDED);
        iTextSharp.text.Font header1 = new Font(bf, 14, iTextSharp.text.Font.UNDERLINE, BaseColor.BLACK);
        iTextSharp.text.Font header2 = new Font(bf, 12, iTextSharp.text.Font.ITALIC, BaseColor.BLACK);
        iTextSharp.text.Font header3 = new Font(bf, 12, iTextSharp.text.Font.BOLD, BaseColor.BLACK);
        iTextSharp.text.Font mf = new Font(bf, 12, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);
        iTextSharp.text.Font normal = new Font(bf, 10, iTextSharp.text.Font.NORMAL, BaseColor.BLACK);
        //---------
        //image
        Image img = Image.GetInstance(imgPath + "logo.jpg");
        img.ScalePercent(24f);
        img.SetAbsolutePosition(30, doc.PageSize.Height - img.ScaledHeight - 40);
        doc.Add(img);
        //---------
        //bottom and top lines
        PdfContentByte cb = writer.DirectContent;
        cb.MoveTo(30, doc.PageSize.Height - 104);
        cb.LineTo(doc.PageSize.Width - 30, doc.PageSize.Height - 104);
        cb.Stroke();
        cb.MoveTo(30, 60);
        cb.LineTo(doc.PageSize.Width - 30, 60);
        cb.Stroke();
        //------------
        //general paragraphs        
        cb.BeginText();
        cb.SetTextMatrix(32, doc.PageSize.Height - img.ScaledHeight - 40 - 10);
        cb.SetFontAndSize(bf, 8);
        cb.ShowText("Uniwersytet");
        cb.EndText();
        cb.BeginText();
        cb.SetTextMatrix(31, doc.PageSize.Height - img.ScaledHeight - 40 - 20);
        cb.SetFontAndSize(bf, 8);
        cb.ShowText("Ekonomiczny");
        cb.EndText();
        PlaceText(cb, "Uniwersytet Ekonomiczny", header1, 0, doc.PageSize.Height - 40 - 16,
            doc.PageSize.Width, doc.PageSize.Height - 40, 10, Element.ALIGN_CENTER);
        PlaceText(cb, DateTime.Now.ToShortDateString(), normal, doc.PageSize.Width - 120, doc.PageSize.Height - 40 - 12,
            doc.PageSize.Width - 30, doc.PageSize.Height - 40, 12, Element.ALIGN_RIGHT);
        PlaceText(cb, "Prezentacja rozkładu zajęć dla prowadzącego", header2, 90, doc.PageSize.Height - 60 - 14,
            340, doc.PageSize.Height - 60, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Prowadzący:", mf, 35, doc.PageSize.Height - 128 - 14,
            120, doc.PageSize.Height - 128, 12, Element.ALIGN_LEFT);
        PlaceText(cb, userName, header2, 104, doc.PageSize.Height - 128 - 14,
            350, doc.PageSize.Height - 128, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Rok akademicki: ", mf, doc.PageSize.Width - 250, doc.PageSize.Height - 128 - 14,
            doc.PageSize.Width - 150, doc.PageSize.Height - 128, 12, Element.ALIGN_LEFT);
        PlaceText(cb, GetAcademicYear(), header2, doc.PageSize.Width - 160, doc.PageSize.Height - 128 - 14,
            doc.PageSize.Width - 30, doc.PageSize.Height - 128, 12, Element.ALIGN_LEFT);
        PlaceText(cb, "Semestr: ", mf, doc.PageSize.Width - 250, doc.PageSize.Height - 144 - 14,
            doc.PageSize.Width - 100, doc.PageSize.Height - 144, 12, Element.ALIGN_LEFT);
        PlaceText(cb, GetAcademicSemester(), header2, doc.PageSize.Width - 200, doc.PageSize.Height - 144 - 14,
            doc.PageSize.Width - 30, doc.PageSize.Height - 144, 12, Element.ALIGN_LEFT);
        //-------------
        //main table
        PdfPTable table = new PdfPTable(6);
        table.TotalWidth = 600;
        table.LockedWidth = true;
        float[] widths = { 2f, 2f, 1f, 2f, 1f, 2f };
        table.SetWidths(widths);
        table.HorizontalAlignment = 0;
        //table.SpacingBefore = 400;
        //table.SpacingAfter = 100f;

        PdfPCell cell = new PdfPCell(new Phrase("Kod kursu", header2));
        cell.HorizontalAlignment = 1;
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        table.AddCell(cell);
        cell = new PdfPCell(new Phrase("Nazwa kursu", header2));
        cell.HorizontalAlignment = 1;
        cell.VerticalAlignment = Element.ALIGN_CENTER;
        table.AddCell(cell);
        cell = new PdfPCell(new Phrase("Dzień", header2));
        cell.HorizontalAlignment = 1;
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        table.AddCell(cell);
        cell = new PdfPCell(new Phrase("Godzina", header2));
        cell.HorizontalAlignment = 1;
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        table.AddCell(cell);
        cell = new PdfPCell(new Phrase("Sala", header2));
        cell.HorizontalAlignment = 1;
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        table.AddCell(cell);
        cell = new PdfPCell(new Phrase("Budynek", header2));
        cell.HorizontalAlignment = 1;
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        table.AddCell(cell);

        //data from list
        String[] daysL = { "Poniedziałek", "Wtorek", "Środa", "Czwartek", "Piątek" };
        String[] daysS = { "PN", "WT", "SR", "CZ", "PT" };

        for (int j=0;j<daysL.Length;j++)
        {
            cell = new PdfPCell(new Phrase(daysL[j], header3));
            cell.Colspan = 6;
            cell.Indent = 20;
            cell.HorizontalAlignment = 0;
            cell.VerticalAlignment = Element.ALIGN_MIDDLE;
            table.AddCell(cell);

            for (int i = 0; i < data.Rows.Count; i++)
            {
                if(data.Rows[i].ItemArray[2].ToString()==daysS[j])
                {
                    for (int k = 0; k < 6; k++)
                    {
                        AddFormCell(data.Rows[i].ItemArray[k].ToString(), 1, 0, mf, table);
                    }
                }
            }
        }               
        //        
        doc.Add(table);
        //--------------
        //footer
        PlaceText(cb, "Użytkownik: " + userName, normal, 30, 46,
            200, 56, 10, Element.ALIGN_LEFT);
        PlaceText(cb, String.Format("SYSTEM_ZAPISOW ({0})", version), normal, 0, 30,
            doc.PageSize.Width, 42, 10, Element.ALIGN_CENTER);
        PlaceText(cb, String.Format("Strona {0} z {1}", writer.CurrentPageNumber, writer.PageNumber), normal, doc.PageSize.Width - 100, 46,
            doc.PageSize.Width - 35, 56, 10, Element.ALIGN_RIGHT);
        //-------------

        doc.Close();
    }

    /// <summary>   Adds a formated cell. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="s">        The string. </param>
    /// <param name="alg">      The algorithm. </param>
    /// <param name="id">       The identifier. </param>
    /// <param name="mf">       The mf. </param>
    /// <param name="table">    The table. </param>

    protected static void AddFormCell(String s, int alg, int id, Font mf , PdfPTable table)
    {
        PdfPCell cell = new PdfPCell(new Phrase(s, mf));
        cell.HorizontalAlignment = alg;
        cell.VerticalAlignment = Element.ALIGN_MIDDLE;
        cell.Indent = id;
        table.AddCell(cell);
    }

    /// <summary>   Place text in the certain area in the document file. </summary>
    ///
    /// <remarks>   Mat, 2011-01-25. </remarks>
    ///
    /// <param name="pdfContentByte">   The pdf content byte. </param>
    /// <param name="text">             The text. </param>
    /// <param name="font">             The font. </param>
    /// <param name="lowerLeftx">       The lower leftx. </param>
    /// <param name="lowerLefty">       The lower lefty. </param>
    /// <param name="upperRightx">      The upper rightx. </param>
    /// <param name="upperRighty">      The upper righty. </param>
    /// <param name="leading">          The leading. </param>
    /// <param name="alignment">        The alignment. </param>

    protected static void PlaceText(PdfContentByte pdfContentByte
                        , string text
                        , iTextSharp.text.Font font
                        , float lowerLeftx
                        , float lowerLefty
                        , float upperRightx
                        , float upperRighty
                        , float leading
                        , int alignment)
    {
        ColumnText ct = new ColumnText(pdfContentByte);
        ct.SetSimpleColumn(new Phrase(text, font), lowerLeftx, lowerLefty, upperRightx, upperRighty, leading, alignment);
        ct.Go();
    }

}