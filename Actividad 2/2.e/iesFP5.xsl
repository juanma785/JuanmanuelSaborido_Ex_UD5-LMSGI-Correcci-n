<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  
  <xsl:template match="/">
    <html>
    
        <h3>Nombre y apellidos: Juan Manuel Saborido Baena</h3>
      
      <body>

        <h1>IES Nuestra Señora de los Remedios</h1>

        <table border="1">
          <tr>
            <th>Ciclo</th>
            <th>Grado</th>
            <th>Año</th>
          </tr>

          
          <xsl:for-each select="/ies/ciclos/ciclo">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="grado"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="decretoTitulo/@año > 2009">
                    <font color="green"><xsl:value-of select="decretoTitulo/@año"/></font>
                  </xsl:when>
                  <xsl:when test="decretoTitulo/@año = 2009">
                    <font color="blue"><xsl:value-of select="decretoTitulo/@año"/></font>
                  </xsl:when>
                  <xsl:otherwise>
                    <font color="red"><xsl:value-of select="decretoTitulo/@año"/></font>
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>