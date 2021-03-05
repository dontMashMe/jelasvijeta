Application is built in Laravel Framework 8.29.0.

It consists of database containing meals, ingredients, categories and tags. 
Each meal, tag and category has its translation table (done using https://github.com/Astrotomic/laravel-translatable)

It has a single endpoint which displays the meals based on URL query parameters. 

<h2>Request</h2>
<ul> 
    <li>per_page - (optional) Number of results per page </li>
    <li>page - (optional) at page </li>
    <li>category - (optional) ID of category to filter results by. can also be null (no category) or !null (must have category) </li>
    <li>tags - (optional) list of IDs to filter results by. for example tags=1,2,3 </li>
    <li>with - (optional) keywords which indiate what additional results we want included with meals in response (category, tags, ingredients) </li>
    <li>lang - (required) language of resulsts </li>
    <li>diff_time - (optional) UNIX timestamp </li>
</ul>
<hr>
<h2>Response</h2>
 ?lang=hr&per_page=5&category=150&tags=46%2C47&page=1&diff_time=1614603380&with=category,tags,ingredients

The response should thus include:
meals on Croatian language, including their categories, tags and ingredients, must have category 150 & tags 46 and 47, modified, created or updated after 1614603380 (Monday, March 1, 2021 12:56:20 PM) and be paginated by 5 results per page, current page 1. 

Applications entry point is a form I built to ease the URL query building, the form does it for you. 

