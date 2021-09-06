<?php
// create a rss feed

    $con = mysqli_connect('localhost', 'root', '', 'adp');
    if(!$con){
        echo "Connection Failed";
        die();
    }
    $sql = "SELECT * FROM rss ORDER BY postdate DESC LIMIT 2";
    $res = mysqli_query($con, $sql);

    $link = 'https://anshumanbharatiya.tk/';
    $description = 'I am Anshuman Bharatiya and i want to be a full stack web developer. I love to do animated page or website. Works with HTML, CSS, JavaScript, PHP, Mysql, and many plugins....';
    date_default_timezone_set('Asia/Kolkata');


    header( "Content-type: text/xml");
    $feed = "<?xml version='1.0' encoding='UTF-8'?>";
    $feed .= '<rss xmlns:atom="http://www.w3.org/2005/Atom" version="2.0">';
    $feed .= '<channel>';
    $feed .= '<title>My Web site | Anshuman Bharatiya</title>';
    $feed .= '<link>'.$link.'</link>';
    $feed .= '<description>'.$description.'</description>';
    $feed .= '<lastBuildDate>'.date('D, d M Y h:i:sa').'</lastBuildDate>';
    $feed .= '<atom:link type="application/rss+xml" rel="self" href="'.$link.'"/>';
    $feed .= '<copyright>Copyright:(C) '.date('Y').' Anshuman Bharatiya PVT. LTD., '.$link.'</copyright>';
    $feed .= '<docs>'.$link.'</docs>';

    if(mysqli_num_rows($res)>0){
        while($row=mysqli_fetch_array($res)){
            $feed .= "<item>";
            $feed .= "<guid>".$row['id']."</guid>";
            $feed .= "<title>".$row['title']."</title>";
            $feed .= "<description>".$row['description']."</description>";
            $feed .= "<image>".$row['image']."</image>";
            $feed .= "<link>".$row['link']."</link>";
            $feed .= "<pudate>".$row['postdate']."</pudate>";
            $feed .= "</item>";
        }
    }
    echo $feed;
    echo "</channel></rss>";

?>