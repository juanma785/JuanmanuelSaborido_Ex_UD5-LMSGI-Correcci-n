<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>

    <h3>Nombre y apellidos: Juan Manuel Saborido Baena</h3>
    <body>
      <h1>Lista de libros</h1>
      <table border="1">
        <tr>
          <th>Precio</th>
          <th>Título</th>
          <th>Año de publicación</th>
        </tr>
        <xsl:apply-templates select="bib/libro">
          <xsl:sort select="precio"/>
        </xsl:apply-templates>
      </table>
    </body>
  </html>
</xsl:template>

<xsl:template match="libro">
  <tr>
    <td>
      <xsl:value-of select="precio"/>
    </td>
    <td>
      <xsl:if test="precio &gt; 100">
        <span style="background-color:red">
          <xsl:value-of select="titulo"/>
        </span>
      </xsl:if>
      <xsl:if test="precio &lt;= 100">
        <xsl:value-of select="titulo"/>
      </xsl:if>
    </td>
    <td>
      <i>
        <xsl:value-of select="@año"/>
      </i>
    </td>
  </tr>
</xsl:template>

</xsl:stylesheet>