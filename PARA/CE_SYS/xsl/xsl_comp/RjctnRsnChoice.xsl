<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="GblRjctnRsn.xsl"/>
   <xsl:include href="RjctdElmt.xsl"/>
	<xsl:template name="RjctnRsnChoice">
		<xsl:param name="RjctnRsnChoice"/>
		<xsl:param name="RjctnRsn_FullName"/>
		<xsl:variable name="RjctnRsnChoice_name" select="name($RjctnRsnChoice)"/>
		<xsl:variable name="RjctnRsn_FullName_fox" select="$RjctnRsn_FullName"/>
		<xsl:variable name="RjctnRsnDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$RjctnRsnChoice_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">4</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RjctnRsn_FullName_fox"/>_<xsl:value-of select="$RjctnRsnChoice_name"/>')</xsl:attribute>
					<xsl:value-of select="$RjctnRsnDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">4</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$RjctnRsn_FullName_fox"/>_<xsl:value-of select="$RjctnRsnChoice_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<xsl:attribute name="ck">N</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:variable name="GblRjctnRsn" select="$RjctnRsnChoice/Doc:GblRjctnRsn"/>
						<xsl:call-template name="GblRjctnRsn">
							<xsl:with-param name="GblRjctnRsn" select="$GblRjctnRsn"/>
							<xsl:with-param name="GblRjctnRsn_FullName">
								<xsl:value-of select="$RjctnRsn_FullName_fox"/>_<xsl:value-of select="$RjctnRsnChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="RjctdElmt" select="$RjctnRsnChoice/Doc:RjctdElmt"/>
						<xsl:call-template name="RjctdElmt">
							<xsl:with-param name="RjctdElmt" select="$RjctdElmt"/>
							<xsl:with-param name="RjctdElmt_FullName">
								<xsl:value-of select="$RjctnRsn_FullName_fox"/>_<xsl:value-of select="$RjctnRsnChoice_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
