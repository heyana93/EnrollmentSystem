/****** Object:  StoredProcedure [dbo].[Enrollment_InsByTermCode]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment_InsByTermCode]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Enrollment_InsByTermCode]
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_InsByUName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment_InsByUName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Enrollment_InsByUName]
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Sel_ByTermID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment_Sel_ByTermID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Enrollment_Sel_ByTermID]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Courses_Ins]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses_Sel_All]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Courses_Sel_All]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Sel_AllID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses_Sel_AllID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Courses_Sel_AllID]
GO
/****** Object:  StoredProcedure [dbo].[Courses_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Courses_Upd]
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Buildings_Del]
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Buildings_Ins]
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Sel_All]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Buildings_Sel_All]
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Sel_ByBuilding]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Sel_ByBuilding]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Buildings_Sel_ByBuilding]
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Buildings_Upd]
GO
/****** Object:  StoredProcedure [dbo].[Course_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Course_Del]
GO
/****** Object:  StoredProcedure [dbo].[Course_Sel_ByCourseID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_Sel_ByCourseID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Course_Sel_ByCourseID]
GO
/****** Object:  StoredProcedure [dbo].[CourseInQual_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInQual_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CourseInQual_Del]
GO
/****** Object:  StoredProcedure [dbo].[CourseInQual_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInQual_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CourseInQual_Ins]
GO
/****** Object:  StoredProcedure [dbo].[CourseInQual_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInQual_Sel_All]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CourseInQual_Sel_All]
GO
/****** Object:  StoredProcedure [dbo].[InstrInQual_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InstrInQual_Del]
GO
/****** Object:  StoredProcedure [dbo].[InstrInQual_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InstrInQual_Ins]
GO
/****** Object:  StoredProcedure [dbo].[InstrInQual_InsByUName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual_InsByUName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InstrInQual_InsByUName]
GO
/****** Object:  StoredProcedure [dbo].[InstrInQual_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual_Sel_All]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[InstrInQual_Sel_All]
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructor_Del]
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructor_Ins]
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Sel_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Sel_ByUserID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructor_Sel_ByUserID]
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Sel_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Sel_ByUserName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructor_Sel_ByUserName]
GO
/****** Object:  StoredProcedure [dbo].[Instructor_SelName_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_SelName_ByUserName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructor_SelName_ByUserName]
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructor_Upd]
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Upd_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Upd_ByUserName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructor_Upd_ByUserName]
GO
/****** Object:  StoredProcedure [dbo].[News_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[News_Del]
GO
/****** Object:  StoredProcedure [dbo].[News_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[News_Ins]
GO
/****** Object:  StoredProcedure [dbo].[News_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Sel_All]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[News_Sel_All]
GO
/****** Object:  StoredProcedure [dbo].[News_Sel_ByNewsID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Sel_ByNewsID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[News_Sel_ByNewsID]
GO
/****** Object:  StoredProcedure [dbo].[News_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[News_Upd]
GO
/****** Object:  StoredProcedure [dbo].[Qual_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Qual_Del]
GO
/****** Object:  StoredProcedure [dbo].[Qual_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Qual_Ins]
GO
/****** Object:  StoredProcedure [dbo].[Qual_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Sel_All]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Qual_Sel_All]
GO
/****** Object:  StoredProcedure [dbo].[Qual_Sel_DistCourse]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Sel_DistCourse]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Qual_Sel_DistCourse]
GO
/****** Object:  StoredProcedure [dbo].[Qual_Sel_DistInstr]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Sel_DistInstr]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Qual_Sel_DistInstr]
GO
/****** Object:  StoredProcedure [dbo].[Qual_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Qual_Upd]
GO
/****** Object:  StoredProcedure [dbo].[Terms_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_Del]
GO
/****** Object:  StoredProcedure [dbo].[Terms_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_Ins]
GO
/****** Object:  StoredProcedure [dbo].[Terms_Sel]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Sel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_Sel]
GO
/****** Object:  StoredProcedure [dbo].[Terms_Sel_ByInstr]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Sel_ByInstr]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_Sel_ByInstr]
GO
/****** Object:  StoredProcedure [dbo].[Terms_Sel_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Sel_ByUserName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_Sel_ByUserName]
GO
/****** Object:  StoredProcedure [dbo].[Terms_SelByCourseID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_SelByCourseID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_SelByCourseID]
GO
/****** Object:  StoredProcedure [dbo].[Terms_SelByTermID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_SelByTermID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_SelByTermID]
GO
/****** Object:  StoredProcedure [dbo].[Terms_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_Upd]
GO
/****** Object:  StoredProcedure [dbo].[Terms_Validate]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Validate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_Validate]
GO
/****** Object:  StoredProcedure [dbo].[Terms_Validate2]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Validate2]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Terms_Validate2]
GO
/****** Object:  StoredProcedure [dbo].[User_ChangePassword]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_ChangePassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_ChangePassword]
GO
/****** Object:  StoredProcedure [dbo].[User_ChangePasswordQuestionAnswer]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_ChangePasswordQuestionAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_ChangePasswordQuestionAnswer]
GO
/****** Object:  StoredProcedure [dbo].[User_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Del]
GO
/****** Object:  StoredProcedure [dbo].[User_Del_Admin]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Del_Admin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Del_Admin]
GO
/****** Object:  StoredProcedure [dbo].[User_GetPassword]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[User_GetPasswordAnswer]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetPasswordAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetPasswordAnswer]
GO
/****** Object:  StoredProcedure [dbo].[User_GetRole]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_GetRole]
GO
/****** Object:  StoredProcedure [dbo].[User_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Ins]
GO
/****** Object:  StoredProcedure [dbo].[User_Name_Sel_ByEmail]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Name_Sel_ByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Name_Sel_ByEmail]
GO
/****** Object:  StoredProcedure [dbo].[User_Sel]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Sel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Sel]
GO
/****** Object:  StoredProcedure [dbo].[User_Sel_Admins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Sel_Admins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Sel_Admins]
GO
/****** Object:  StoredProcedure [dbo].[User_Sel_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Sel_ByUserID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Sel_ByUserID]
GO
/****** Object:  StoredProcedure [dbo].[User_Unlock]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Unlock]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Unlock]
GO
/****** Object:  StoredProcedure [dbo].[User_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Upd]
GO
/****** Object:  StoredProcedure [dbo].[User_Upd_Role]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Upd_Role]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Upd_Role]
GO
/****** Object:  StoredProcedure [dbo].[User_UpdateActivityDate]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_UpdateActivityDate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_UpdateActivityDate]
GO
/****** Object:  StoredProcedure [dbo].[User_UpdateActivityDate_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_UpdateActivityDate_ByUserID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_UpdateActivityDate_ByUserID]
GO
/****** Object:  StoredProcedure [dbo].[User_UpdateLoginDate]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_UpdateLoginDate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_UpdateLoginDate]
GO
/****** Object:  StoredProcedure [dbo].[User_UpdatePassword]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_UpdatePassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_UpdatePassword]
GO
/****** Object:  StoredProcedure [dbo].[User_Validate]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Validate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[User_Validate]
GO
/****** Object:  StoredProcedure [dbo].[Student_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_Del]
GO
/****** Object:  StoredProcedure [dbo].[Student_GetDate]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_GetDate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_GetDate]
GO
/****** Object:  StoredProcedure [dbo].[Student_Ins]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Ins]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_Ins]
GO
/****** Object:  StoredProcedure [dbo].[Student_Sel_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Sel_ByUserID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_Sel_ByUserID]
GO
/****** Object:  StoredProcedure [dbo].[Student_Sel_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Sel_ByUserName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_Sel_ByUserName]
GO
/****** Object:  StoredProcedure [dbo].[Student_SelName_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_SelName_ByUserID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_SelName_ByUserID]
GO
/****** Object:  StoredProcedure [dbo].[Student_SelName_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_SelName_ByUserName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_SelName_ByUserName]
GO
/****** Object:  StoredProcedure [dbo].[Student_SetDate]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_SetDate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_SetDate]
GO
/****** Object:  StoredProcedure [dbo].[Student_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_Upd]
GO
/****** Object:  StoredProcedure [dbo].[Student_Upd_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Upd_ByUserName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Student_Upd_ByUserName]
GO
/****** Object:  StoredProcedure [dbo].[Students_GetNumber]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students_GetNumber]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Students_GetNumber]
GO
/****** Object:  StoredProcedure [dbo].[Students_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students_Sel_All]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Students_Sel_All]
GO
/****** Object:  StoredProcedure [dbo].[Students_SelID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students_SelID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Students_SelID]
GO
/****** Object:  StoredProcedure [dbo].[Instructors_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructors_Sel_All]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructors_Sel_All]
GO
/****** Object:  StoredProcedure [dbo].[Instructors_Sel_AllID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructors_Sel_AllID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructors_Sel_AllID]
GO
/****** Object:  StoredProcedure [dbo].[Instructors_Sel_AllID_ByQual]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructors_Sel_AllID_ByQual]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Instructors_Sel_AllID_ByQual]
GO
/****** Object:  StoredProcedure [dbo].[Users_FailedPassword_Upd]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_FailedPassword_Upd]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_FailedPassword_Upd]
GO
/****** Object:  StoredProcedure [dbo].[Users_NumberOnline]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_NumberOnline]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_NumberOnline]
GO
/****** Object:  StoredProcedure [dbo].[Users_Sel]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Sel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_Sel]
GO
/****** Object:  StoredProcedure [dbo].[Users_Sel_ByEmail]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Sel_ByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_Sel_ByEmail]
GO
/****** Object:  StoredProcedure [dbo].[Users_Sel_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Sel_ByUserName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Users_Sel_ByUserName]
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Del]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment_Del]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Enrollment_Del]
GO
/****** Object:  Table [dbo].[BestTerms]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BestTerms]') AND type in (N'U'))
DROP TABLE [dbo].[BestTerms]
GO
/****** Object:  Table [dbo].[Buildings]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings]') AND type in (N'U'))
DROP TABLE [dbo].[Buildings]
GO
/****** Object:  Table [dbo].[News]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type in (N'U'))
DROP TABLE [dbo].[News]
GO
/****** Object:  Table [dbo].[Terms]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms]') AND type in (N'U'))
DROP TABLE [dbo].[Terms]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type in (N'U'))
DROP TABLE [dbo].[Students]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Qualifications]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qualifications]') AND type in (N'U'))
DROP TABLE [dbo].[Qualifications]
GO
/****** Object:  Table [dbo].[Instructors]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructors]') AND type in (N'U'))
DROP TABLE [dbo].[Instructors]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
DROP TABLE [dbo].[Courses]
GO
/****** Object:  Table [dbo].[CourseInQual]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInQual]') AND type in (N'U'))
DROP TABLE [dbo].[CourseInQual]
GO
/****** Object:  Table [dbo].[Enrollment]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment]') AND type in (N'U'))
DROP TABLE [dbo].[Enrollment]
GO
/****** Object:  Table [dbo].[InstrInQual]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual]') AND type in (N'U'))
DROP TABLE [dbo].[InstrInQual]
GO
/****** Object:  Default [DF_BestTerms_BestTermID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BestTerms_BestTermID]') AND parent_object_id = OBJECT_ID(N'[dbo].[BestTerms]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BestTerms_BestTermID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BestTerms] DROP CONSTRAINT [DF_BestTerms_BestTermID]
END


End
GO
/****** Object:  Default [DF_Courses_CourseID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Courses_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Courses]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Courses_CourseID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Courses] DROP CONSTRAINT [DF_Courses_CourseID]
END


End
GO
/****** Object:  Default [DF_Enrollment_EnrollmentID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Enrollment_EnrollmentID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Enrollment_EnrollmentID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Enrollment] DROP CONSTRAINT [DF_Enrollment_EnrollmentID]
END


End
GO
/****** Object:  Default [DF_Enrollment_user_id]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Enrollment_user_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollment]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Enrollment_user_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Enrollment] DROP CONSTRAINT [DF_Enrollment_user_id]
END


End
GO
/****** Object:  Default [DF_News_NewsID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_News_NewsID]') AND parent_object_id = OBJECT_ID(N'[dbo].[News]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_News_NewsID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[News] DROP CONSTRAINT [DF_News_NewsID]
END


End
GO
/****** Object:  Default [DF_Qualifications_QualificationID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Qualifications_QualificationID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Qualifications]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Qualifications_QualificationID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Qualifications] DROP CONSTRAINT [DF_Qualifications_QualificationID]
END


End
GO
/****** Object:  Default [DF_Terms_TermID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Terms_TermID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Terms]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Terms_TermID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Terms] DROP CONSTRAINT [DF_Terms_TermID]
END


End
GO
/****** Object:  Default [DF_Users_UserID]    Script Date: 02/10/2011 00:10:16 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_UserID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Users_UserID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [DF_Users_UserID]
END


End
GO
/****** Object:  Table [dbo].[InstrInQual]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InstrInQual](
	[InstructorID] [uniqueidentifier] NOT NULL,
	[QualificationID] [uniqueidentifier] NULL
)
END
GO
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'39747403-1785-47fa-816e-b37ab529dec7', N'edcbcc7d-3c95-4ee3-ac6c-0b8842c43199')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'39747403-1785-47fa-816e-b37ab529dec7', N'6fb27815-83eb-4280-a2a3-2481f5aa2ea4')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'07e39e05-91a5-449b-9eb9-1c8462be0ac9', N'62d80cbd-a7ea-44fc-ab86-309ba5468270')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'07e39e05-91a5-449b-9eb9-1c8462be0ac9', N'a803a1a8-f212-4471-af55-386aa633d134')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'e853d11e-c016-43fc-af45-15568f53cc8f', N'0dc8c51c-c5aa-497d-9b1c-43278f2f676e')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'e853d11e-c016-43fc-af45-15568f53cc8f', N'68b6e197-8792-4712-9e2c-494b9097ab4f')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'c7d404ca-e0d2-45a5-93d2-2c494bb32788', N'7ae41da0-9888-46bf-ba31-5e57330a970e')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'c7d404ca-e0d2-45a5-93d2-2c494bb32788', N'e25c5d3a-2445-47b4-a248-65dcfb7de07e')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'b7be114c-b60a-4dea-8cce-53ff434ac3d0', N'e25c5d3a-2445-47b4-a248-65dcfb7de07e')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'b7be114c-b60a-4dea-8cce-53ff434ac3d0', N'fb1dfbfb-e3a0-44b8-9920-92015ed32667')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'9a9449f6-d321-4090-a58d-3a1368d69471', N'197ec4db-6e9c-4d74-8a57-c48c2055d136')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'9a9449f6-d321-4090-a58d-3a1368d69471', N'cda94d71-cce4-4fb4-9478-cc6c43acd9d8')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'9a9449f6-d321-4090-a58d-3a1368d69471', N'ffd529d5-90c3-4928-bda5-d0f913628682')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'9a9449f6-d321-4090-a58d-3a1368d69471', N'd8aec8c9-e7a3-49f2-a230-ea1dfc7a453e')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'7ae41da0-9888-46bf-ba31-5e57330a970e')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'e25c5d3a-2445-47b4-a248-65dcfb7de07e')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'fb1dfbfb-e3a0-44b8-9920-92015ed32667')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'81caa81f-5bd1-47cf-bb5d-a41ba61b70c0')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'41c1e1cd-d92e-4efa-8688-bd223ca64076')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'81caa81f-5bd1-47cf-bb5d-a41ba61b70c0')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'41c1e1cd-d92e-4efa-8688-bd223ca64076')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'197ec4db-6e9c-4d74-8a57-c48c2055d136')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'cda94d71-cce4-4fb4-9478-cc6c43acd9d8')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'ffd529d5-90c3-4928-bda5-d0f913628682')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'd8aec8c9-e7a3-49f2-a230-ea1dfc7a453e')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'0ae5fe68-79c7-4ff1-91f2-b14c47200e68', N'fb1dfbfb-e3a0-44b8-9920-92015ed32667')
INSERT [dbo].[InstrInQual] ([InstructorID], [QualificationID]) VALUES (N'0ae5fe68-79c7-4ff1-91f2-b14c47200e68', N'7ae41da0-9888-46bf-ba31-5e57330a970e')
/****** Object:  Table [dbo].[Enrollment]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enrollment](
	[EnrollmentID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[TermID] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Enrollment] PRIMARY KEY CLUSTERED 
(
	[EnrollmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'cfd4d8a8-f9b2-4c94-8470-013a1efb07f1', N'bd9af111-fc73-417e-82aa-9bf837295140', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'22a600f2-cb04-4adf-9c92-04951c69999e', N'da317e3a-d566-41cb-b5c3-c9f1c8825f11', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'8215ebe1-89e1-4e55-8ef3-349b3d5744b6', N'07422325-1011-46ba-9d93-0934374360d2', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'd5a6b5ff-aa4d-4983-b705-4998898ff55f', N'15daff8e-7865-4319-bff9-15354de9c4e5', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'5be60fe1-666a-45b1-b1e5-4d61bb00db3e', N'75756e27-93ff-43e7-a793-fa14ddd36dd2', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'0f262b17-9575-4a16-b9c2-4fc1f2993367', N'1b33d169-ff78-4dd9-874a-772fe4e15ba6', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'2f8bbe72-61a4-402d-b2ec-524c1d982703', N'566aafd0-fe93-4090-96ef-399dbf8cec40', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'5ed694c8-8dd3-4141-856d-5607ec06cb31', N'd2b7093b-8b58-4c69-bd09-7002be883f50', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'd55277df-6aca-4f6c-809e-5734a26a76c1', N'a9f4d5f4-230b-4f9b-a42e-27e14e7de769', N'81b4bc3f-6a09-4d08-a941-66229bbc5c18')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'60d9f806-e2be-4164-a2da-6a82ea12afea', N'ea13daec-d353-4153-bb11-69a61ea18c2c', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'6edf9ee0-bdb9-450c-b1d2-80b2952f90c5', N'9ce67702-0741-4122-af88-27e24f6e1a3c', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'6b1a48c1-15e7-4c8e-847c-89fb2781f789', N'1b5e7fc5-06ef-45e9-8e2e-48e38552764a', N'5aeae584-1980-4467-9c90-a5d233aee907')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'7e5944a3-7366-404b-bee4-995d8bf52b65', N'93a47a8f-12f8-4fbd-ae07-b840cca92161', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'4de19267-3551-4ec2-a54e-a22498f952ad', N'9232cb9f-c6be-494e-8a95-c179a8e1747f', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'4b5695e8-70f0-41bd-baae-cede0cf686ac', N'8a1331b6-746a-4f7b-8ec7-fdcdfbc75904', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'ef3a7224-beb5-4ae9-8021-d1aabc3958f6', N'9301f4c4-5823-4cfa-bdfe-d5d2fa37b354', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
INSERT [dbo].[Enrollment] ([EnrollmentID], [UserID], [TermID]) VALUES (N'e1aed244-b3fc-47b1-9bb3-f531e007defc', N'2a67b562-302f-42ad-a2f5-48e36dfc498c', N'5f586a27-112a-49d9-98b7-4d5be59f2dbb')
/****** Object:  Table [dbo].[CourseInQual]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInQual]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CourseInQual](
	[CourseID] [uniqueidentifier] NOT NULL,
	[QualificationID] [uniqueidentifier] NULL
)
END
GO
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'01a26ba7-7ae4-47f2-a4bc-1e885a6b2397', N'edcbcc7d-3c95-4ee3-ac6c-0b8842c43199')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'01a26ba7-7ae4-47f2-a4bc-1e885a6b2397', N'd8aec8c9-e7a3-49f2-a230-ea1dfc7a453e')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'be627623-8fc0-4201-b95e-e5e982bc0366', N'edcbcc7d-3c95-4ee3-ac6c-0b8842c43199')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'be627623-8fc0-4201-b95e-e5e982bc0366', N'd8aec8c9-e7a3-49f2-a230-ea1dfc7a453e')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'1b320710-df4f-409e-ba82-b1aee698a6ab', N'e25c5d3a-2445-47b4-a248-65dcfb7de07e')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'1b320710-df4f-409e-ba82-b1aee698a6ab', N'd8aec8c9-e7a3-49f2-a230-ea1dfc7a453e')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'ed90f597-70d7-41b1-9223-1d58362b3f05', N'68b6e197-8792-4712-9e2c-494b9097ab4f')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'8322bc95-8a03-43c3-a57a-d759f5b503c6', N'0dc8c51c-c5aa-497d-9b1c-43278f2f676e')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'f8838f72-6562-4c0e-b921-559cc2356d16', N'6fb27815-83eb-4280-a2a3-2481f5aa2ea4')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'c6df6714-156f-4e53-aa7d-f680f9331f68', N'cda94d71-cce4-4fb4-9478-cc6c43acd9d8')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'cca07231-2d8b-4bca-bf3e-9268b45a1e7d', N'41c1e1cd-d92e-4efa-8688-bd223ca64076')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'aa49d4b2-ca3f-4b87-bb14-64ba6b2b8573', N'ffd529d5-90c3-4928-bda5-d0f913628682')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'cd5db8dc-3600-4fd2-973d-c8b4e5ae9d0d', N'fb1dfbfb-e3a0-44b8-9920-92015ed32667')
INSERT [dbo].[CourseInQual] ([CourseID], [QualificationID]) VALUES (N'75d868f1-bdc9-41aa-aa5b-d74be3eb7458', N'81caa81f-5bd1-47cf-bb5d-a41ba61b70c0')
/****** Object:  Table [dbo].[Courses]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Courses](
	[CourseID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CourseName] [nvarchar](255) COLLATE Polish_CI_AS NULL,
	[Sex] [nchar](1) COLLATE Polish_CI_AS NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'ed90f597-70d7-41b1-9223-1d58362b3f05', N'Lekkoatletyka', N'b')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'01a26ba7-7ae4-47f2-a4bc-1e885a6b2397', N'Basen', N'f')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'f8838f72-6562-4c0e-b921-559cc2356d16', N'Siatkówka', N'b')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'aa49d4b2-ca3f-4b87-bb14-64ba6b2b8573', N'Tenis stołowy', N'b')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'cca07231-2d8b-4bca-bf3e-9268b45a1e7d', N'Taniec', N'b')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'1b320710-df4f-409e-ba82-b1aee698a6ab', N'Fitness', N'f')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'cd5db8dc-3600-4fd2-973d-c8b4e5ae9d0d', N'Tenis ziemny', N'f')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'75d868f1-bdc9-41aa-aa5b-d74be3eb7458', N'Wspinaczka', N'b')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'8322bc95-8a03-43c3-a57a-d759f5b503c6', N'Piłka nożna', N'm')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'be627623-8fc0-4201-b95e-e5e982bc0366', N'Basen', N'm')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [Sex]) VALUES (N'c6df6714-156f-4e53-aa7d-f680f9331f68', N'Siłownia', N'm')
/****** Object:  Table [dbo].[Instructors]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Instructors](
	[InstructorID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Polish_CI_AS NULL,
	[Surname] [nvarchar](255) COLLATE Polish_CI_AS NULL,
 CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED 
(
	[InstructorID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'e853d11e-c016-43fc-af45-15568f53cc8f', N'Agnieszka', N'Wielgus')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'07e39e05-91a5-449b-9eb9-1c8462be0ac9', N'Kasia', N'Michalska')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'c7d404ca-e0d2-45a5-93d2-2c494bb32788', N'Andrzej', N'Kozik')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'9a9449f6-d321-4090-a58d-3a1368d69471', N'Janusz', N'Biernat')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'b7be114c-b60a-4dea-8cce-53ff434ac3d0', N'Mateusz', N'Goryczca')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'Zbigniew', N'Gewert')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'0ae5fe68-79c7-4ff1-91f2-b14c47200e68', N'Jacek', N'Jarnicki')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'39747403-1785-47fa-816e-b37ab529dec7', N'Jerry', N'Mierzwa')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'abfa91bd-cbf6-4278-a304-d6027d9fa0ce', N'Jurek', N'Grzybowniak')
INSERT [dbo].[Instructors] ([InstructorID], [Name], [Surname]) VALUES (N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'Jurek', N'Caban')
/****** Object:  Table [dbo].[Qualifications]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qualifications]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Qualifications](
	[QualificationID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Description] [nvarchar](255) COLLATE Polish_CI_AS NULL,
 CONSTRAINT [PK_Qualifications_1] PRIMARY KEY CLUSTERED 
(
	[QualificationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'edcbcc7d-3c95-4ee3-ac6c-0b8842c43199', N'Basen')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'6fb27815-83eb-4280-a2a3-2481f5aa2ea4', N'Siatkówka')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'62d80cbd-a7ea-44fc-ab86-309ba5468270', N'Boks')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'a803a1a8-f212-4471-af55-386aa633d134', N'Koszykówka')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'0dc8c51c-c5aa-497d-9b1c-43278f2f676e', N'Piłka nożna')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'68b6e197-8792-4712-9e2c-494b9097ab4f', N'Lekkoatletyka')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'7ae41da0-9888-46bf-ba31-5e57330a970e', N'Kolarstwo')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'e25c5d3a-2445-47b4-a248-65dcfb7de07e', N'Fitness')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'fb1dfbfb-e3a0-44b8-9920-92015ed32667', N'Tenis ziemny')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'81caa81f-5bd1-47cf-bb5d-a41ba61b70c0', N'Wspinaczka')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'41c1e1cd-d92e-4efa-8688-bd223ca64076', N'Taniec')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'197ec4db-6e9c-4d74-8a57-c48c2055d136', N'Piłka ręczna')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'cda94d71-cce4-4fb4-9478-cc6c43acd9d8', N'Siłownia')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'ffd529d5-90c3-4928-bda5-d0f913628682', N'Tenis stołowy')
INSERT [dbo].[Qualifications] ([QualificationID], [Description]) VALUES (N'd8aec8c9-e7a3-49f2-a230-ea1dfc7a453e', N'Ogólne')
/****** Object:  Table [dbo].[Users]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Users](
	[UserID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserName] [nvarchar](255) COLLATE Polish_CI_AS NOT NULL,
	[Password] [nvarchar](128) COLLATE Polish_CI_AS NOT NULL,
	[PasswordQuestion] [nvarchar](255) COLLATE Polish_CI_AS NULL,
	[PasswordAnswer] [nvarchar](255) COLLATE Polish_CI_AS NULL,
	[Email] [nvarchar](128) COLLATE Polish_CI_AS NULL,
	[Role] [nvarchar](128) COLLATE Polish_CI_AS NULL,
	[Comment] [nvarchar](255) COLLATE Polish_CI_AS NULL,
	[ApplicationName] [nvarchar](255) COLLATE Polish_CI_AS NULL,
	[IsApproved] [bit] NULL,
	[LastActivityDate] [datetime] NULL,
	[LastLoginDate] [datetime] NULL,
	[LastPasswordChangedDate] [datetime] NULL,
	[CreationDate] [datetime] NULL,
	[IsOnline] [bit] NULL,
	[IsLockedOut] [bit] NULL,
	[LastLockedOutDate] [datetime] NULL,
	[FailedPasswordAttemptCount] [int] NULL,
	[FailedPasswordAttemptWindowStart] [date] NULL,
	[FailedPasswordAnswerAttemptCount] [int] NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [FK_Users] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'4046234d-e7fa-429e-8444-04a99f60662d', N'stud9', N'WQstiJ+zT4zOzTfTk/wPPrn5bF0=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014ABD4D AS DateTime), NULL, CAST(0x00009E74014ABD4D AS DateTime), CAST(0x00009E74014ABD4D AS DateTime), NULL, 0, NULL, 1, CAST(0xCF330B00 AS Date), 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'07422325-1011-46ba-9d93-0934374360d2', N'stud10', N'prO4XRqBA/Id7njoOJRN/yFm6qs=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014AEEFA AS DateTime), CAST(0x00009E74015FA4CB AS DateTime), CAST(0x00009E74014AEEFA AS DateTime), CAST(0x00009E74014AEEFA AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'15daff8e-7865-4319-bff9-15354de9c4e5', N'stud13', N'RcR8ZsMxYsFtZrlEvZOWGV6L0HI=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014BB653 AS DateTime), CAST(0x00009E74015FF4FC AS DateTime), CAST(0x00009E74014BB653 AS DateTime), CAST(0x00009E74014BB653 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'e853d11e-c016-43fc-af45-15568f53cc8f', N'instr4', N'fyxgjZBBbEXXGFYvGgC2uGFM7G4=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E7401516457 AS DateTime), NULL, CAST(0x00009E7401516457 AS DateTime), CAST(0x00009E7401516457 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'07e39e05-91a5-449b-9eb9-1c8462be0ac9', N'instr3', N'opoErWsYZSuhC4IKFSbOgOxApPI=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E74015133CD AS DateTime), NULL, CAST(0x00009E74015133CD AS DateTime), CAST(0x00009E74015133CD AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'f9601e24-cc63-4124-97ba-1fa27b7fdad1', N'stud8', N'WQstiJ+zT4zOzTfTk/wPPrn5bF0=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014A6E3F AS DateTime), NULL, CAST(0x00009E74014A6E3F AS DateTime), CAST(0x00009E74014A6E3F AS DateTime), NULL, 0, NULL, 1, CAST(0xCF330B00 AS Date), 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'a9f4d5f4-230b-4f9b-a42e-27e14e7de769', N'stud20', N'ukM8yzzpSmbXZJSTsCYTzwAwrM8=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014D41D5 AS DateTime), CAST(0x00009E74016148B0 AS DateTime), CAST(0x00009E74014D41D5 AS DateTime), CAST(0x00009E74014D41D5 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'9ce67702-0741-4122-af88-27e24f6e1a3c', N'stud17', N'yO30qEsVT/rJFX/FrkhEFao2U1s=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014CA0D1 AS DateTime), CAST(0x00009E740160A24B AS DateTime), CAST(0x00009E74014CA0D1 AS DateTime), CAST(0x00009E74014CA0D1 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'c7d404ca-e0d2-45a5-93d2-2c494bb32788', N'instr5', N'HFrEad1a63kG7uAA2dmTFgahWsA=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E74015197A2 AS DateTime), NULL, CAST(0x00009E74015197A2 AS DateTime), CAST(0x00009E74015197A2 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'566aafd0-fe93-4090-96ef-399dbf8cec40', N'stud19', N'Hw0Usdc9FjQ3Y4UgD7PD1gDAeh4=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014CFA71 AS DateTime), CAST(0x00009E74016114C3 AS DateTime), CAST(0x00009E74014CFA71 AS DateTime), CAST(0x00009E74014CFA71 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'9a9449f6-d321-4090-a58d-3a1368d69471', N'instr8', N'Ykivvi3EcXEtYs14VAgJdZsOuiA=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E740152608D AS DateTime), NULL, CAST(0x00009E740152608D AS DateTime), CAST(0x00009E740152608D AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'5ad0a6a9-edd5-4fa7-9ade-3e95080a6a34', N'stud25', N'HAmBG+DWCl4aCRrgULE8tjY9qL4=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014E998B AS DateTime), NULL, CAST(0x00009E74014E998B AS DateTime), CAST(0x00009E74014E998B AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'58fc0592-e626-4b9e-8f2a-48cd60f0ecc4', N'stud23', N'vfvCCifOvYd4WxakSIp2nj87nik=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014DFEDB AS DateTime), NULL, CAST(0x00009E74014DFEDB AS DateTime), CAST(0x00009E74014DFEDB AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'2a67b562-302f-42ad-a2f5-48e36dfc498c', N'stud2', N'XHEbxwVS0Z4i8vM4eInUNEkiYQU=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E740148CDDD AS DateTime), CAST(0x00009E74015EC077 AS DateTime), CAST(0x00009E740148CDDD AS DateTime), CAST(0x00009E740148CDDD AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'1b5e7fc5-06ef-45e9-8e2e-48e38552764a', N'stud22', N'8SP8xM/+JI3wZuUzSbqBqiINouw=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014DABBF AS DateTime), CAST(0x00009E7401617F88 AS DateTime), CAST(0x00009E74014DABBF AS DateTime), CAST(0x00009E74014DABBF AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'7dd9e788-364a-44fb-a1b1-4bd1c122da20', N'admin2', N'B3u2W/j8PcgOWkiaOC9Ror2dSAM=', N'', N'', N'', N'admin', N'', N'/Zapisy', 1, CAST(0x00009E74014F18A8 AS DateTime), NULL, CAST(0x00009E74014F18A8 AS DateTime), CAST(0x00009E74014F18A8 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'b7be114c-b60a-4dea-8cce-53ff434ac3d0', N'instr6', N'RRboWaCL/NEkuOod09e0on+om5s=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E740151BF1A AS DateTime), NULL, CAST(0x00009E740151BF1A AS DateTime), CAST(0x00009E740151BF1A AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'37b27771-b7fd-44c8-9079-66642760aa7f', N'stud12', N'e5uD9Ns6gvXVeEciNXd+bml5vn8=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014B66FA AS DateTime), NULL, CAST(0x00009E74014B66FA AS DateTime), CAST(0x00009E74014B66FA AS DateTime), NULL, 0, NULL, 1, CAST(0xCF330B00 AS Date), 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'ea13daec-d353-4153-bb11-69a61ea18c2c', N'stud11', N'e5uD9Ns6gvXVeEciNXd+bml5vn8=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014B2FB6 AS DateTime), CAST(0x00009E74015FBFCB AS DateTime), CAST(0x00009E74014B2FB6 AS DateTime), CAST(0x00009E74014B2FB6 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'd2b7093b-8b58-4c69-bd09-7002be883f50', N'stud15', N'7vMb3Ezg8uIueXKZ7pTzan0vjNs=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014C435C AS DateTime), CAST(0x00009E7401603756 AS DateTime), CAST(0x00009E74014C435C AS DateTime), CAST(0x00009E74014C435C AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'1b33d169-ff78-4dd9-874a-772fe4e15ba6', N'stud14', N'TmkPTn/r20kXfZXqiWl9rd/60RY=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014BE43D AS DateTime), CAST(0x00009E7401601773 AS DateTime), CAST(0x00009E74014BE43D AS DateTime), CAST(0x00009E74014BE43D AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'instr9', N'v7/N1jooHo/K91bG1l0HF1sdawQ=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E740152B6C7 AS DateTime), NULL, CAST(0x00009E740152B6C7 AS DateTime), CAST(0x00009E740152B6C7 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'b1de7b6a-3f51-49d8-9688-7fc4b0a1678d', N'admin', N'/Fm0iL5DGv5tyDn4WwXt0087Yyg=', N'', N'', N'', N'admin', N'', N'/Zapisy', 1, CAST(0x00009E3D01644D92 AS DateTime), CAST(0x00009E7500B7FD26 AS DateTime), CAST(0x00009E3D01644D92 AS DateTime), CAST(0x00009E3D01644D92 AS DateTime), NULL, 0, NULL, 1, CAST(0xB4330B00 AS Date), 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'96d582c7-92a6-4a1b-9f89-81c7fd14c67c', N'stud24', N'GUFGzk6p+yR51bUCq7i77ryXDro=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014E36F7 AS DateTime), CAST(0x00009E7500B883B8 AS DateTime), CAST(0x00009E74014E36F7 AS DateTime), CAST(0x00009E74014E36F7 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'bd9af111-fc73-417e-82aa-9bf837295140', N'stud7', N'WQstiJ+zT4zOzTfTk/wPPrn5bF0=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014A3E60 AS DateTime), CAST(0x00009E74015F7684 AS DateTime), CAST(0x00009E74014A3E60 AS DateTime), CAST(0x00009E74014A3E60 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'ad095972-dfa0-4d00-9a33-acea0c357bd2', N'stud21', N'btK0y32/uqW85Z9U0/elEd7ZmDI=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014D8471 AS DateTime), NULL, CAST(0x00009E74014D8471 AS DateTime), CAST(0x00009E74014D8471 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'0ae5fe68-79c7-4ff1-91f2-b14c47200e68', N'instr1', N'67XRGQ8dMV2/LOmUF6xHTkx5qls=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E74014ED72C AS DateTime), NULL, CAST(0x00009E74014ED72C AS DateTime), CAST(0x00009E74014ED72C AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'39747403-1785-47fa-816e-b37ab529dec7', N'instr2', N'1hUg7Jj8vwwBXKCCmgEXJEzKVA0=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E74015107A8 AS DateTime), NULL, CAST(0x00009E74015107A8 AS DateTime), CAST(0x00009E74015107A8 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'93a47a8f-12f8-4fbd-ae07-b840cca92161', N'stud3', N'8MgHyOYEYXQdUmKWbDZqIc8zEDA=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E7401495D26 AS DateTime), CAST(0x00009E74015EE2E8 AS DateTime), CAST(0x00009E7401495D26 AS DateTime), CAST(0x00009E7401495D26 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'9232cb9f-c6be-494e-8a95-c179a8e1747f', N'stud16', N'lb0CqZNUEjYVTZqqC26aEKU2IFE=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014C7B60 AS DateTime), CAST(0x00009E7401608505 AS DateTime), CAST(0x00009E74014C7B60 AS DateTime), CAST(0x00009E74014C7B60 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'da317e3a-d566-41cb-b5c3-c9f1c8825f11', N'stud18', N'Juhcl3bbyl/sXmnWnx14LnjvOow=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E74014CCAD1 AS DateTime), CAST(0x00009E740160E48D AS DateTime), CAST(0x00009E74014CCAD1 AS DateTime), CAST(0x00009E74014CCAD1 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'23d1f6ab-ac7d-457a-8d1c-d2e25ef1c7ef', N'admin4', N'iwJEAOKayt43OhoPYHRZuDHhZ1o=', N'', N'', N'', N'admin', N'', N'/Zapisy', 1, CAST(0x00009E74014F4728 AS DateTime), NULL, CAST(0x00009E74014F4728 AS DateTime), CAST(0x00009E74014F4728 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'9301f4c4-5823-4cfa-bdfe-d5d2fa37b354', N'stud1', N'0e5QUvN/Jr7+pgRjhjvpsD+lVkg=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E7401486BA3 AS DateTime), CAST(0x00009E74015DC66B AS DateTime), CAST(0x00009E7401486BA3 AS DateTime), CAST(0x00009E7401486BA3 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'abfa91bd-cbf6-4278-a304-d6027d9fa0ce', N'instr7', N'lImhuMDyjo2CRls8xlKe160fxcQ=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E7401522CC1 AS DateTime), NULL, CAST(0x00009E7401522CC1 AS DateTime), CAST(0x00009E7401522CC1 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'8e88acac-2c78-4a12-9b4a-d9bae201948f', N'admin5', N'0Pv0HuCa2X8eNfYrPspwR7p8mZQ=', N'', N'', N'', N'admin', N'', N'/Zapisy', 1, CAST(0x00009E74014F60C6 AS DateTime), NULL, CAST(0x00009E74014F60C6 AS DateTime), CAST(0x00009E74014F60C6 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'instr10', N'ZTpseja0LmLJtsFf4K8ENvGNNvo=', N'', N'', N'', N'instructor', N'', N'/Zapisy', 1, CAST(0x00009E74015330A4 AS DateTime), CAST(0x00009E7500B9BA93 AS DateTime), CAST(0x00009E74015330A4 AS DateTime), CAST(0x00009E74015330A4 AS DateTime), NULL, 0, NULL, 1, CAST(0xD0330B00 AS Date), 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'75756e27-93ff-43e7-a793-fa14ddd36dd2', N'stud5', N'+3+FYwOEHhHtS3Q3ULnLh93xXjE=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E740149AC97 AS DateTime), CAST(0x00009E74015F2CDD AS DateTime), CAST(0x00009E740149AC97 AS DateTime), CAST(0x00009E740149AC97 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'0357e474-1916-4288-a29c-fb84fa1c42ef', N'admin3', N'z/x/MwmTwUoyultZakgy/wfEUnw=', N'', N'', N'', N'admin', N'', N'/Zapisy', 1, CAST(0x00009E74014F2DCF AS DateTime), NULL, CAST(0x00009E74014F2DCF AS DateTime), CAST(0x00009E74014F2DCF AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
INSERT [dbo].[Users] ([UserID], [UserName], [Password], [PasswordQuestion], [PasswordAnswer], [Email], [Role], [Comment], [ApplicationName], [IsApproved], [LastActivityDate], [LastLoginDate], [LastPasswordChangedDate], [CreationDate], [IsOnline], [IsLockedOut], [LastLockedOutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart]) VALUES (N'8a1331b6-746a-4f7b-8ec7-fdcdfbc75904', N'stud4', N'1V4NchMEKDmsNIE777U/VBl6olg=', N'', N'', N'', N'student', N'', N'/Zapisy', 1, CAST(0x00009E7401498744 AS DateTime), CAST(0x00009E74015F060A AS DateTime), CAST(0x00009E7401498744 AS DateTime), CAST(0x00009E7401498744 AS DateTime), NULL, 0, NULL, 0, NULL, 0, NULL)
/****** Object:  Table [dbo].[Students]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Students](
	[StudentID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) COLLATE Polish_CI_AS NULL,
	[Surname] [nvarchar](255) COLLATE Polish_CI_AS NULL,
	[StudyYear] [int] NULL,
	[DueHours] [int] NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'4046234d-e7fa-429e-8444-04a99f60662d', N'Kuba', N'Mikołaczyk', 2, 60, CAST(0x00009E790074BAD0 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'07422325-1011-46ba-9d93-0934374360d2', N'Radek', N'Michalik', 3, 30, CAST(0x00009E7900742E30 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'15daff8e-7865-4319-bff9-15354de9c4e5', N'Karolina', N'Mihilewicz', 2, 60, CAST(0x00009E7900742E30 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'f9601e24-cc63-4124-97ba-1fa27b7fdad1', N'Ryszard', N'Mikas', 2, 60, CAST(0x00009E7900742E30 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'a9f4d5f4-230b-4f9b-a42e-27e14e7de769', N'Ewa', N'Farna', 2, 40, CAST(0x00009E7900747480 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'9ce67702-0741-4122-af88-27e24f6e1a3c', N'Ania', N'Kwas', 3, 60, CAST(0x00009E7900747480 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'566aafd0-fe93-4090-96ef-399dbf8cec40', N'Marcin', N'Lijewski', 3, 30, CAST(0x00009E7900747480 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'5ad0a6a9-edd5-4fa7-9ade-3e95080a6a34', N'Mariusz', N'Jurasik', 4, 60, CAST(0x00009E790073E7E0 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'58fc0592-e626-4b9e-8f2a-48cd60f0ecc4', N'Ewelina', N'Rogalska', 5, 15, CAST(0x00009E790073A190 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'2a67b562-302f-42ad-a2f5-48e36dfc498c', N'Marek', N'Mietek', 2, 60, CAST(0x00009E7900735B40 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'1b5e7fc5-06ef-45e9-8e2e-48e38552764a', N'Jan', N'Kowalski', 4, 30, CAST(0x00009E7900735B40 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'37b27771-b7fd-44c8-9079-66642760aa7f', N'Paweł', N'Czajkowski', 5, 30, CAST(0x00009E7900735B40 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'ea13daec-d353-4153-bb11-69a61ea18c2c', N'Sławek', N'Szmal', 2, 60, CAST(0x00009E790073A190 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'd2b7093b-8b58-4c69-bd09-7002be883f50', N'Kasia', N'Korona', 1, 45, CAST(0x00009E790073A190 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'1b33d169-ff78-4dd9-874a-772fe4e15ba6', N'Weronika', N'Zygadło', 3, 90, CAST(0x00009E790073A190 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'96d582c7-92a6-4a1b-9f89-81c7fd14c67c', N'Ewelina', N'Tango', 4, 60, CAST(0x00009E7900735B40 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'bd9af111-fc73-417e-82aa-9bf837295140', N'Radek', N'Michalczewski', 4, 60, CAST(0x00009E7900747480 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'ad095972-dfa0-4d00-9a33-acea0c357bd2', N'Marcin', N'Dorociński', 4, 30, CAST(0x00009E790074BAD0 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'93a47a8f-12f8-4fbd-ae07-b840cca92161', N'Mateusz', N'Janiak', 2, 30, CAST(0x00009E790074BAD0 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'9232cb9f-c6be-494e-8a95-c179a8e1747f', N'Karolina', N'Kasek', 4, 90, CAST(0x00009E790073E7E0 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'da317e3a-d566-41cb-b5c3-c9f1c8825f11', N'Gienia', N'Ziobro', 1, 60, CAST(0x00009E790073E7E0 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'9301f4c4-5823-4cfa-bdfe-d5d2fa37b354', N'Michał', N'Walak', 1, 90, CAST(0x00009E790073E7E0 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'75756e27-93ff-43e7-a793-fa14ddd36dd2', N'Michał', N'Walak', 4, 15, CAST(0x00009E7900742E30 AS DateTime))
INSERT [dbo].[Students] ([StudentID], [Name], [Surname], [StudyYear], [DueHours], [Date]) VALUES (N'8a1331b6-746a-4f7b-8ec7-fdcdfbc75904', N'Waldemar', N'Kosak', 4, 30, CAST(0x00009E790074BAD0 AS DateTime))
/****** Object:  Table [dbo].[Terms]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Terms](
	[TermID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CourseID] [uniqueidentifier] NULL,
	[InstructorID] [uniqueidentifier] NULL,
	[TermCode] [nvarchar](10) COLLATE Polish_CI_AS NULL,
	[Classroom] [nvarchar](128) COLLATE Polish_CI_AS NULL,
	[Building] [nvarchar](128) COLLATE Polish_CI_AS NULL,
	[Day] [nvarchar](3) COLLATE Polish_CI_AS NULL,
	[StartTime] [time](7) NULL,
	[FinishTime] [time](7) NULL,
	[Vacancies] [int] NULL,
	[MaxMembers] [int] NULL,
 CONSTRAINT [PK_Terms] PRIMARY KEY CLUSTERED 
(
	[TermID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Terms] ([TermID], [CourseID], [InstructorID], [TermCode], [Classroom], [Building], [Day], [StartTime], [FinishTime], [Vacancies], [MaxMembers]) VALUES (N'5f586a27-112a-49d9-98b7-4d5be59f2dbb', N'01a26ba7-7ae4-47f2-a4bc-1e885a6b2397', N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'BM412-SR12', N'12', N'BM - 4', N'WEN', CAST(0x0700E03495640000 AS Time), CAST(0x07007CDB27710000 AS Time), 1, 16)
INSERT [dbo].[Terms] ([TermID], [CourseID], [InstructorID], [TermCode], [Classroom], [Building], [Day], [StartTime], [FinishTime], [Vacancies], [MaxMembers]) VALUES (N'73789268-6793-43a5-8568-5d3f9561a651', N'cca07231-2d8b-4bca-bf3e-9268b45a1e7d', N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'BM314-CZ10', N'14', N'BM - 3', N'THU', CAST(0x070010ACD1530000 AS Time), CAST(0x0700AC5264600000 AS Time), 18, 18)
INSERT [dbo].[Terms] ([TermID], [CourseID], [InstructorID], [TermCode], [Classroom], [Building], [Day], [StartTime], [FinishTime], [Vacancies], [MaxMembers]) VALUES (N'81b4bc3f-6a09-4d08-a941-66229bbc5c18', N'75d868f1-bdc9-41aa-aa5b-d74be3eb7458', N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'BM312-WT10', N'12', N'BM - 3', N'TUE', CAST(0x070010ACD1530000 AS Time), CAST(0x0700AC5264600000 AS Time), 14, 15)
INSERT [dbo].[Terms] ([TermID], [CourseID], [InstructorID], [TermCode], [Classroom], [Building], [Day], [StartTime], [FinishTime], [Vacancies], [MaxMembers]) VALUES (N'32ad958d-ac6b-45cd-8b8d-67b819ccc006', N'75d868f1-bdc9-41aa-aa5b-d74be3eb7458', N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'BM75-PT11', N'5', N'BM - 7', N'FRI', CAST(0x07007870335C0000 AS Time), CAST(0x07001417C6680000 AS Time), 18, 18)
INSERT [dbo].[Terms] ([TermID], [CourseID], [InstructorID], [TermCode], [Classroom], [Building], [Day], [StartTime], [FinishTime], [Vacancies], [MaxMembers]) VALUES (N'5aeae584-1980-4467-9c90-a5d233aee907', N'be627623-8fc0-4201-b95e-e5e982bc0366', N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'BM212-PN08', N'12', N'BM - 2', N'MON', CAST(0x070074053F470000 AS Time), CAST(0x070010ACD1530000 AS Time), 17, 18)
INSERT [dbo].[Terms] ([TermID], [CourseID], [InstructorID], [TermCode], [Classroom], [Building], [Day], [StartTime], [FinishTime], [Vacancies], [MaxMembers]) VALUES (N'2220836e-92f5-4425-98b2-aaaa69ee7193', N'cd5db8dc-3600-4fd2-973d-c8b4e5ae9d0d', N'045dd47e-175a-43e5-ac26-7e3930572dd4', N'BM42-CZ14', N'2', N'BM - 4', N'THU', CAST(0x0700E49F89790000 AS Time), CAST(0x070080461C860000 AS Time), 18, 18)
INSERT [dbo].[Terms] ([TermID], [CourseID], [InstructorID], [TermCode], [Classroom], [Building], [Day], [StartTime], [FinishTime], [Vacancies], [MaxMembers]) VALUES (N'a1b74a6f-4826-4792-afb0-ed2c75434b4f', N'cca07231-2d8b-4bca-bf3e-9268b45a1e7d', N'937e1ddb-e71c-4bee-aafe-f1c8bcc685cc', N'BM68-PN14', N'8', N'BM - 6', N'MON', CAST(0x0700E49F89790000 AS Time), CAST(0x070080461C860000 AS Time), 15, 15)
/****** Object:  Table [dbo].[News]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[News](
	[NewsID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Date] [datetime] NULL,
	[Title] [nvarchar](128) COLLATE Polish_CI_AS NULL,
	[Message] [nvarchar](1000) COLLATE Polish_CI_AS NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[News] ([NewsID], [Date], [Title], [Message]) VALUES (N'6c9319b1-ee34-4174-b5c5-c6cb22097681', CAST(0x00009E430044E83C AS DateTime), N'Zapisy na zajęcia wychowania fizycznego sem. zimowy 2010/2011', N'Studium Wychowania Fizycznego i Sportu przypomina wszystkim studentom, którzy chcą dokonywać jeszcze zmian dotyczacych zmiany grupy, zapisów i wypisów z wychowania
fizycznego oraz dostarczyć zwolnienia całosemestralne, że mogą to uczynic do 15
pździernika br. włącznie.')
INSERT [dbo].[News] ([NewsID], [Date], [Title], [Message]) VALUES (N'a6cf9751-04f5-49a4-b10e-f8109c653bfc', CAST(0x00009E4300EA5ED4 AS DateTime), N'Zwolnienia lekarskie (2010/2011)', N'Studenci, którzy będą zaliczali wychowanie fizyczne na podstawie zwolnienia lekarskiego proszeni są o dostarczenie orzeczenia lekarskiego w terminie 27.09-15.10.2010r. do Sekretariatu Studium Wychowania Fizycznego i Sportu w godz. 10.00-13.00. W zwolnieniu musi byc okreslony semestr, którego ono dotyczy. Po określonym terminie zwolnienia nie będą przyjmowane.')
/****** Object:  Table [dbo].[Buildings]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Buildings](
	[Building1] [nvarchar](128) COLLATE Polish_CI_AS NOT NULL,
	[Building2] [nvarchar](128) COLLATE Polish_CI_AS NULL,
	[Distance] [int] NULL
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Buildings]') AND name = N'IX_Buildings')
CREATE NONCLUSTERED INDEX [IX_Buildings] ON [dbo].[Buildings] 
(
	[Building1] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[Buildings] ([Building1], [Building2], [Distance]) VALUES (N'BM - 1', N'BM - 2', 5)
INSERT [dbo].[Buildings] ([Building1], [Building2], [Distance]) VALUES (N'BM - 1', N'BM - 3', 10)
INSERT [dbo].[Buildings] ([Building1], [Building2], [Distance]) VALUES (N'BM - 2', N'BM - 3', 10)
INSERT [dbo].[Buildings] ([Building1], [Building2], [Distance]) VALUES (N'BM - 3', N'BM - 4', 0)
INSERT [dbo].[Buildings] ([Building1], [Building2], [Distance]) VALUES (N'BM - 5', N'BM - 4', 15)
/****** Object:  Table [dbo].[BestTerms]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BestTerms]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BestTerms](
	[BestTermID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[TermID] [uniqueidentifier] NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_BestTerms] PRIMARY KEY CLUSTERED 
(
	[BestTermID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Enrollment_Del]
(
	@termID uniqueidentifier,
	@userName nvarchar(255)
)

AS
BEGIN

	Declare 
	@userID uniqueidentifier,
	@enroll uniqueidentifier
	
	Select @userID=UserID
	From Users
	Where (UserName=@userName);
	
	Select @enroll=EnrollmentID
	From Enrollment 
	Where ((UserID=@userID) and (UserID=@userID));
	
	IF (@enroll is null)
		GOTO PROBLEM1
	
	BEGIN TRANSACTION 
		
	Delete Enrollment
	Where ((TermID=@termID) and (UserID=@userID));
	
	IF (@@ERROR>0)
		GOTO PROBLEM2
	
	Update Terms
	Set Vacancies = Vacancies+1
	Where (TermID=@termID);
	
	IF (@@ERROR>0)
		GOTO PROBLEM2
		
	COMMIT
	RETURN
	
	PROBLEM1:
		RAISERROR(''Użytkownik nie jest zapisany na żaden/ten kurs.'',16,1)
		RETURN
		
	PROBLEM2:
		ROLLBACK
		RAISERROR(''Wystąpił nieoczekiwany problem podczas zapisu. Spróbuj ponownie.'',16,1)
		RETURN
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Users_Sel_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Sel_ByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_Sel_ByUserName]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Set @userName=@userName+''%''

	Select
		UserID,
		UserName, 
		Email, 
		PasswordQuestion,
		Comment, 
		IsApproved, 
		IsLockedOut, 
		CreationDate, 
		LastLoginDate,
		LastActivityDate, 
		LastPasswordChangedDate, 
		LastLockedOutDate 
	From Users  
	Where
	(
		(UserName Like @userName) And 
		(ApplicationName = @applicationName)
	)
	Order By UserName Asc

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Users_Sel_ByEmail]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Sel_ByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_Sel_ByEmail]
(
	@email nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

  Set @email=@email+''%''

  Select
	  UserID,
	  UserName, 
	  Email, 
	  PasswordQuestion,
	  Comment, 
	  IsApproved, 
	  IsLockedOut, 
	  CreationDate, 
	  LastLoginDate,
	  LastActivityDate, 
	  LastPasswordChangedDate, 
	  LastLockedOutDate 
  From Users  
  Where
  (
	  (Email Like @email) And 
	  (ApplicationName = @applicationName)
  )
  Order By UserName Asc

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Users_Sel]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_Sel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_Sel]
(
	@applicationName nvarchar(255)
)
AS
BEGIN

	Select
		UserID,
		UserName, 
		Email, 
		PasswordQuestion,
		Comment, 
		IsApproved, 
		IsLockedOut, 
		CreationDate, 
		LastLoginDate,
		LastActivityDate, 
		LastPasswordChangedDate, 
		LastLockedOutDate 
	From Users  
	Where (ApplicationName = @applicationName)
	Order By UserName Asc

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Users_NumberOnline]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_NumberOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_NumberOnline]
(
	@applicationName nvarchar(255),
	@compareDate datetime
)
AS
BEGIN

	Select Count(*) 
	From Users  
	Where
	(
		(LastActivityDate > @compareDate) AND 
		(ApplicationName = @applicationName)
	)

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Users_FailedPassword_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users_FailedPassword_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Users_FailedPassword_Upd]
(
	@failureType int,
	@passwordAttemptWindow int,
	@maxInvalidPasswordAttempts int,
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Declare 
	@failureCount int,
	@windowStart datetime,
	@windowEnd datetime;

	If (@failureType=1) Begin
	Select @failureCount=FailedPasswordAttemptCount,
	@windowStart=FailedPasswordAttemptWindowStart From Users 
	Where ((UserName=@userName) And (ApplicationName=@applicationName));
	End Else If (@failureType=2) Begin
	Select @failureCount=FailedPasswordAnswerAttemptCount,
	@windowStart=FailedPasswordAnswerAttemptWindowStart From Users 
	Where ((UserName=@userName) And (ApplicationName=@applicationName));
	End

	Set @windowEnd=DateAdd(minute,@passwordAttemptWindow,@windowStart)

	If ((@failureCount = 0) Or (GetUTCDate() > @windowEnd)) Begin
	If (@failureType=1) Begin
	  Update Users Set
	  FailedPasswordAttemptCount=1,
	  FailedPasswordAttemptWindowStart=GetUTCDate()
	  Where ((Username=@userName) And (ApplicationName=@applicationName));
	End Else If (@failureType=2) Begin
	  Update Users Set
	  FailedPasswordAnswerAttemptCount=1,
	  FailedPasswordAnswerAttemptWindowStart=GetUTCDate()
	  Where ((Username=@userName) And (ApplicationName=@applicationName));
	End
	End Else Begin

	Set @failureCount=@failureCount+1;

	If (@failureCount >= @maxInvalidPasswordAttempts) Begin
	  Update Users Set
	  IsLockedOut=1,
	  LastLockedOutDate=GetUTCDate()
	  Where ((Username=@userName) And (ApplicationName=@applicationName));
	End Else Begin
	  If (@failureType=1) Begin
		Update Users Set
		FailedPasswordAttemptCount=@failureCount
		Where ((Username=@userName) And (ApplicationName=@applicationName));
	  End Else If (@failureType=2) Begin
		Update Users Set
		FailedPasswordAnswerAttemptCount=@failureCount
		Where ((Username=@userName) And (ApplicationName=@applicationName));
	  End
	End
	End

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructors_Sel_AllID_ByQual]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructors_Sel_AllID_ByQual]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Instructors_Sel_AllID_ByQual]
(
	@courseID uniqueidentifier
)

AS
BEGIN

	SET NOCOUNT ON

	SELECT	Instructors.InstructorID, Instructors.Name + '' '' + Instructors.Surname
	FROM Instructors
	Where 
	(Select InstrInQual.QualificationID 
	From InstrInQual 
	Where InstrInQual.InstructorID=Instructors.InstructorID and  
	
	InstrInQual.QualificationID IN 	
	(Select CourseInQual.QualificationID 
	From CourseInQual 
	Where CourseInQual.CourseID=@courseID)) is not null		
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructors_Sel_AllID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructors_Sel_AllID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Instructors_Sel_AllID]

AS
BEGIN

	SET NOCOUNT ON

	SELECT	Instructors.InstructorID, Instructors.Name + '' '' + Instructors.Surname
	FROM Instructors
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructors_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructors_Sel_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Instructors_Sel_All]

AS
BEGIN

	SET NOCOUNT ON

	SELECT	Users.UserID, Users.UserName, Instructors.Name, Instructors.Surname
	FROM Instructors,Users
	WHERE (InstructorID=Users.UserID)
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Students_SelID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students_SelID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Students_SelID]

AS
BEGIN

	SELECT StudentID
	FROM Students
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Students_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students_Sel_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Students_Sel_All]

AS
BEGIN

	SET NOCOUNT ON

	SELECT	Users.UserID, Users.UserName, Students.Name, Students.Surname, Students.StudyYear, Students.DueHours, Students.Date
	FROM Students,Users
	WHERE (Students.StudentID=Users.UserID)
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Students_GetNumber]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Students_GetNumber]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Students_GetNumber]

AS
BEGIN
	
	declare @num int

	SELECT @num=COUNT(DISTINCT StudentID)
	FROM Students

	return @num	
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Upd_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Upd_ByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_Upd_ByUserName]
(	
	@userName nvarchar(255),
	@name nvarchar(255),
	@surname nvarchar(255),
	@studyYear int,
	@dueHours int
)
AS
BEGIN

	Declare
	@userID uniqueidentifier
	
	Select @userID=UserID
	From Users
	Where UserName=@userName;

	Update Students 
	Set Name=@name,
		Surname=@surname,
		StudyYear=@studyYear,
		DueHours=@dueHours
	Where StudentID=@userID
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_Upd]
(	
	@userID uniqueidentifier,
	@userName nvarchar(255),
	@name nvarchar(255),
	@surname nvarchar(255),
	@studyYear int,
	@dueHours int,
	@date datetime
)
AS
BEGIN

	Update Students
	Set Name=@name,
		Surname=@surname,
		StudyYear=@studyYear,
		DueHours=@dueHours,
		[Date]=@date
	Where StudentID=@userID
	
	declare @userID1 uniqueidentifier
	
	Select @userID1=UserID
	From Users
	Where UserName=@userName
	
	IF(@userID1 is not null)
		GOTO PROBLEM
	
	Update Users
	Set UserName=@userName
	Where UserID=@userID
	
	PROBLEM:
		RAISERROR(''Użytkownik o podanej nazwie już istnieje.'',16,1)
		RETURN
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_SetDate]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_SetDate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_SetDate]
(	
	@userID uniqueidentifier,
	@date datetime
)
AS
BEGIN

	Update Students 
	Set [Date]=@date
	Where StudentID=@userID
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_SelName_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_SelName_ByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_SelName_ByUserName]
(	
	@userName nvarchar(255)
)
AS
BEGIN

	SELECT	Students.Name + '' '' + Students.Surname
	FROM Students,Users
	WHERE ((Students.StudentID=Users.UserID) and (Users.UserName=@userName))
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_SelName_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_SelName_ByUserID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_SelName_ByUserID]
(	
	@userID uniqueidentifier
)
AS
BEGIN

	SELECT	Name + '' '' + Surname
	FROM Students
	WHERE (StudentID=@userID)
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Sel_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Sel_ByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_Sel_ByUserName]
(	
	@userName nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT ON

	SELECT	Students.Name, Students.Surname, Students.StudyYear, Students.DueHours
	FROM Students,Users
	WHERE ((Students.StudentID=Users.UserID) and (Users.UserName=@userName))
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Sel_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Sel_ByUserID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_Sel_ByUserID]
(	
	@userID uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT ON

	SELECT	Users.UserName, Students.Name, Students.Surname, Students.StudyYear, Students.DueHours, Students.[Date]
	FROM Students, Users
	WHERE ((StudentID=@userID) and (Users.UserID=@userID))
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_Ins]
(	
	@userName nvarchar(255),
	@name nvarchar(255),
	@surname nvarchar(255),
	@studyYear int,
	@dueHours int
)
AS
BEGIN

	Declare 
	@userID uniqueidentifier;
	
	Select @userID=UserID
	From Users
	Where (UserName=@userName);
	
	Insert Into Students
	(
		StudentID,
		Name,
		Surname,
		StudyYear,
		DueHours
	)
	Values
	(
		@userID,
		@name,
		@surname,
		@studyYear,
		@dueHours
	)
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_GetDate]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_GetDate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_GetDate]
(	
	@userName nvarchar(255)
)
AS
BEGIN

	SELECT	Students.[Date]
	FROM Students,Users
	WHERE ((Students.StudentID=Users.UserID) and (Users.UserName=@userName))
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Student_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Student_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Student_Del]
(	
	@userID uniqueidentifier
)
AS
BEGIN

	BEGIN TRANSACTION 
	
	Delete Students  
	Where StudentID=@userID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
	
	Delete Users 
	Where UserID=@userID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	Update Terms
	Set Vacancies = Vacancies+1
	Where (TermID=(Select TermID From Enrollment Where UserID=@userID))
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	Delete Enrollment 
	Where UserID=@userID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	COMMIT
	RETURN
	
	PROBLEM:
		ROLLBACK
		RAISERROR(''Blad usuwania studenta.'',16,1)
		RETURN
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Validate]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Validate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Validate]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Select 
		[Password],
		IsApproved
	From Users
	Where 
	(
		(UserName=@userName) And 
		(ApplicationName=@applicationName) And 
		(IsLockedOut=0)
	)
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_UpdatePassword]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_UpdatePassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_UpdatePassword]
(
	@password nvarchar(128),
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Update Users 
	Set [Password]=@password,
		LastPasswordChangedDate=GetUTCDate()
	Where ((UserName=@userName) And (ApplicationName=@applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_UpdateLoginDate]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_UpdateLoginDate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_UpdateLoginDate]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Update Users 
	Set LastLoginDate=GetUTCDate()
	Where ((UserName=@userName) And (ApplicationName=@applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_UpdateActivityDate_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_UpdateActivityDate_ByUserID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_UpdateActivityDate_ByUserID]
(
	@userID uniqueidentifier,
	@applicationName nvarchar(255)
)
AS
BEGIN

	Update Users 
	Set LastActivityDate=GetUTCDate()
	Where ((UserID=@userID) And (ApplicationName = @applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_UpdateActivityDate]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_UpdateActivityDate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_UpdateActivityDate]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Update Users 
	Set LastActivityDate=GetUTCDate()
	Where ((UserName=@userName) And (ApplicationName = @applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Upd_Role]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Upd_Role]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Upd_Role]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255),
	@role nvarchar(128)
)
AS
BEGIN

	Update Users 
	Set [Role]=@role
	Where ((UserName=@userName) And (ApplicationName=@applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Upd]
(
	@email nvarchar(255),
	@comment nvarchar(255),
	@isApproved bit,
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Update Users 
	Set Email=@email,
		Comment=@comment,
		IsApproved=@isApproved
	Where ((UserName=@userName) And (ApplicationName=@applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Unlock]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Unlock]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Unlock]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Update Users 
	Set IsLockedOut=0,
		LastLockedOutDate=GetUTCDate()
	Where
	((UserName=@userName) And (ApplicationName = @applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Sel_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Sel_ByUserID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Sel_ByUserID]
(
	@userID uniqueidentifier
)
AS
BEGIN

	Select
		UserID,
		Username, 
		Email, 
		PasswordQuestion,
		Comment, 
		IsApproved, 
		IsLockedOut, 
		CreationDate, 
		LastLoginDate,
		LastActivityDate, 
		LastPasswordChangedDate, 
		LastLockedOutDate 
	From Users  
	Where (UserID=@userID)
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Sel_Admins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Sel_Admins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Sel_Admins]

AS
BEGIN

	Select
		UserID,
		Username, 
		[Role], 
		CreationDate,
		LastActivityDate
	From Users
	Where [Role] like ''admin''
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Sel]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Sel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Sel]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Select 
		UserID, 
		Username, 
		Email,
		PasswordQuestion,
		Comment, 
		IsApproved, 
		IsLockedOut, 
		CreationDate, 
		LastLoginDate,
		LastActivityDate, 
		LastPasswordChangedDate, 
		LastLockedOutDate 
	From Users  
	Where ((UserName=@userName) And (ApplicationName=@applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Name_Sel_ByEmail]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Name_Sel_ByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Name_Sel_ByEmail]
(
	@email nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Select UserName
	From Users  
	Where ((Email=@email) And (ApplicationName=@applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Ins]
(
	@username nvarchar(255),
	@applicationName nvarchar(255), 
	@password nvarchar(128),
	@email nvarchar(255),
	@passwordQuestion nvarchar(255),
	@passwordAnswer nvarchar(255),
	@isApproved bit, 
	@comment nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT ON;

	Declare @dateStamp datetime
	Set @dateStamp=GetUTCDate()

	Insert Into Users
	(
		UserName,
		[Password],
		Email,
		PasswordQuestion,
		PasswordAnswer,
		IsApproved, 
		Comment,
		CreationDate, 
		LastPasswordChangedDate, 
		LastActivityDate, 
		ApplicationName, 
		IsLockedOut, 
		LastLockedOutDate, 
		FailedPasswordAttemptCount, 
		FailedPasswordAttemptWindowStart,  
		FailedPasswordAnswerAttemptCount, 
		FailedPasswordAnswerAttemptWindowStart
	)
	Values
	(
		@username,
		@password,
		@email,
		@passwordQuestion,
		@passwordAnswer,		
		@isApproved,
		@comment,
		@dateStamp,
		@dateStamp,
		@dateStamp, 
		@applicationName, 
		0, /*False*/ 
		null, 
		0, 
		null,  
		0, 
		null
	)

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetRole]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetRole]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Select [Role] 
	From Users
	Where ((UserName=@userName) And (ApplicationName=@applicationName))
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetPasswordAnswer]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetPasswordAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetPasswordAnswer]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Select PasswordAnswer, IsLockedOut
	From Users  
	Where ((UserName=@userName) And (ApplicationName=@applicationName))
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_GetPassword]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_GetPassword]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Select [Password], PasswordAnswer, IsLockedOut 
	From Users 
	Where ((Username = @userName) AND (ApplicationName = @applicationName))

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Del_Admin]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Del_Admin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Del_Admin]
(
	@userID uniqueidentifier
)

