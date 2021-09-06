<!-- fetch rss feed data -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rss Feed</title>
    <style>
    .main{
        max-width:1300px;
        width:100%;
        display: grid;
        grid-template-columns: auto auto auto;
        grid-column-gap: 20px;
        grid-row-gap: 20px;
        padding: 0 10px;
        margin: auto;   
    }
    .items{
        width: 400px;
        height: auto;
        padding: 10px;
        float: left;
        /* background-color: #2196F3; */
    }
    h2{
        font-size: 20px;
        height: 50px;
    }
    a{
        outline: none;
        text-decoration: none;
        color: red;
    }
    .desc{
        margin-top: 10px;
        font-size: 18px;
    }
    .desc img{
        width: 100%;
        margin-left:-2px;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
<?php
/*  RSS stands for Really Simple Syndication. ... 
An RSS feed takes the headlines, summaries, and update notices, 
and then links back to articles on your favorite website's page. 
This content is distributed in real time, so that 
the top results on the RSS feed are always the latest published content for a website. */

$url = 'https://timesofindia.indiatimes.com/rssfeeds/54829575.cms';
// $url = 'http://localhost:8181/adp/rss_feed/rss2.php';
$feed = simplexml_load_file($url);
$feed = json_decode(json_encode($feed), true);
// echo "<pre>";
// print_r($feed['channel']);

if(isset($feed['channel']))
{
    if(isset($feed['channel']['item']))
    {
        echo "<div class='main'>";
        foreach($feed['channel']['item'] as $list)
        {
            // echo "<pre>";
            // print_r($list);
            // die();
            // sleep(1);
            echo "<div class='items'>";
                echo "<a href='".$list['link']."' target='blank'><h2>".$list['title']."</h2></a>";
                echo "<div class='desc'>".$list['description']."</div>";
            echo "</div>";
        }
        echo "</div>";
    }
    else{
        echo "Invalid feed link";
    }
}
else{
    echo "InValid Feed";
}
?>
</body>
</html>
