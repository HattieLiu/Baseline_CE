<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="ElementIdentification3.xsl"/>
	<!--  *********** point <ValidationResult3> Start ********** -->
	<xsl:template name="ValidationResult3">
		<xsl:param name="ValidationResult3"/>
		<xsl:param name="ValidationResult3_parent"/>
		<xsl:variable name="ValidationResult3_name" select="name($ValidationResult3)"/>
		<xsl:variable name="ValidationResult3_pname" select="$ValidationResult3_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ValidationResult3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SeqNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'SeqNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RuleIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'RuleId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="RuleDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'RuleDesc'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$SeqNbDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/>_SeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/>_SeqNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult3/SeqNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RuleIdDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/>_RuleId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/>_RuleId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult3/RuleId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RuleDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/>_RuleDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/>_RuleDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult3/RuleDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$ValidationResult3/Elmt">
							<xsl:variable name="ElementIdentification3" select="."/>
							<xsl:call-template name="ElementIdentification3">
								<xsl:with-param name="ElementIdentification3" select="$ElementIdentification3"/>
								<xsl:with-param name="ElementIdentification3_parent">
									<xsl:value-of select="$ValidationResult3_name"/>_<xsl:value-of select="$ValidationResult3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ValidationResult3> end ********** -->
</xsl:stylesheet>