AS
BEGIN

	Delete Users  
	Where (UserID=@userID)
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_Del]
(
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	Delete Users  
	Where ((UserName=@userName) And (ApplicationName = @applicationName))

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_ChangePasswordQuestionAnswer]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_ChangePasswordQuestionAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_ChangePasswordQuestionAnswer]
(
	@question nvarchar(255),
	@answer nvarchar(255),
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT ON;

	Update Users 
	Set PasswordQuestion=@question,
		PasswordAnswer=@answer
	Where ((UserName=@userName) And	(ApplicationName=@applicationName))

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[User_ChangePassword]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User_ChangePassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[User_ChangePassword]
(
	@password nvarchar(128),
	@userName nvarchar(255),
	@applicationName nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT ON;

	Update Users 
	Set [Password]=@password,
		LastPasswordChangedDate=GetUTCDate()
	Where ((UserName=@userName) And (ApplicationName=@applicationName))

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_Validate2]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Validate2]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_Validate2]
(
	@building nvarchar(128),
	@classroom nvarchar(128),
	@day nvarchar (3),
	@startTime time(7),
	@finishTime time(7)
)

AS
BEGIN

	Select TermID
	From Terms
	Where Building=@building and Classroom=@classroom and [Day]=@day and 
	((StartTime between @startTime and @finishTime) or (FinishTime between @startTime and @finishTime))

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_Validate]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Validate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_Validate]
(
	@instructorID uniqueidentifier,
	@day nvarchar (3),
	@startTime time(7),
	@finishTime time(7)
)

