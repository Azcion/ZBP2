<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match='track'>

<html lang="en">
    <head>

        <meta charset="UTF-8"/>
        <title>Track</title>
        <script type="text/javascript" src="js/player.js"> </script>
        <script type="text/javascript" src="js/hover.js"> </script>
        <script type="text/javascript" src="js/init.js"> </script>
        <link rel="stylesheet" href="css/player.min.css" type="text/css"/>
        <link rel="stylesheet" href="css/controls.css" type="text/css"/>
        <link rel="stylesheet" href="css/hover.css" type="text/css"/>
        <link rel="stylesheet" href="css/track.css" type="text/css"/>
        <link rel="stylesheet" href="css/fonts.css" type="text/css"/>
    </head>
    <body>
        <xsl:attribute name='style'>background-image:url(<xsl:value-of select='album/image/url'/>);</xsl:attribute>

        <div id="drop"/>
        <div id="wrapper">
            <div id="column">
                <img alt="album art">
                    <xsl:attribute name='src'>
                        <xsl:value-of select='album/image/url'/>
                    </xsl:attribute>
                </img>
                <div id="text">
                    <p id="title"><xsl:value-of select='name'/></p>
                    <p id="artists"><xsl:value-of select='artists/artist/name'/></p>
                </div>
                <div class="audio">
                    <audio>
                        <source type="audio/mpeg">
                            <xsl:attribute name='src'>
                                <xsl:value-of select='preview_url'/>
                            </xsl:attribute>
                        </source>
                    </audio>
                </div>
            </div>
        </div>

    </body>
</html>

</xsl:template>

</xsl:transform>