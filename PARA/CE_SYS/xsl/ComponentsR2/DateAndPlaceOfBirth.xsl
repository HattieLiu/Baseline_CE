<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="DateAndPlaceOfBirth">
		<xsl:param name="DateAndPlaceOfBirth"/>
		<xsl:param name="DateAndPlaceOfBirth_parent"/>
		<xsl:variable name="DateAndPlaceOfBirth_name" select="name($DateAndPlaceOfBirth)"/>
		<xsl:variable name="DateAndPlaceOfBirth_pname" select="$DateAndPlaceOfBirth_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$DateAndPlaceOfBirth_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BirthDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BirthDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PrvcOfBirthDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PrvcOfBirth'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CityOfBirthDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CityOfBirth'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CtryOfBirthDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CtryOfBirth'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$BirthDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>_BirthDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>_BirthDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DateAndPlaceOfBirth/BirthDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PrvcOfBirthDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>_PrvcOfBirth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>_PrvcOfBirth</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DateAndPlaceOfBirth/PrvcOfBirth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CityOfBirthDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>_CityOfBirth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>_CityOfBirth</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DateAndPlaceOfBirth/CityOfBirth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CtryOfBirthDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>_CtryOfBirth</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DateAndPlaceOfBirth_pname"/>_<xsl:value-of select="$DateAndPlaceOfBirth_name"/>_CtryOfBirth</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DateAndPlaceOfBirth/CtryOfBirth"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
