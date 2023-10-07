CREATE TABLE treks (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT
);

-- Inserting data into the "treks" table
INSERT INTO treks (name, description)
VALUES 
    ('Annapurna Circuit Adventure', 'Trek through the breathtaking Annapurna Circuit in Nepal, where every step is a journey through diverse landscapes and cultures.'),
    ('Everest Base Camp Expedition', 'Embark on a legendary expedition to Everest Base Camp in Nepal, standing in the shadow of the world tallest peak.'),
    ('Bhutanese Mountain Discovery', 'Discover the mystical mountains of Bhutan, a land where ancient traditions meet pristine natural beauty.'),
    ('Swiss Alps Alpine Wonderland', 'Explore the enchanting beauty of the Swiss Alps, where snow-covered peaks and charming villages await your discovery.'),
    ('Patagonian Glacier Trek', 'Venture into the heart of Patagonia to witness the awe-inspiring beauty of glaciers and fjords.'),
    ('Himalayan Tea House Trek', 'Trek through the lush tea plantations and rhododendron forests of the Himalayas, savoring the flavors of adventure and tranquility.'),
    ('Kangchenjunga Base Camp Quest', 'Embark on a quest to the base camp of Kangchenjunga, the worlds third-highest peak, in the remote corners of Nepal.'),
    ('Indian Himalayan Highs', 'Journey to the Indian Himalayas, where lofty peaks and vibrant culture blend seamlessly.'),
    ('Bhutanese Dragons Nest Hike', 'Hike to the iconic Paro Taktsang, known as the "Tigers Nest" monastery, perched on a cliff in Bhutan.'),
    ('Italian Dolomites Discovery', 'Discover the dramatic landscapes of the Italian Dolomites, a playground for outdoor enthusiasts.'),
    ('Patagonian Pampas Safari', 'Embark on a safari across the windswept Patagonian pampas, home to unique wildlife and rugged beauty.'),
    ('Nepalese Gosaikunda Lake Retreat', 'Find serenity by the holy shores of Gosaikunda Lake in Nepal, surrounded by the majestic Himalayas.'),
    ('French Alps Mont Blanc Ascent', 'Climb to the summit of Mont Blanc in the French Alps, the tallest peak in Western Europe.'),
    ('Torres del Paine Adventure', 'Hike through the iconic Torres del Paine National Park in Patagonia, a land of stunning landscapes and wildlife.'),
    ('Himalayan Hidden Valleys Trek', 'Uncover the hidden valleys of the Himalayas, where remote communities and pristine nature coexist.'),
    ('Austrian Alps Alpine Bliss', 'Immerse yourself in the Austrian Alps, where alpine meadows and charming villages create a picturesque setting.'),
    ('Patagonian King Penguin Encounter', 'Witness the majestic King Penguins in their natural habitat in Patagonia, a truly regal experience.'),
    ('Bhutanese Himalayan Serenity', 'Find serenity amidst the serene landscapes and monasteries of Bhutan, a land of peace and tranquility.'),
    ('Swiss Alps Glacier Paradise', 'Explore the glacier paradise of the Swiss Alps, a world of ice and beauty at high altitudes.'),
    ('Himalayan Rhododendron Trek', 'Trek through Himalayan forests adorned with vibrant rhododendron blooms, a symphony of colors.'),
    ('Indian Himalayan Villages Escape', 'Embark on a journey through remote Himalayan villages in India, where time stands still.'),
    ('Bhutanese Druk Path Adventure', 'Embark on the Druk Path adventure in Bhutan, a high-altitude trek through pristine wilderness and ancient monasteries.'),
    ('French Alps Chamonix Challenge', 'Take on the Chamonix Challenge in the French Alps, a mountaineers playground in Europe.'),
    ('Patagonian Fjord Odyssey', 'Sail through the dramatic fjords of Patagonia, where towering cliffs meet the deep blue sea.'),
    ('Nepalese Manaslu Circuit Expedition', 'Trek the Manaslu Circuit in Nepal, a lesser-known gem offering unparalleled natural beauty.'),
    ('German Bavarian Alps Exploration', 'Discover the Bavarian Alps in Germany, where idyllic landscapes and charming towns await.'),
    ('Patagonian Los Glaciares Trek', 'Trek through Los Glaciares National Park in Patagonia, home to stunning glaciers and pristine lakes.'),
    ('Bhutanese Jomolhari Trail', 'Hike the Jomolhari Trail in Bhutan, a journey through high mountain passes and sacred valleys.'),
    ('Austrian Alps Lake District Adventure', 'Embark on an adventure through the Austrian Alpss Lake District, where crystal-clear waters meet rugged peaks.'),
    ('Nepalese Mustang Valley Exploration', 'Explore the mystical Mustang Valley in Nepal, known as "Little Tibet," and immerse yourself in its unique culture.'),
    ('Swiss Alps Lauterbrunnen Valley Retreat', 'Find serenity in the Lauterbrunnen Valley of the Swiss Alps, surrounded by cascading waterfalls and towering cliffs.'),
    ('Patagonian Valdes Peninsula Safari', 'Embark on a safari on the Valdes Peninsula in Patagonia, home to diverse wildlife and stunning landscapes.'),
    ('Bhutanese Bumthang Cultural Trek', 'Embark on a cultural trek through Bhutans Bumthang Valley, where ancient traditions come to life.'),
    ('Italian Dolomites Via Ferrata Challenge', 'Take on the thrilling challenge of the Via Ferrata in the Italian Dolomites, an adrenaline-pumping adventure.'),
    ('Nepalese Langtang Valley Hike', 'Hike through the pristine beauty of Langtang Valley in Nepal, a tranquil haven amidst the Himalayas.'),
    ('Swiss Alps Matterhorn Summit Ascent', 'Challenge yourself to reach the iconic Matterhorn summit in the Swiss Alps, a mountaineers dream.'),
    ('Patagonian Carretera Austral Expedition', 'Embark on a road trip along the Carretera Austral in Patagonia, a journey through remote landscapes and hidden gems.'),
    ('Bhutanese Gangtey Valley Retreat', 'Find serenity in Bhutans Gangtey Valley, a serene paradise surrounded by mountains and rare wildlife.'),
    ('French Alps Mont Blanc via Gouter Route', 'Climb Mont Blanc via the Gouter Route in the French Alps, a mountaineers classic ascent.'),
    ('Nepalese Rara Lake Serenity', 'Discover the serenity of Rara Lake in Nepal, a hidden gem nestled in the remote Himalayan wilderness.'),
    ('Swiss Alps Zermatt Adventure', 'Explore the picturesque town of Zermatt in the Swiss Alps, with the iconic Matterhorn as your backdrop.'),
    ('Patagonian Marble Caves Discovery', 'Discover the surreal beauty of the Marble Caves in Patagonia, a geological marvel on the shores of Lake General Carrera.'),
    ('Bhutanese Phobjikha Valley Sojourn', 'Sojourn in the pristine Phobjikha Valley of Bhutan, home to black-necked');


--CREATE TABLE treks (id SERIAL PRIMARY KEY,name TEXT NOT NULL,description TEXT);

