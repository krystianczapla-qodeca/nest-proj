BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[Article] (
    [id] INT NOT NULL IDENTITY(1,1),
    [title] NVARCHAR(1000) NOT NULL,
    [description] NVARCHAR(1000),
    [body] NVARCHAR(1000) NOT NULL,
    [published] BIT NOT NULL CONSTRAINT [Article_published_df] DEFAULT 0,
    [createdAt] DATETIME2 NOT NULL CONSTRAINT [Article_createdAt_df] DEFAULT CURRENT_TIMESTAMP,
    [updatedAt] DATETIME2 NOT NULL,
    CONSTRAINT [Article_pkey] PRIMARY KEY CLUSTERED ([id]),
    CONSTRAINT [Article_title_key] UNIQUE NONCLUSTERED ([title])
);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
