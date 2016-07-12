<!DOCTYPE HTML>
<html>

<head>
  <title>$title$</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="/style/style.css" title="style" />
  <link rel="icon" href="/media/favicon.png" type="image/png" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="/">CMC<span class="logo_colour">17</span></a></h1>
          <h2>17th International Conference on Membrane Computing</h2>
        </div>
        <img id="cmc_logo" src="/media/cmc-logo.png">
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li><a href="/">Home</a></li>
          <li><a href="/call-for-papers/">Call for papers</a></li>
          <li><a href="/call-for-abstracts/">Call for abstracts</a></li>
          <li><a href="/conference-program/">Conference program</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div class="sidebar">
        $for(include-before)$
        $include-before$
        $endfor$
      </div>
      <div id="content">
        $body$
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer">
      Website design by <a href="http://www.html5webtemplates.co.uk/">HTML5webtemplates.co.uk</a>, CMC logo design by <a href="http://diegogimenezorti.wix.com/diegogimenez">Diego Giménez</a>
    </div>
  </div>
</body>
</html>
