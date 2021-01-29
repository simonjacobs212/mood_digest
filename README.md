# mood_digest
A daily digest of culture and inspiration, tailored to your mood to start your day.
<h1 style="text-align: center">Mood Digest</h1>

<img src="https://cutt.ly/gkw1rsV" alt="Feelings">


### Table of Contents

  - [Getting Started](#getting-started)
    - [Setup](#setup)
    - [Seeding](#seeding)
  - [Sources](#sources)
  - [Contributing](#contributing)
  - [Known issues](#known-issues)
  - [Contributors](#contributors)



#### Getting Started
Clone the repo and 'cd' to the proper directory. Once you have done so, please run the following to install the necessary gems for Mood Digest:
1. `bundle install`
<br><br>
By doing this, you will install <a href="https://blog.jquery.com/2016/06/09/jquery-3-0-final-released/">jQuery3</a> and <a href="https://github.com/twbs/bootstrap-rubygem">Bootstrap 4</a>, among other gems needed to run our app.

##### Setup
You will need a number of dependences in order to run our app. Once these have successfully been installed, you may move on to section 3. 

Please run the following commands in your terminal:
   1. Navigate to your root directory. run `brew install yarn`
   2. In this app's directory, run: `Yarn add bootstrap jquery popper.js`
   3. In your directory run `rails db:reset`
   4. To start the local server/web application type `rails s`
   5. You will be able to see the application by navigating to `http://localhost:3000/` in your web browser.

##### Seeding
You are able to add more pieces of data (if you'd like) by:
1. Navigate to the `/db/seeds.rb` directory. 
2. You will find all data categorized by `Mood` and `UserMood`
3. Ensure artwork resolution stays within 1000 x 1000 pixels to prevent sizing issues. 
4. Once you have added or made any changes to the database, run `rails db:reset` to start with your newly added data.

#### Sources
1. Images
   * Images were sourced from a public domains: <a href= https://harvardartmuseums.org/>Harvard Museum Collection</a> and Google image search.
2. Music
   * All videos and music are provided by <a href= https://www.youtube.com/>YouTube</a>. We own no rights to these videos and thank all contributors who have uploaded these awesome pieces.
3. Quotes
   * The quotes in Mood Digest were sourced from <a href="https://www.quotegarden.com/">The Quote Garden</a>. We have added additional links to the author's name for each quote.


#### Contributing
Pull requests are welcome. Please make sure that your PR is <a href="https://www.netlify.com/blog/2020/03/31/how-to-scope-down-prs/">well-scoped</a>. For major changes, please open an issue first to discuss what you would like to change.

#### Known issues
* <a href="https://github.com/simonjacobs212/mood_digest/issues">Visit Issues Section</a>

#### Contributors
<table>
  <tr>
    <td align="center"><a href="https://github.com/Lohengrin22"><img src="https://avatars.githubusercontent.com/u/21296984?s=400&u=3c189df6bd4c8e42c12c1fdfcce3e7ade4969951&v=4" width="200px;" alt=""/><br /><sub><b>Jonathan Brinson</b></sub></a><br />
    <td></td>
    <td align="center"><a href="https://github.com/simonjacobs212"><img src="https://avatars1.githubusercontent.com/u/71735267?s=460&v=4" width="200px;" alt=""/><br /><sub><b>Simon Jacobs</b></sub></a><br />
    </tr>
</table>

[[Top]](#table-of-contents)