AS
BEGIN

	Select TermID
	From Terms
	Where InstructorID=@instructorID and [Day]=@day and 
	((StartTime between @startTime and @finishTime) or (FinishTime between @startTime and @finishTime))

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_Upd]
(
	@termID uniqueidentifier,
	@courseID uniqueidentifier,
	@instructorID uniqueidentifier,
	@termCode nvarchar (10),
	@classroom nvarchar (128),
	@building nvarchar (128),
	@day nvarchar (3),
	@startTime time(7),
	@finishTime time(7),
	@maxMembers int	
)

AS
BEGIN

	BEGIN TRANSACTION 
	
	Delete Enrollment 
	Where TermID=@termID
	
	IF (@@ERROR>0)
		GOTO PROBLEM

	Update Terms
	Set	CourseID=@courseID,
		InstructorID=@instructorID,
		TermCode=@termCode,
		Classroom=@classroom,
		Building=@building,
		[Day]=@day,
		StartTime=@startTime,
		FinishTime=@finishTime,
		Vacancies=@maxMembers,
		MaxMembers=@maxMembers
	Where TermID=@termID	
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	COMMIT
	RETURN
	
	PROBLEM:
		ROLLBACK
		RAISERROR(''Blad edytowania terminu.'',16,1)
		RETURN

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_SelByTermID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_SelByTermID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_SelByTermID]
(
	@termID uniqueidentifier
)

