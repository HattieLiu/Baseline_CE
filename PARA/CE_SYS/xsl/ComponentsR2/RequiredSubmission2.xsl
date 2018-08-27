<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <RequiredSubmission2> Start ********** -->
	<xsl:template name="RequiredSubmission2">
		<xsl:param name="RequiredSubmission2"/>
		<xsl:param name="RequiredSubmission2_parent"/>
		<xsl:variable name="RequiredSubmission2_name" select="name($RequiredSubmission2)"/>
		<xsl:variable name="RequiredSubmission2_pname" select="$RequiredSubmission2_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$RequiredSubmission2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="align">left</xsl:attribute>
				<xsl:attribute name="bgcolor">#ececec</xsl:attribute>
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<a>
					<xsl:attribute name="class">Heading3</xsl:attribute>
					<xsl:attribute name="style">cursor:hand</xsl:attribute>
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RequiredSubmission2_pname"/>_<xsl:value-of select="$RequiredSubmission2_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">95%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission2_pname"/>_<xsl:value-of select="$RequiredSubmission2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<xsl:for-each select="$RequiredSubmission2/Submitr">
							<xsl:variable name="BICIdentification1" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/><xsl:value-of select="$RequiredSubmission2_pname"/>_<xsl:value-of select="$RequiredSubmission2_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <RequiredSubmission2> end ********** -->
</xsl:stylesheet>
