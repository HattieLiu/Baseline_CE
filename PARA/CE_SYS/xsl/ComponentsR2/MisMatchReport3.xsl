<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:include href="ValidationResult5.xsl"/>
<!--  *********** point <MisMatchReport3> Start ********** -->
	<xsl:template name="MisMatchReport3">
		<xsl:param name="MisMatchReport3"/>
		<xsl:param name="MisMatchReport3_parent"/>
		<xsl:variable name="MisMatchReport3_name" select="name($MisMatchReport3)"/>
		<xsl:variable name="MisMatchReport3_pname" select="$MisMatchReport3_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$MisMatchReport3_name"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$MisMatchReport3_pname"/>_<xsl:value-of select="$MisMatchReport3_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$MisMatchReport3_pname"/>_<xsl:value-of select="$MisMatchReport3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$NbOfMisMtchsDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$MisMatchReport3_pname"/>_<xsl:value-of select="$MisMatchReport3_name"/>_NbOfMisMtchs</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$MisMatchReport3_pname"/>_<xsl:value-of select="$MisMatchReport3_name"/>_NbOfMisMtchs</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$MisMatchReport3/NbOfMisMtchs"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$MisMatchReport3/MisMtchInf">
						<xsl:variable name="ValidationResult5" select="."/>
						<xsl:call-template name="ValidationResult5">
							<xsl:with-param name="ValidationResult5" select="$ValidationResult5"/>
							<xsl:with-param name="ValidationResult5_parent">
                                      <xsl:number value="position()"/>_<xsl:value-of select="$MisMatchReport3_pname"/>_<xsl:value-of select="$MisMatchReport3_name"/>							
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <MisMatchReport3> end ********** -->
</xsl:stylesheet>