AS
BEGIN

	SET NOCOUNT ON

	SELECT Terms.TermID, Terms.TermCode, Terms.CourseID ,Terms.InstructorID, Terms.[Day], Terms.StartTime, Terms.FinishTime,
	Terms.Classroom, Terms.Building, Terms.Vacancies, Terms.MaxMembers
	From Terms
	Where Terms.TermID=@termID

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_SelByCourseID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_SelByCourseID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_SelByCourseID]
(
	@courseID uniqueidentifier
)

AS
BEGIN

	SET NOCOUNT ON

	SELECT Terms.TermID, Terms.TermCode, Instructors.Name + '' '' + Instructors.Surname, Terms.[Day], Terms.StartTime, Terms.FinishTime,
	Terms.Classroom, Terms.Building, Terms.Vacancies, Terms.MaxMembers
	From Instructors INNER JOIN
	     Terms ON Instructors.InstructorID = Terms.InstructorID
	Where Terms.CourseID=@courseID

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_Sel_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Sel_ByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_Sel_ByUserName]
(
	@userName nvarchar (255)
)

AS
BEGIN

	SET NOCOUNT ON

	SELECT Terms.TermID, Terms.TermCode, Courses.CourseName, Instructors.Name + '' '' + Instructors.Surname, Terms.[Day], Terms.StartTime, Terms.FinishTime,
	Terms.Classroom, Terms.Building, Terms.Vacancies, Terms.MaxMembers
	From Instructors, Terms, Users, Enrollment, Courses
	Where ((Terms.TermID=Enrollment.TermID) and (Enrollment.UserID=Users.UserID) 
			and (Instructors.InstructorID = Terms.InstructorID) and (Users.UserName=@userName)
			and (Courses.CourseID=Terms.CourseID))

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_Sel_ByInstr]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Sel_ByInstr]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_Sel_ByInstr]
(
	@userName nvarchar (255)
)

