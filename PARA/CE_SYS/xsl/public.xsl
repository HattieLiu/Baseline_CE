<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:template name="getFldDesc">
	<xsl:param name="FldId"/>

		<xsl:variable name="FldId1" select="substring($FldId,5)"/>
		<xsl:variable name="Fldx" select="document('TSUDic.xml')//Field[@Name=$FldId1]"/>
		<xsl:choose>
			<xsl:when test="count($Fldx)&gt;0">		
				<xsl:value-of select="$Fldx/@Desc"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$FldId1"/>
			</xsl:otherwise>
		</xsl:choose>
</xsl:template>

<xsl:template name="getFldDesc1">
	<xsl:param name="FldId"/>

		<xsl:variable name="Fldx" select="document('TSUDic.xml')//Field[@Name=$FldId]"/>
		<xsl:choose>
			<xsl:when test="count($Fldx)&gt;0">		
				<xsl:value-of select="$Fldx/@Desc"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$FldId"/>
			</xsl:otherwise>
		</xsl:choose>
</xsl:template>

</xsl:stylesheet>
