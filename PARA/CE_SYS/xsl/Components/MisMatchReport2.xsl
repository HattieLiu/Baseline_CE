<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
  <xsl:include href="ValidationResult4.xsl"/>
<!--  *********** point <MisMatchReport2> Start ********** -->
	<xsl:template name="MisMatchReport2">
		<xsl:param name="MisMatchReport2"/>
		<xsl:param name="stmt" select="Doc:MisMtchInf"/>
		<xsl:variable name="MisMatchReport2_name" select="name($MisMatchReport2)"/>
		
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$MisMatchReport2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="NbOfMisMtchsDesc">
		<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'NbOfMisMtchs'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MisMatchReport2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$MisMatchReport2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$NbOfMisMtchsDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MisMatchReport2_name"/>_NbOfMisMtchs</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MisMatchReport2_name"/>_NbOfMisMtchs</xsl:attribute>
									<xsl:attribute name="class">W_2</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MisMatchReport2/Doc:NbOfMisMtchs"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$MisMatchReport2/Doc:MisMtchInf">
						<xsl:variable name="ValidationResult4" select="."/>
						<xsl:call-template name="ValidationResult4">
							<xsl:with-param name="ValidationResult4" select="$ValidationResult4"/>
							<xsl:with-param name="ValidationResult4_parent">
                                      <xsl:number value="position()"/>_<xsl:value-of select="$stmt"/>							
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <MisMatchReport2> end ********** -->
</xsl:stylesheet>