AS
BEGIN

	SET NOCOUNT ON

	SELECT Terms.TermID, Terms.TermCode, Courses.CourseName, Terms.[Day], Terms.StartTime, Terms.FinishTime,
	Terms.Classroom, Terms.Building, Terms.Vacancies, Terms.MaxMembers
	From Terms, Users, Courses
	Where ((Users.UserName=@userName) and (Courses.CourseID=Terms.CourseID)
			and (Terms.InstructorID=Users.UserID))
	Order by Terms.StartTime asc


END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_Sel]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Sel]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_Sel]

AS
BEGIN

	SET NOCOUNT ON

	SELECT Terms.TermID, Terms.TermCode, Instructors.Name + '' '' + Instructors.Surname, Terms.[Day], Terms.StartTime, Terms.FinishTime,
	Terms.Classroom, Terms.Building, Terms.Vacancies, Terms.MaxMembers
	From Instructors INNER JOIN
	     Terms ON Instructors.InstructorID = Terms.InstructorID

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_Ins]
(
	@courseID uniqueidentifier,
	@instructorID uniqueidentifier,
	@termCode nvarchar (10),
	@classroom nvarchar (128),
	@building nvarchar (128),
	@day nvarchar (3),
	@startTime time(7),
	@finishTime time(7),
	@maxMembers int	
)

