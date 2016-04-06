(:query4.xql
  Description: This Xquery program work as search engine which can take 3 parameters. If the 3 parameters are all include,
  then it will try to find the book fit all 3 parameter, otherwise it will show there is no result. If all
  3 parameters are all excluded, then will show all the books. If some parameter are included some are 
  excluded, then the result is the book(s) which fit all the included parameters.
  Output: If the command is like ./saxon.sh query4.xql, the result is show at the terminal.
		  If want an output html file, run as ./saxon.sh query4.xql > output.html:)


let $param := doc('params.xml')//parameter
let $bookTitle := data($param[@name='Title' and @included='true'])
let $author := data($param[@name='Author' and @included='true'])	
let $ISBN := data($param[@name="ISBN" and @included='true'])

let $findTitle :=
	for $book1 in doc('asins.xml')//asin
	where fn:contains($book1/Title/text(),$bookTitle)
	return $book1

let $findAuthor :=
	for $book2 in doc('asins.xml')//asin
		for $writer in $book2//Author
		where fn:contains($writer/text(),$author)
		return $book2
		
let $findISBN := 
	if(exists($ISBN))
	then 
		for $book3 in doc('asins.xml')//asin
		let $ISBN10 := substring(data($book3/@ISBN), 1, 10)
		let $ISBN13 := substring(data($book3/@ISBN), 12)
		where $ISBN10 = $ISBN or $ISBN13 = $ISBN
		return $book3
	else
		doc('asins.xml')//asin
	

let $result := $findISBN intersect $findTitle intersect $findAuthor
return
	if(exists($result))
	then
	for $one in $result
	return
	    <a href="{data($one/LocalLink)}">
		{data($one/Title)}</a>
	else
		<p>No book match!</p>
		

		