<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  
	<head>
    <title>Classes</title>
	<link href="css/tooplate_style.css" rel="stylesheet"/>
	</head>
	
  <body>
  
<span id="top"></span>
<div id="ankama_body_main">
<div id="ankama_main">
	<div id="ankama_header">
        <div id="site_title">
            <h1><a href="#">Blue</a></h1>
        </div>
        <div id="ankama_menu">
            <ul>
                <li><a href="main.html">Title</a></li>
                <li><a href="among rest.html">Agency</a></li>
                <li><a href="games.html">Games</a>
				<ul>
					<li><a href="dofus.html">Dofus</a></li>
					<li><a href="dofus arena.html">KrosMaster</a></li>
					<li><a href="wakfu.html">Wakfu</a></li>
					<li><a href="wakfu islands.html">Islands</a></li>
				</ul>
				</li>
                <li><a href="series.html">Series</a></li>
            </ul>				
        </div> 
	</div> 
      	<div class="content_box">
  <h2>Classes in Wakfu</h2>
    <table border="1">
      <tr bgcolor="blue">
        <th>Name</th>
        <th>Element</th>
        <th>Type</th>
		<th>Power</th>
      </tr>
	  <xsl:for-each select="Classes/Class[power > 100]">
      <xsl:sort select="name"/>
	  
      <tr>
        <td bgcolor="red" ><xsl:value-of select="name"/></td>
        <xsl:choose>
			<xsl:when test="element='Air'">
				<td bgcolor="pink" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:when>
			<xsl:otherwise>
				<td bgcolor="yellow" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:otherwise>
		</xsl:choose>
        <td bgcolor="green"><xsl:value-of select="type"/></td>
		<td bgcolor="pink"><xsl:value-of select="power"/></td>
      </tr>
      </xsl:for-each>
    </table>
	</div> 
	</div> 
</div> 
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
