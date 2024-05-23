USE Retail
ALTER TABLE dbo.dataset
   ADD CONSTRAINT FK_cat FOREIGN KEY (category_id)
      REFERENCES dbo.category (category_id)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;