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
<div align="center" id="ankama_body_main">
<div id="menu">
<script type="text/javascript" src="js/menu.js"></script>
</div>
        <div id="Agency" class="content_top"></div>
    	<div class="content_box">
        	<div class="content_title content_ct" align="center"><h2>Classses</h2></div>
            <div class="content">
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
