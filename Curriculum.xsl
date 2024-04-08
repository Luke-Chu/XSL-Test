<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/curriculum">
        <html>
            <body>
                <h2>我的课程表</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th align="left">课程名称</th>
                        <th align="left">任课教师</th>
                    </tr>
                    <xsl:for-each select="curriculum/class">
                        <tr>
                            <td>
                                <xsl:value-of select="name" />
                            </td>
                            <td>
                                <xsl:value-of select="teacher" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>