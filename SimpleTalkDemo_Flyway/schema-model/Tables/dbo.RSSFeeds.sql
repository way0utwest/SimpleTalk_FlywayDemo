CREATE TABLE [dbo].[RSSFeeds]
(
[RSSFeedID] [int] NOT NULL IDENTITY(1, 1),
[FeedName] [varchar] (max) NULL,
[Checked] [bit] NOT NULL CONSTRAINT [DF__RSSFeeds__Checke__34E8D562] DEFAULT ((0)),
[FeedBurner] [bit] NOT NULL,
[ModifiedDate] [datetime2] (3) NULL
)
GO
ALTER TABLE [dbo].[RSSFeeds] ADD CONSTRAINT [PK__RSSFeeds__DF1690F2C1F77AC5] PRIMARY KEY CLUSTERED ([RSSFeedID])
GO
