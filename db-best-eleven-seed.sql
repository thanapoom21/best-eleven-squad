CREATE TABLE players
(
	id SERIAL,
	name text,
	position text,
	imgurl text,
	CONSTRAINT players_pkey PRIMARY KEY (id)
);

INSERT INTO players(name, position, imgurl) VALUES
  ('Thierry Henry', 'Centre Forward', 'https://www.arsenal.com/sites/default/files/styles/desktop_16x9/public/gun__1239184979_henry_realmadrid.jpg?itok=wSoOCQRf'),
  ('Sadio Mane', 'Left Forward', 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt49897a0c9cf5f535/628a37f32b67610d567329f3/Sadio_Mane_Liverpool_2021-22.jpg'),
  ('Leonel Messi', 'Right Forward', 'https://cdn.vox-cdn.com/thumbor/JUJu-chEiwi5_XnSnk6sBwfdreU=/0x0:3007x2005/1200x800/filters:focal(1192x0:1672x480)/cdn.vox-cdn.com/uploads/chorus_image/image/69448563/1322729766.0.jpg'),
	('Zinedine Zidane', 'Attacking Midfielder', 'https://d3nfwcxd527z59.cloudfront.net/content/uploads/2020/07/18143046/Zinedine-Zidane-France.jpg'),
	('Luka Modric', 'Left Central Midfielder', 'https://i2-prod.mirror.co.uk/incoming/article27004125.ece/ALTERNATES/n615/0_GettyImages-1239152375.jpg'),
	('Xavi Hernandez', 'Right Central Midfielder', 'https://images.news18.com/ibnlive/uploads/2021/11/xavi-hernandez-16360021154x3.jpg'),
	('Joao Cancelo', 'Left Fullback', 'https://library.sportingnews.com/2021-12/joaocancelojpg_1bdu3ijbr0rj41vfaa52y25ydo.jpg'),
	('Dani Alves', 'Right Fullback', 'https://www.fcbarcelona.com/fcbarcelona/photo/2021/11/12/5d219f31-4d6c-450e-93ff-6109d22621dc/fcbgetafe19032011_pic_fcb-getafecf54-min.jpg'),
	('Virgil Van Dijk', 'Central Defender', 'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blte9aad494ed6c6261/61cdedbf659c346906c27097/GettyImages-1340068294.jpg'),
	('Sol Campbell', 'Central Defender', 'https://library.sportingnews.com/2021-08/sol-campbell-england_1gra64xtwlswq1hb4b9s720yvw.jpg'),
	('Manuel Neuer', 'Goalkeeper', 'https://imgnew.outlookindia.com/public/uploads/articles/2020/3/27/Manuel-Neuer-Twitter.jpg');
