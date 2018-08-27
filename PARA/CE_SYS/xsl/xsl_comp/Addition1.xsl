<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <Addition1> start ********** -->
	<xsl:template name="Addition1">
		<xsl:param name="Addition1"/>
		<xsl:variable name="Addition1_name" select="name($Addition1)"/>
		
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$Addition1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PropsdValDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PropsdVal'"/>
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
					<xsl:attribute name="onClick">Swap('_<xsl:value-of select="$Addition1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id">_<xsl:value-of select="$Addition1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right" id="Doc:Idt">
					<xsl:for-each select="$Addition1/Doc:Btrt">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								Proposed Value:
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$Addition1_name"/>_Btrt</xsl:attribute>
									<xsl:attribute name="id">Proposed Value</xsl:attribute>
									<xsl:attribute name="class">CHAR_M</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$Addition1/Doc:Btrt"/></xsl:attribute>
									<xsl:attribute name="tsu">N</xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <Addition1> end ********** -->
</xsl:stylesheet>
