<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  
  	<head>
    <title>Classes</title>
	<link href="css/tooplate_style.css" rel="stylesheet"/>
	</head>
	

  <body>
    
  <h1>Classes in Wakfu</h1>
    <table border="1">
      <tr bgcolor="blue">
        <th style="text-align:left">#</th>
        <th style="text-align:left">Class</th>
        <th style="text-align:left">Main Element</th>
        <th style="text-align:left">Preferred Type</th>
        <th style="text-align:left">Power level</th>
      </tr>
      <xsl:for-each select="Classes/Class[power > 100]">
      <xsl:sort select="name"/>
	  
	  <tr>
        <td><xsl:value-of select="position()"/></td>
        <td	bgcolor="red" style="text-align:left"><xsl:value-of select="name"/></td>
		<xsl:choose>
			<xsl:when test="element='Air'">
				<td bgcolor="pink" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:when>
			<xsl:otherwise>
				<td bgcolor="yellow" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:otherwise>
		</xsl:choose>
        <td bgcolor="green" style="text-align:right"><xsl:value-of select="type"/></td>
		<td bgcolor="pink" style="text-align:center"><xsl:value-of select="power"/></td>
      </tr>
      </xsl:for-each>
    </table>
	<h3 align="center">Sym of power</h3>
	<h4 align="center"><xsl:value-of select="sum(//power)"/></h4>
	
	<h3>In genereal</h3>
	<xsl:value-of select="sum(//power) div count(//power)"/>
	
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