AS
BEGIN

	Insert into Terms
	(
		CourseID,
		InstructorID,
		TermCode,
		Classroom,
		Building,
		[Day],
		StartTime,
		FinishTime,
		Vacancies,
		MaxMembers
	)
	values
	(
		@courseID,
		@instructorID,
		@termCode,
		@classroom,
		@building,
		@day,
		@startTime,
		@finishTime,
		@maxMembers,
		@maxMembers
	)	

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Terms_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terms_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Terms_Del]
(
	@termID uniqueidentifier
)

AS
BEGIN

	BEGIN TRANSACTION 
	
	Delete Terms  
	Where TermID=@termID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
	
	Delete Enrollment 
	Where TermID=@termID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	COMMIT
	RETURN
	
	PROBLEM:
		ROLLBACK
		RAISERROR(''Blad usuwania terminu.'',16,1)
		RETURN
		
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Qual_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Qual_Upd]
(
	@qualificationID uniqueidentifier,
	@description nvarchar(255)
)

AS
BEGIN

	Update Qualifications 
	Set [Description]=@description
	Where QualificationID=@qualificationID
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Qual_Sel_DistInstr]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Sel_DistInstr]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Qual_Sel_DistInstr]
(
	@userID uniqueidentifier
)

AS
BEGIN

	SET NOCOUNT ON	
	
	SELECT [Description], QualificationID 
	FROM Qualifications
	Where QualificationID not in (Select QualificationID From InstrInQual where InstructorID=@userID)
  
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Qual_Sel_DistCourse]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Sel_DistCourse]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Qual_Sel_DistCourse]
(
	@courseID uniqueidentifier
)

