
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/30/2020 20:35:37
-- Generated from EDMX file: C:\Users\Admin\source\repos\Assignment\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-Assignment-20201030054406];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UnitsClass]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClassSet] DROP CONSTRAINT [FK_UnitsClass];
GO
IF OBJECT_ID(N'[dbo].[FK_ClassBooking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookingSet] DROP CONSTRAINT [FK_ClassBooking];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[BookingSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookingSet];
GO
IF OBJECT_ID(N'[dbo].[UnitsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UnitsSet];
GO
IF OBJECT_ID(N'[dbo].[ClassSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClassSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'BookingSet'
CREATE TABLE [dbo].[BookingSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UnitsId] int  NOT NULL,
    [ClassId] int  NOT NULL,
    [Customer_id] int  NOT NULL
);
GO

-- Creating table 'UnitsSet'
CREATE TABLE [dbo].[UnitsSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Unit_name] nvarchar(max)  NOT NULL,
    [Unit_description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ClassSet'
CREATE TABLE [dbo].[ClassSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Start_Time] datetime  NOT NULL,
    [End_Time] datetime  NOT NULL,
    [UnitsId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'BookingSet'
ALTER TABLE [dbo].[BookingSet]
ADD CONSTRAINT [PK_BookingSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UnitsSet'
ALTER TABLE [dbo].[UnitsSet]
ADD CONSTRAINT [PK_UnitsSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ClassSet'
ALTER TABLE [dbo].[ClassSet]
ADD CONSTRAINT [PK_ClassSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UnitsId] in table 'ClassSet'
ALTER TABLE [dbo].[ClassSet]
ADD CONSTRAINT [FK_UnitsClass]
    FOREIGN KEY ([UnitsId])
    REFERENCES [dbo].[UnitsSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UnitsClass'
CREATE INDEX [IX_FK_UnitsClass]
ON [dbo].[ClassSet]
    ([UnitsId]);
GO

-- Creating foreign key on [ClassId] in table 'BookingSet'
ALTER TABLE [dbo].[BookingSet]
ADD CONSTRAINT [FK_ClassBooking]
    FOREIGN KEY ([ClassId])
    REFERENCES [dbo].[ClassSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClassBooking'
CREATE INDEX [IX_FK_ClassBooking]
ON [dbo].[BookingSet]
    ([ClassId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------