<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:include href="ElementIdentification1.xsl"/>
<!--  *********** point <ValidationResult5> Start ********** -->
	<xsl:template name="ValidationResult5">
		<xsl:param name="ValidationResult5"/>
		<xsl:param name="ValidationResult5_parent"/>
		<xsl:param name="stmt" select="MisMtchInf"/>
		<xsl:variable name="ValidationResult5_name" select="name($ValidationResult5)"/>
		<xsl:variable name="ValidationResult5_pname" select="$ValidationResult5_parent"/>
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ValidationResult5_name"/>
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
		<xsl:variable name="RuleDescDesc">
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/>')</xsl:attribute>
					<xsl:value-of select="$submissnIDDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$SeqNbDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/>_SeqNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/>_SeqNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult5/SeqNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RuleIdDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/>_RuleId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/>_RuleId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult5/RuleId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$RuleDescDesc"/>
								<xsl:attribute name="align">left</xsl:attribute>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/>_RuleDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/>_RuleDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">20</xsl:attribute>
									<xsl:attribute name="maxlength">20</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ValidationResult5/RuleDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr> 
						<xsl:for-each select="$ValidationResult5/MisMtchdElmt">
						<xsl:variable name="ElementIdentification1" select="."/>
						<xsl:call-template name="ElementIdentification1">
							<xsl:with-param name="ElementIdentification1" select="$ElementIdentification1"/>
							<xsl:with-param name="ElementIdentification1_parent">
											<xsl:number value="position()"/>_<xsl:value-of select="$ValidationResult5_pname"/>_<xsl:value-of select="$ValidationResult5_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ValidationResult5> end ********** -->
</xsl:stylesheet>