AS
BEGIN

	SET NOCOUNT ON	
	
	SELECT [Description], QualificationID 
	FROM Qualifications
	Where QualificationID not in (Select QualificationID From CourseInQual where CourseID=@courseID)
  
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Qual_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Sel_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Qual_Sel_All]

AS
BEGIN

	SET NOCOUNT ON

	Select QualificationID, [Description] 
	From Qualifications
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Qual_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Qual_Ins]
(
	@description nvarchar(255)
)

AS
BEGIN

	Insert into Qualifications 
	(
		Description
	) 
	Values
	(
		@description
	)
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Qual_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Qual_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Qual_Del]
(
	@qualificationID uniqueidentifier
)
AS
BEGIN

	BEGIN TRANSACTION 

	Delete Qualifications  
	Where QualificationID=@qualificationID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
	
	Delete CourseInQual  
	Where QualificationID=@qualificationID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
	
	Delete InstrInQual  
	Where QualificationID=@qualificationID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	COMMIT
	RETURN
	
	PROBLEM:
		ROLLBACK
		RAISERROR(''Blad usuwania kwalifikacji.'',16,1)
		RETURN
		
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[News_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[News_Upd]
(
	@newsID uniqueidentifier,
	@title nvarchar(128),
	@message nvarchar(1000),
	@date datetime
)
AS
BEGIN

	Update News 
	Set Title=@title,
		[Message]=@message,
		[Date]=@date
	Where NewsID=@newsID
	
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[News_Sel_ByNewsID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Sel_ByNewsID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[News_Sel_ByNewsID]
(
	@newsID uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT ON

	Select NewsID, Title, [Message], [Date] 
	From News
	Where NewsID=@newsID
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[News_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Sel_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[News_Sel_All]

AS
BEGIN

	SET NOCOUNT ON

	Select NewsID, Title, [Message], [Date] 
	From News
	Order by [Date] desc
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[News_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[News_Ins]
(
	@title nvarchar(128),
	@message nvarchar(1000),
	@date datetime
)
AS
BEGIN

	If (@date is NULL) Begin
		Set @date=GetUTCDate()
	End
	
	Insert Into News
	(
		Title,
		[Message],
		[Date]
	)
	Values
	(
		@title,
		@message,
		@date
	)

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[News_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[News_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[News_Del]
(
	@newsID uniqueidentifier
)
AS
BEGIN

	Delete News  
	Where NewsID=@newsID

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Upd_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Upd_ByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Instructor_Upd_ByUserName]
(	
	@userName nvarchar(255),
	@name nvarchar(255),
	@surname nvarchar(255)
)
AS
BEGIN

	Declare
	@userID uniqueidentifier
	
	Select @userID=UserID
	From Users
	Where UserName=@userName;

	Update Instructors 
	Set Name=@name,
		Surname=@surname
	Where InstructorID=@userID
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Instructor_Upd]
(	
	@userID uniqueidentifier,	
	@userName nvarchar(255),
	@name nvarchar(255),
	@surname nvarchar(255)
)
AS
BEGIN

	Update Instructors 
	Set Name=@name,
		Surname=@surname
	Where InstructorID=@userID
	
	declare @userID1 uniqueidentifier
	
	Select @userID1=UserID
	From Users
	Where UserName=@userName
	
	IF(@userID1 is not null)
		GOTO PROBLEM
	
	Update Users
	Set UserName=@userName
	Where UserID=@userID
	
	PROBLEM:
		RAISERROR(''Użytkownik o podanej nazwie już istnieje.'',16,1)
		RETURN
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructor_SelName_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_SelName_ByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Instructor_SelName_ByUserName]
(	
	@userName nvarchar(255)
)
AS
BEGIN

	SELECT	Instructors.Name + '' '' + Instructors.Surname
	FROM Instructors,Users
	WHERE ((Instructors.InstructorID=Users.UserID) and (Users.UserName=@userName))
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Sel_ByUserName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Sel_ByUserName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Instructor_Sel_ByUserName]
(	
	@userName nvarchar(255)
)
AS
BEGIN

	SET NOCOUNT ON

	SELECT	Instructors.Name, Instructors.Surname
	FROM Instructors,Users
	WHERE ((Instructors.InstructorID=Users.UserID) and (Users.UserName=@userName))
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Sel_ByUserID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Sel_ByUserID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Instructor_Sel_ByUserID]
(	
	@userID uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT ON

	SELECT Users.UserName,Instructors.Name, Instructors.Surname
	FROM Instructors, Users
	WHERE ((InstructorID=@userID) and (Users.UserID=@userID))
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Instructor_Ins]
(	
	@userName nvarchar(255),
	@name nvarchar(255),
	@surname nvarchar(255)
)
AS
BEGIN

	Declare 
	@userID uniqueidentifier;
	
	Select @userID=UserID
	From Users
	Where (UserName=@userName);
	
	Insert Into Instructors
	(
		InstructorID,
		Name,
		Surname
	)
	Values
	(
		@userID,
		@name,
		@surname
	)
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Instructor_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Instructor_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Instructor_Del]
(	
	@userID uniqueidentifier
)
AS
BEGIN

	BEGIN TRANSACTION 
		
	Delete Instructors  
	Where InstructorID=@userID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	Delete Users 
	Where UserID=@userID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	Update Terms 
	Set InstructorID = null
	Where InstructorID=@userID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	Delete InstrInQual 
	Where InstructorID=@userID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
	
	COMMIT
	RETURN
	
	PROBLEM:
		ROLLBACK
		RAISERROR(''Blad usuwania instruktora.'',16,1)
		RETURN
  
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[InstrInQual_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual_Sel_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InstrInQual_Sel_All]
(
	@instructorID uniqueidentifier
)

AS
BEGIN

	SET NOCOUNT ON

	SELECT Instructors.InstructorID, Instructors.Name, Instructors.Surname, 
		   Qualifications.QualificationID, Qualifications.[Description]
	FROM InstrInQual INNER JOIN
		 Instructors ON InstrInQual.InstructorID = Instructors.InstructorID INNER JOIN
		 Qualifications ON InstrInQual.QualificationID = Qualifications.QualificationID
	Where ((Instructors.InstructorID=@instructorID) and @instructorID is not null)

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[InstrInQual_InsByUName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual_InsByUName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InstrInQual_InsByUName]
(
	@qualificationID uniqueidentifier,
	@userName nvarchar(255)
)

AS
BEGIN

	Declare 
	@userID uniqueidentifier;
	
	Select @userID=UserID
	From Users
	Where (UserName=@userName);

	Insert into InstrInQual 
	(
		InstructorID,
		QualificationID
	) 
	Values
	(
		@userID,
		@qualificationID
	)
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[InstrInQual_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[InstrInQual_Ins]
(
	@qualificationID uniqueidentifier,
	@userID uniqueidentifier
)

AS
BEGIN

	Insert into InstrInQual 
	(
		InstructorID,
		QualificationID
	) 
	Values
	(
		@userID,
		@qualificationID
	)
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[InstrInQual_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstrInQual_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[InstrInQual_Del]
(
	@qualificationID uniqueidentifier,
	@instructorID uniqueidentifier
)
AS
BEGIN

	Delete InstrInQual  
	Where ((QualificationID=@qualificationID) and (InstructorID=@instructorID))
	

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[CourseInQual_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInQual_Sel_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CourseInQual_Sel_All]
(
	@courseID uniqueidentifier
)

AS
BEGIN

	SET NOCOUNT ON

	SELECT Courses.CourseID, Courses.CourseName, Courses.Sex, 
		   Qualifications.QualificationID, Qualifications.[Description]
	FROM CourseInQual INNER JOIN
		 Courses ON CourseInQual.CourseID = Courses.CourseID INNER JOIN
		 Qualifications ON CourseInQual.QualificationID = Qualifications.QualificationID
	Where ((Courses.CourseID=@courseID) and @courseID is not null)

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[CourseInQual_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInQual_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CourseInQual_Ins]
(
	@qualificationID uniqueidentifier,
	@courseID uniqueidentifier
)

AS
BEGIN

	Insert into CourseInQual 
	(
		CourseID,
		QualificationID
	) 
	Values
	(
		@courseID,
		@qualificationID
	)
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[CourseInQual_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInQual_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[CourseInQual_Del]
(
	@qualificationID uniqueidentifier,
	@courseID uniqueidentifier
)
AS
BEGIN

	Delete CourseInQual  
	Where ((QualificationID=@qualificationID) and (CourseID=@courseID))
	

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Course_Sel_ByCourseID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_Sel_ByCourseID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Course_Sel_ByCourseID]
(
	@courseID uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT ON

	Select CourseID, CourseName, Sex
	From Courses
	Where CourseID=@courseID
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Course_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Course_Del]
(
	@courseID uniqueidentifier
)
AS
BEGIN

	BEGIN TRANSACTION 

	Delete Courses  
	Where CourseID=@courseID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
		
	Delete CourseInQual  
	Where CourseID=@courseID
	
	IF (@@ERROR>0)
		GOTO PROBLEM
				
	COMMIT
	RETURN
	
	PROBLEM:
		ROLLBACK
		RAISERROR(''Blad usuwania kursu.'',16,1)
		RETURN

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Buildings_Upd]
(
	@building1 nvarchar (128),
	@building2 nvarchar (128),
	@distance int
)
AS
BEGIN

	Update Buildings 
	Set Distance=@distance
	Where (Building1=@building1 and Building2=@building2)
	
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Sel_ByBuilding]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Sel_ByBuilding]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Buildings_Sel_ByBuilding]
(
	@building1 nvarchar (128),
	@building2 nvarchar (128)
)
AS
BEGIN

	SET NOCOUNT ON

	Select Building1, Building2, Distance
	From Buildings
	Where (Building1=@building1 and Building2=@building2)
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Sel_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Buildings_Sel_All]

