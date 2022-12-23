<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Output</h2>
        <table border="1">
          <tr bgcolor="#66CCFF">
            <th>Amogus</th>
            <th>Binaries</th>
          </tr>
          <xsl:for-each select="objects/object">
            <tr>
              <td><xsl:value-of select="num"/></td>
              <td><xsl:value-of select="bin"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>