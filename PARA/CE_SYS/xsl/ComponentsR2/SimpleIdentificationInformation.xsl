<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="SimpleIdentificationInformation">
		<xsl:param name="SimpleIdentificationInformation"/>
		<xsl:param name="SimpleIdentificationInformation_parent"/>
		<xsl:variable name="SimpleIdentificationInformation_name" select="name($SimpleIdentificationInformation)"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$SimpleIdentificationInformation_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Id'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$SimpleIdentificationInformation_parent"/>_<xsl:value-of select="$SimpleIdentificationInformation_name"/>')</xsl:attribute>
					<xsl:value-of select="$fldDesc"/>
				</a>
			</xsl:element>
		</tr>
		<tr>
			<xsl:element name="TD">
				<xsl:attribute name="colspan">1000</xsl:attribute>
				<xsl:attribute name="width">100%</xsl:attribute>
				<xsl:attribute name="align">right</xsl:attribute>
				<xsl:text>     </xsl:text>
				<xsl:element name="DIV">
					<xsl:attribute name="id"><xsl:value-of select="$SimpleIdentificationInformation_parent"/>_<xsl:value-of select="$SimpleIdentificationInformation_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:100%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IdentificationDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$SimpleIdentificationInformation_parent"/>_<xsl:value-of select="$SimpleIdentificationInformation_name"/>_ID</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$SimpleIdentificationInformation_parent"/>_<xsl:value-of select="$SimpleIdentificationInformation_name"/>_ID</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">40</xsl:attribute>
									<xsl:attribute name="maxlength">40</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$SimpleIdentificationInformation/Id"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
