<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--python3 -m http.server 4040-->

    
    <xsl:template match="/">
  <html>
  <body>
    <h1>Museum Archives</h1>
    <table border="1">
      <tr>
        <th>Nature of the Item</th>
        <th>Authir</th>
        <th>Location</th>
        <th>History</th>
          <th>Description</th>
           <th>Information</th>
             <th>Price</th>
          <th>Image</th>
      </tr>
<!--        <xsl:if test="price &gt; 15"></xsl:if>-->
<!--        <xsl:when item="price &gt; 5"></xsl:when>-->
            <xsl:value-of select="item[@price='1'] + 10"/>
      <xsl:for-each select="archive/item">
        <tr>           
          <td bgcolor="#9acd32"><xsl:value-of select="nature"/></td>
          <td><xsl:value-of select="author"/></td>
          <td><xsl:value-of select="location"/></td>
          <td><xsl:value-of select="history"/></td>
        <td><xsl:value-of select="description"/></td>
        <td><xsl:value-of select="itemMetadata"/></td>
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="image"/></td>


<!--            <xsl:template match="name[@language!='english']>-->

<!--
<xsl:template match="author">
  <td><xsl:value-of select="count(./image)"/></td>
  <td>
    <a href=""><xsl:value-of select="author[@type='jpg'][position() = last()]"/></a>
  </td>
</xsl:template>
-->

        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>