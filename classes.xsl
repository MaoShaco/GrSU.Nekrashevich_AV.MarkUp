<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  
	<head>
    <title>Classes</title>
    <link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/Load.js">
    </script>

  </head>
  <body>
    <span id="top"></span>
    <div align="center" id="ankama_body_main">
      <div id="ankama_main">
        <div id="ankama_header">
          <div id="site_title">
            <h1>
              <a href="#">Blue</a>
            </h1>
          </div>
          <div id="ankama_menu">
            <script>loadXmlMenu()</script>
          </div>
        </div>
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
	  <xsl:for-each select="Classes/Class[@power &gt; 120]">
	  
      <xsl:sort select="@power"/>
	  
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
		<td bgcolor="pink"><xsl:value-of select="@power"/></td>
      </tr>
      </xsl:for-each>
    </table>
	
	<h3 style="color:chocolate" align="center">
	<xsl:value-of select="count(Classes/Class[@power &gt; 120])"/></h3>
	</div> 
	</div> 
</div> 
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
