<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
   <xsl:template name="Select">
         <xsl:param name="Select"></xsl:param>
         <xsl:variable name="Select_name" select="name($Select)"/>
             <xsl:element name="SELECT">
                 <xsl:attribute name="name"><xsl:value-of select="$Select_name"/></xsl:attribute>
                 <xsl:attribute name="id"><xsl:value-of select="$Select_name"/></xsl:attribute>
                 <xsl:attribute name="size">1</xsl:attribute>
                 <xsl:for-each select="$Select/code">
                     <xsl:element name="option">
                         <xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute><xsl:value-of select="."/>
                     </xsl:element>
                </xsl:for-each>
             </xsl:element> 
   </xsl:template>
</xsl:stylesheet>
