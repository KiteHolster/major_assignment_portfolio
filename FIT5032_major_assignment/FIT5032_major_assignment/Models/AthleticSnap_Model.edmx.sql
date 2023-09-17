
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/17/2023 21:25:47
-- Generated from EDMX file: C:\Program Files\FIT5032\assignment\major_assignment_portfolio\FIT5032_major_assignment\FIT5032_major_assignment\Models\AthleticSnap_Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-FIT5032_major_assignment-20230810073254];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_PatientBooking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_PatientBooking];
GO
IF OBJECT_ID(N'[dbo].[FK_RadiographerCT_Scan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings_CT_Scan] DROP CONSTRAINT [FK_RadiographerCT_Scan];
GO
IF OBJECT_ID(N'[dbo].[FK_DoctorConsultation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings_Consultation] DROP CONSTRAINT [FK_DoctorConsultation];
GO
IF OBJECT_ID(N'[dbo].[FK_DoctorCT_Scan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings_CT_Scan] DROP CONSTRAINT [FK_DoctorCT_Scan];
GO
IF OBJECT_ID(N'[dbo].[FK_PatientRadiographer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Patient] DROP CONSTRAINT [FK_PatientRadiographer];
GO
IF OBJECT_ID(N'[dbo].[FK_PatientDoctor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Patient] DROP CONSTRAINT [FK_PatientDoctor];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_ServiceBooking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_Customer_ServiceBooking];
GO
IF OBJECT_ID(N'[dbo].[FK_TestimonialPatient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Testimonials] DROP CONSTRAINT [FK_TestimonialPatient];
GO
IF OBJECT_ID(N'[dbo].[FK_TestimonialDoctor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Testimonials] DROP CONSTRAINT [FK_TestimonialDoctor];
GO
IF OBJECT_ID(N'[dbo].[FK_TestimonialRadiographer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Testimonials] DROP CONSTRAINT [FK_TestimonialRadiographer];
GO
IF OBJECT_ID(N'[dbo].[FK_BookingLocation]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_BookingLocation];
GO
IF OBJECT_ID(N'[dbo].[FK_RoleUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_RoleUser];
GO
IF OBJECT_ID(N'[dbo].[FK_Patient_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Patient] DROP CONSTRAINT [FK_Patient_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Radiographer_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Radiographer] DROP CONSTRAINT [FK_Radiographer_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_CT_Scan_inherits_Booking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings_CT_Scan] DROP CONSTRAINT [FK_CT_Scan_inherits_Booking];
GO
IF OBJECT_ID(N'[dbo].[FK_Doctor_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Doctor] DROP CONSTRAINT [FK_Doctor_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Consultation_inherits_Booking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings_Consultation] DROP CONSTRAINT [FK_Consultation_inherits_Booking];
GO
IF OBJECT_ID(N'[dbo].[FK_Customer_Service_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Customer_Service] DROP CONSTRAINT [FK_Customer_Service_inherits_User];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Bookings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bookings];
GO
IF OBJECT_ID(N'[dbo].[Testimonials]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Testimonials];
GO
IF OBJECT_ID(N'[dbo].[Locations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Locations];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Roles];
GO
IF OBJECT_ID(N'[dbo].[Users_Patient]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Patient];
GO
IF OBJECT_ID(N'[dbo].[Users_Radiographer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Radiographer];
GO
IF OBJECT_ID(N'[dbo].[Bookings_CT_Scan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bookings_CT_Scan];
GO
IF OBJECT_ID(N'[dbo].[Users_Doctor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Doctor];
GO
IF OBJECT_ID(N'[dbo].[Bookings_Consultation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bookings_Consultation];
GO
IF OBJECT_ID(N'[dbo].[Users_Customer_Service]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Customer_Service];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Bookings'
CREATE TABLE [dbo].[Bookings] (
    [BookingId] int IDENTITY(1,1) NOT NULL,
    [BookingDate] nvarchar(max)  NOT NULL,
    [ScheduledDate] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Notes] nvarchar(max)  NOT NULL,
    [Patient_UserId] int  NOT NULL,
    [Customer_Service_UserId] int  NOT NULL,
    [Location_Id] int  NOT NULL
);
GO

-- Creating table 'Testimonials'
CREATE TABLE [dbo].[Testimonials] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Rating] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Patient_UserId] int  NOT NULL,
    [Doctor_UserId] int  NOT NULL,
    [Radiographer_UserId] int  NOT NULL
);
GO

-- Creating table 'Locations'
CREATE TABLE [dbo].[Locations] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RoomName] nvarchar(max)  NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Equipment] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Availability] nvarchar(max)  NOT NULL,
    [Notes] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserId] int IDENTITY(1,1) NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [PhoneNumber] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [RoleRoleId] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [RoleId] int IDENTITY(1,1) NOT NULL,
    [RoleName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Users_Patient'
CREATE TABLE [dbo].[Users_Patient] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DateOfBirth] nvarchar(max)  NOT NULL,
    [EmergencyContact] nvarchar(max)  NOT NULL,
    [MedicalRecordNumber] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL,
    [Radiographer_UserId] int  NOT NULL,
    [Doctor_UserId] int  NOT NULL
);
GO

-- Creating table 'Users_Radiographer'
CREATE TABLE [dbo].[Users_Radiographer] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Certification] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Bookings_CT_Scan'
CREATE TABLE [dbo].[Bookings_CT_Scan] (
    [ScanId] int IDENTITY(1,1) NOT NULL,
    [Results] nvarchar(max)  NOT NULL,
    [Duration] nvarchar(max)  NOT NULL,
    [ContrastUsed] nvarchar(max)  NOT NULL,
    [ScanType] nvarchar(max)  NOT NULL,
    [BookingId] int  NOT NULL,
    [Radiographer_UserId] int  NOT NULL,
    [Referral_UserId] int  NOT NULL
);
GO

-- Creating table 'Users_Doctor'
CREATE TABLE [dbo].[Users_Doctor] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Specialization] nvarchar(max)  NOT NULL,
    [LicenseNumber] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- Creating table 'Bookings_Consultation'
CREATE TABLE [dbo].[Bookings_Consultation] (
    [ConsultationId] int IDENTITY(1,1) NOT NULL,
    [Purpose] nvarchar(max)  NOT NULL,
    [Diagnosis] nvarchar(max)  NOT NULL,
    [Prescriptions] nvarchar(max)  NOT NULL,
    [BookingId] int  NOT NULL,
    [Doctor_UserId] int  NOT NULL
);
GO

-- Creating table 'Users_Customer_Service'
CREATE TABLE [dbo].[Users_Customer_Service] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Notes] nvarchar(max)  NOT NULL,
    [ShiftTimes] nvarchar(max)  NOT NULL,
    [UserId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BookingId] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [PK_Bookings]
    PRIMARY KEY CLUSTERED ([BookingId] ASC);
GO

-- Creating primary key on [Id] in table 'Testimonials'
ALTER TABLE [dbo].[Testimonials]
ADD CONSTRAINT [PK_Testimonials]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Locations'
ALTER TABLE [dbo].[Locations]
ADD CONSTRAINT [PK_Locations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [RoleId] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([RoleId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users_Patient'
ALTER TABLE [dbo].[Users_Patient]
ADD CONSTRAINT [PK_Users_Patient]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users_Radiographer'
ALTER TABLE [dbo].[Users_Radiographer]
ADD CONSTRAINT [PK_Users_Radiographer]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [BookingId] in table 'Bookings_CT_Scan'
ALTER TABLE [dbo].[Bookings_CT_Scan]
ADD CONSTRAINT [PK_Bookings_CT_Scan]
    PRIMARY KEY CLUSTERED ([BookingId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users_Doctor'
ALTER TABLE [dbo].[Users_Doctor]
ADD CONSTRAINT [PK_Users_Doctor]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [BookingId] in table 'Bookings_Consultation'
ALTER TABLE [dbo].[Bookings_Consultation]
ADD CONSTRAINT [PK_Bookings_Consultation]
    PRIMARY KEY CLUSTERED ([BookingId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users_Customer_Service'
ALTER TABLE [dbo].[Users_Customer_Service]
ADD CONSTRAINT [PK_Users_Customer_Service]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Patient_UserId] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_PatientBooking]
    FOREIGN KEY ([Patient_UserId])
    REFERENCES [dbo].[Users_Patient]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PatientBooking'
CREATE INDEX [IX_FK_PatientBooking]
ON [dbo].[Bookings]
    ([Patient_UserId]);
GO

-- Creating foreign key on [Radiographer_UserId] in table 'Bookings_CT_Scan'
ALTER TABLE [dbo].[Bookings_CT_Scan]
ADD CONSTRAINT [FK_RadiographerCT_Scan]
    FOREIGN KEY ([Radiographer_UserId])
    REFERENCES [dbo].[Users_Radiographer]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RadiographerCT_Scan'
CREATE INDEX [IX_FK_RadiographerCT_Scan]
ON [dbo].[Bookings_CT_Scan]
    ([Radiographer_UserId]);
GO

-- Creating foreign key on [Doctor_UserId] in table 'Bookings_Consultation'
ALTER TABLE [dbo].[Bookings_Consultation]
ADD CONSTRAINT [FK_DoctorConsultation]
    FOREIGN KEY ([Doctor_UserId])
    REFERENCES [dbo].[Users_Doctor]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DoctorConsultation'
CREATE INDEX [IX_FK_DoctorConsultation]
ON [dbo].[Bookings_Consultation]
    ([Doctor_UserId]);
GO

-- Creating foreign key on [Referral_UserId] in table 'Bookings_CT_Scan'
ALTER TABLE [dbo].[Bookings_CT_Scan]
ADD CONSTRAINT [FK_DoctorCT_Scan]
    FOREIGN KEY ([Referral_UserId])
    REFERENCES [dbo].[Users_Doctor]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DoctorCT_Scan'
CREATE INDEX [IX_FK_DoctorCT_Scan]
ON [dbo].[Bookings_CT_Scan]
    ([Referral_UserId]);
GO

-- Creating foreign key on [Radiographer_UserId] in table 'Users_Patient'
ALTER TABLE [dbo].[Users_Patient]
ADD CONSTRAINT [FK_PatientRadiographer]
    FOREIGN KEY ([Radiographer_UserId])
    REFERENCES [dbo].[Users_Radiographer]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PatientRadiographer'
CREATE INDEX [IX_FK_PatientRadiographer]
ON [dbo].[Users_Patient]
    ([Radiographer_UserId]);
GO

-- Creating foreign key on [Doctor_UserId] in table 'Users_Patient'
ALTER TABLE [dbo].[Users_Patient]
ADD CONSTRAINT [FK_PatientDoctor]
    FOREIGN KEY ([Doctor_UserId])
    REFERENCES [dbo].[Users_Doctor]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PatientDoctor'
CREATE INDEX [IX_FK_PatientDoctor]
ON [dbo].[Users_Patient]
    ([Doctor_UserId]);
GO

-- Creating foreign key on [Customer_Service_UserId] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_Customer_ServiceBooking]
    FOREIGN KEY ([Customer_Service_UserId])
    REFERENCES [dbo].[Users_Customer_Service]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Customer_ServiceBooking'
CREATE INDEX [IX_FK_Customer_ServiceBooking]
ON [dbo].[Bookings]
    ([Customer_Service_UserId]);
GO

-- Creating foreign key on [Patient_UserId] in table 'Testimonials'
ALTER TABLE [dbo].[Testimonials]
ADD CONSTRAINT [FK_TestimonialPatient]
    FOREIGN KEY ([Patient_UserId])
    REFERENCES [dbo].[Users_Patient]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestimonialPatient'
CREATE INDEX [IX_FK_TestimonialPatient]
ON [dbo].[Testimonials]
    ([Patient_UserId]);
GO

-- Creating foreign key on [Doctor_UserId] in table 'Testimonials'
ALTER TABLE [dbo].[Testimonials]
ADD CONSTRAINT [FK_TestimonialDoctor]
    FOREIGN KEY ([Doctor_UserId])
    REFERENCES [dbo].[Users_Doctor]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestimonialDoctor'
CREATE INDEX [IX_FK_TestimonialDoctor]
ON [dbo].[Testimonials]
    ([Doctor_UserId]);
GO

-- Creating foreign key on [Radiographer_UserId] in table 'Testimonials'
ALTER TABLE [dbo].[Testimonials]
ADD CONSTRAINT [FK_TestimonialRadiographer]
    FOREIGN KEY ([Radiographer_UserId])
    REFERENCES [dbo].[Users_Radiographer]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TestimonialRadiographer'
CREATE INDEX [IX_FK_TestimonialRadiographer]
ON [dbo].[Testimonials]
    ([Radiographer_UserId]);
GO

-- Creating foreign key on [Location_Id] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_BookingLocation]
    FOREIGN KEY ([Location_Id])
    REFERENCES [dbo].[Locations]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookingLocation'
CREATE INDEX [IX_FK_BookingLocation]
ON [dbo].[Bookings]
    ([Location_Id]);
GO

-- Creating foreign key on [RoleRoleId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_RoleUser]
    FOREIGN KEY ([RoleRoleId])
    REFERENCES [dbo].[Roles]
        ([RoleId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoleUser'
CREATE INDEX [IX_FK_RoleUser]
ON [dbo].[Users]
    ([RoleRoleId]);
GO

-- Creating foreign key on [UserId] in table 'Users_Patient'
ALTER TABLE [dbo].[Users_Patient]
ADD CONSTRAINT [FK_Patient_inherits_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserId] in table 'Users_Radiographer'
ALTER TABLE [dbo].[Users_Radiographer]
ADD CONSTRAINT [FK_Radiographer_inherits_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BookingId] in table 'Bookings_CT_Scan'
ALTER TABLE [dbo].[Bookings_CT_Scan]
ADD CONSTRAINT [FK_CT_Scan_inherits_Booking]
    FOREIGN KEY ([BookingId])
    REFERENCES [dbo].[Bookings]
        ([BookingId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserId] in table 'Users_Doctor'
ALTER TABLE [dbo].[Users_Doctor]
ADD CONSTRAINT [FK_Doctor_inherits_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [BookingId] in table 'Bookings_Consultation'
ALTER TABLE [dbo].[Bookings_Consultation]
ADD CONSTRAINT [FK_Consultation_inherits_Booking]
    FOREIGN KEY ([BookingId])
    REFERENCES [dbo].[Bookings]
        ([BookingId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserId] in table 'Users_Customer_Service'
ALTER TABLE [dbo].[Users_Customer_Service]
ADD CONSTRAINT [FK_Customer_Service_inherits_User]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------