AS
BEGIN

	SET NOCOUNT ON

	Select Building1, Building2, Distance
	From Buildings
  
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE  PROCEDURE [dbo].[Buildings_Ins]
(
	@building1 nvarchar (128),
	@building2 nvarchar (128),
	@distance int
)
AS
BEGIN
	
	Insert Into Buildings
	(
		Building1,
		Building2,
		Distance
	)
	Values
	(
		@building1,
		@building2,
		@distance
	)

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Buildings_Del]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buildings_Del]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Buildings_Del]
(
	@building1 nvarchar (128),
	@building2 nvarchar (128)
)
AS
BEGIN

	Delete Buildings  
	Where (Building1=@building1 and Building2=@building2)

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Courses_Upd]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses_Upd]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Courses_Upd]
(
	@courseID uniqueidentifier,
	@courseName nvarchar(255),
	@sex nchar(1)
)
AS
BEGIN

	Update Courses 
	Set CourseName=@courseName,
		sex=@sex
	Where CourseID=@courseID
	
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Courses_Sel_AllID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses_Sel_AllID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Courses_Sel_AllID]

AS
BEGIN

	SET NOCOUNT ON

	Select CourseID, CourseName + '' - '' + Sex
	From Courses
	Order by CourseName
  
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Courses_Sel_All]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses_Sel_All]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Courses_Sel_All]

AS
BEGIN

	SET NOCOUNT ON

	Select CourseID, CourseName, Sex 
	From Courses
	Order by CourseName
  
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Courses_Ins]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Courses_Ins]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Courses_Ins]
(
	@courseName nvarchar(255),
	@sex nchar(1)
)
AS
BEGIN

	Insert Into Courses
	(
		CourseName,
		Sex
	)
	Values
	(
		@courseName,
		@sex
	)

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_Sel_ByTermID]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment_Sel_ByTermID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Enrollment_Sel_ByTermID]
(
	@termID uniqueidentifier
)

AS
BEGIN

	SELECT Students.Name + '' '' + Students.Surname
	FROM Enrollment, Students
	WHERE ((Students.StudentID=Enrollment.UserID) and (Enrollment.TermID=@termID))
	Order by Students.Surname asc
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_InsByUName]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment_InsByUName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Enrollment_InsByUName]
(
	@termID uniqueidentifier,
	@userName nvarchar(255)
)

AS
BEGIN

	Declare 
	@userID uniqueidentifier,
	@enroll uniqueidentifier,
	@num int
	
	Select @userID=UserID
	From Users
	Where (UserName=@userName);
	
	Select @enroll=EnrollmentID
	From Enrollment 
	Where (UserID=@userID);
	
	IF (@enroll is not null)
		GOTO PROBLEM1
	
	BEGIN TRANSACTION 
	
	Select @num=Vacancies
	From Terms
	Where (TermID=@termID);
	
	IF (@num=0)
		GOTO PROBLEM2
	
	Insert into Enrollment 
	(
		UserID,
		TermID
	) 
	Values
	(
		@userID,
		@termID
	)
	
	IF (@@ERROR>0)
		GOTO PROBLEM3
	
	Update Terms
	Set Vacancies = @num-1
	Where (TermID=@termID);
	
	IF (@@ERROR>0)
		GOTO PROBLEM3
		
	COMMIT
	RETURN
	
	PROBLEM1:
		RAISERROR(''Użytkownik jest już zapisany na inny/ten kurs.'',16,1)
		RETURN
		
	PROBLEM2:
		ROLLBACK
		RAISERROR(''Brak miejsc dla wybranego kursu.'',16,1)
		RETURN
		
	PROBLEM3:
		ROLLBACK
		RAISERROR(''Wystąpił nieoczekiwany problem podczas zapisu. Spróbuj ponownie.'',16,1)
		RETURN
  
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Enrollment_InsByTermCode]    Script Date: 02/10/2011 00:10:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enrollment_InsByTermCode]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Enrollment_InsByTermCode]
(
	@termCode nvarchar(10),
	@userName nvarchar(255)
)

AS
BEGIN

	Declare 
	@termID uniqueidentifier
	
	Select @termID=TermID
	From Terms
	Where (TermCode=@termCode);
	
	IF (@termID is null)
		GOTO PROBLEM1
		
	Exec Enrollment_InsByUName @termID = @termID, @userName = @userName
	RETURN
  
  	PROBLEM1:
		RAISERROR(''Podano błędny kod kursu.'',16,1)
END


' 
END
GO
/****** Object:  Default [DF_BestTerms_BestTermID]    Script Date: 02/10/2011 00:10:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_BestTerms_BestTermID]') AND parent_object_id = OBJECT_ID(N'[dbo].[BestTerms]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_BestTerms_BestTermID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BestTerms] ADD  CONSTRAINT [DF_BestTerms_BestTermID]  DEFAULT (newid()) FOR [BestTermID]
END


End
GO
/****** Object:  Default [DF_Courses_CourseID]    Script Date: 02/10/2011 00:10:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Courses_CourseID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Courses]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Courses_CourseID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Courses] ADD  CONSTRAINT [DF_Courses_CourseID]  DEFAULT (newid()) FOR [CourseID]
END


End
GO
/****** Object:  Default [DF_Enrollment_EnrollmentID]    Script Date: 02/10/2011 00:10:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Enrollment_EnrollmentID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Enrollment_EnrollmentID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Enrollment] ADD  CONSTRAINT [DF_Enrollment_EnrollmentID]  DEFAULT (newid()) FOR [EnrollmentID]
END


End
GO
/****** Object:  Default [DF_Enrollment_user_id]    Script Date: 02/10/2011 00:10:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Enrollment_user_id]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enrollment]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Enrollment_user_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Enrollment] ADD  CONSTRAINT [DF_Enrollment_user_id]  DEFAULT (newid()) FOR [UserID]
END


End
GO
/****** Object:  Default [DF_News_NewsID]    Script Date: 02/10/2011 00:10:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_News_NewsID]') AND parent_object_id = OBJECT_ID(N'[dbo].[News]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_News_NewsID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[News] ADD  CONSTRAINT [DF_News_NewsID]  DEFAULT (newid()) FOR [NewsID]
END


End
GO
/****** Object:  Default [DF_Qualifications_QualificationID]    Script Date: 02/10/2011 00:10:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Qualifications_QualificationID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Qualifications]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Qualifications_QualificationID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Qualifications] ADD  CONSTRAINT [DF_Qualifications_QualificationID]  DEFAULT (newid()) FOR [QualificationID]
END


End
GO
/****** Object:  Default [DF_Terms_TermID]    Script Date: 02/10/2011 00:10:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Terms_TermID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Terms]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Terms_TermID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Terms] ADD  CONSTRAINT [DF_Terms_TermID]  DEFAULT (newid()) FOR [TermID]
END


End
GO
/****** Object:  Default [DF_Users_UserID]    Script Date: 02/10/2011 00:10:16 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Users_UserID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Users]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Users_UserID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_UserID]  DEFAULT (newid()) FOR [UserID]
END


End
GO
