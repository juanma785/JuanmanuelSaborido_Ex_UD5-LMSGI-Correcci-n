<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
        <h3>Nombre y apellidos: Juan Manuel Saborido Baena</h3>
      <head>
        <title>Biblioteca</title>
      </head>
      <body>
        <table border="1">
          <tr>
            <th>Título</th>
            <th>Autores</th>
            <th>Editores</th>
          </tr>
          <xsl:apply-templates select="bib/libro">
            <xsl:sort select="titulo"/>
          </xsl:apply-templates>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="libro">
    <tr>
      <td>
        <xsl:choose>
          <xsl:when test="precio &gt; 100">
            <font color="red">
              <xsl:value-of select="concat(titulo, ' (Caro)')"/>
            </font>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="titulo"/>
          </xsl:otherwise>
        </xsl:choose>
      </td>

      


      <td>
        <xsl:for-each select="autor">
          <xsl:value-of select="concat(nombre, ' ', apellido)"/>
          <xsl:if test="position() != last()">
            <xsl:text>, </xsl:text>
          </xsl:if>
        </xsl:for-each>
      </td>





      <td>
        <xsl:for-each select="editor">
          <xsl:value-of select="concat(nombre, ' ', apellido, ' ', afiliacion)"/>
          <xsl:if test="position() != last()">
            <xsl:text>, </xsl:text>
          </xsl:if>
        </xsl:for-each>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>