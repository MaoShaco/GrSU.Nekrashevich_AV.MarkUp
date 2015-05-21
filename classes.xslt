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
      <tr bgcolor="Gold">
        <th style="text-align:left">#</th>
        <th style="text-align:left">Class</th>
        <th style="text-align:left">Main Element</th>
        <th style="text-align:left">Preferred Type</th>
        <th style="text-align:left">Power level</th>
      </tr>
      <xsl:for-each select="Classes/Class">
      <xsl:sort select="element"/>
      <xsl:if test="power &lt; 120">
	  
	  <tr>
        <td bgcolor="cyan"><xsl:value-of select="position()"/></td>
        <td	bgcolor="orange" style="text-align:left"><xsl:value-of select="name"/></td>
		<xsl:choose>
			<xsl:when test="element='Air'">
				<td bgcolor="pink" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:when>
      <xsl:when test="element='Fire'">
				<td bgcolor="red" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:when>
            <xsl:when test="element='Water'">
				<td bgcolor="blue" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:when>
      <xsl:when test="element='Earth'">
				<td bgcolor="green" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:when>
			<xsl:otherwise>
				<td bgcolor="yellow" style="text-align:center"><xsl:value-of select="element"/></td>
			</xsl:otherwise>
		</xsl:choose>
        <td bgcolor="purple" style="text-align:right"><xsl:value-of select="type"/></td>
		<td bgcolor="pink" style="text-align:center"><xsl:value-of select="power"/></td>
      </tr>
      </xsl:if>
      </xsl:for-each>
    </table>
	<h3 style="color:chocolate" align="center">Sym of power</h3>
	<h4 style="color:chocolate" align="center"><xsl:value-of select="sum(//power)"/></h4>
	
	<h3 style="color:chocolate" align="center" >In general <xsl:value-of select="sum(//power) div count(//power)"/> </h3>
	
	
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
