--4-6
--select top 76 author.[name], grade.[name], gender.[name] FROM Author 
--LEFT JOIN grade on author.GradeId = grade.Id
--LEFT JOIN gender on author.GenderId = gender.Id
--ORDER BY Author.Name;

--7
--select SUM(WordCount) From poem;

--8
--SELECT title, charcount from Poem 
--Where CharCount = (SELECT TOP 1 charcount from poem Order by CharCount ASC);

--9,10
--Select Count(author.id) FROM Author
--LEFT JOIN grade on author.GradeID = grade.id
--WHERE grade.name = '3rd Grade' OR grade.name = '2nd Grade' OR grade.name = '1st Grade';

--11
--SELECT COUNT(Poem.Id) FROM Poem 
--LEFT JOIN author on poem.AuthorId = author.id
--LEFT JOIN grade on author.GradeId = grade.id
--WHERE grade.Name='4th Grade';

--12
--SELECT COUNT(Poem.Id), grade.name FROM Poem 
--LEFT JOIN author on poem.AuthorId = author.id
--LEFT JOIN grade on author.GradeId = grade.id
--GROUP BY grade.name;

--13
--SELECT COUNT(author.id), grade.name FROM Author
--LEFT JOIN grade on author.GradeId = grade.id
--GROUP BY grade.name
--ORDER BY grade.name;

--14
--SELECT TOP 1 poem.Title from POEM ORDER BY WordCount DESC;

--15 ???????????????
--SELECT author.id, COUNT(poem.AuthorID) as '# Of Poems' from Author
--LEFT JOIN Poem on Author.Id = Poem.AuthorId
--GROUP BY author.id 
--ORDER BY Count(poem.AuthorID) DESC;

--16
--SELECT Count(poem.id) FROM POEM 
--LEFT JOIN PoemEmotion on poem.Id = PoemEmotion.PoemId
--LEFT JOIN Emotion on Emotion.Id = PoemEmotion.EmotionId
--WHERE Emotion.[Name] = 'Sadness';

--17
--SELECT Count(poem.id) FROM POEM 
--LEFT JOIN PoemEmotion on poem.Id = PoemEmotion.PoemId
--WHERE PoemEmotion.id Is Null;


--18

--SELECT TOP 1 emotion.Name, COUNT(poem.id) as '#OfPoems' FROM POEM 
--LEFT JOIN PoemEmotion on poem.Id = PoemEmotion.PoemId
--LEFT JOIN Emotion on Emotion.Id = PoemEmotion.EmotionId
--WHERE Emotion.Name IS NOT NULL
--GROUP by emotion.name
--ORDER by COUNT(poem.id);

----19
--SELECT  TOP 1 grade.Name, COUNT(poem.id) as '#OfPoems' FROM POEM 
--LEFT JOIN author on poem.AuthorID = Author.ID
--LEFT JOIN grade on Author.GradeId = grade.ID
--LEFT JOIN PoemEmotion on poem.Id = PoemEmotion.PoemId
--LEFT JOIN Emotion on Emotion.Id = PoemEmotion.EmotionId
--WHERE Emotion.Name = 'Joy'
--Group by grade.name
--ORDER by COUNT(poem.id) DESC;

----20
--SELECT TOP 1  gender.Name, COUNT(poem.id) as '#OfPoems' FROM POEM 
--LEFT JOIN author on poem.AuthorID = Author.ID
--LEFT JOIN gender on Author.GenderId = gender.ID
--LEFT JOIN PoemEmotion on poem.Id = PoemEmotion.PoemId
--LEFT JOIN Emotion on Emotion.Id = PoemEmotion.EmotionId
--WHERE Emotion.Name = 'Fear'
--Group by gender.name
--ORDER by COUNT(poem.id);
