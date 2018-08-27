<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="DateAndPlaceOfBirth.xsl"/>
	<xsl:template name="PersonIdentification3">
		<xsl:param name="PersonIdentification3"/>
		<xsl:param name="PersonIdentification3_parent"/>
		<xsl:variable name="PersonIdentification3_name" select="name($PersonIdentification3)"/>
		<xsl:variable name="PersonIdentification3_pname" select="$PersonIdentification3_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$PersonIdentification3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="DrvrsLicNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'DrvrsLicNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CstmrNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CstmrNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SclSctyNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'SclSctyNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AlnRegnNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AlnRegnNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="PsptNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'PsptNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TaxIdNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TaxIdNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdntyCardNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'IdntyCardNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MplyrIdNbDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MplyrIdNb'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IssrDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'Issr'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$DrvrsLicNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_DrvrsLicNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_DrvrsLicNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/DrvrsLicNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CstmrNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_CstmrNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_CstmrNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/CstmrNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$SclSctyNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_SclSctyNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_SclSctyNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/SclSctyNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AlnRegnNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_AlnRegnNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_AlnRegnNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/AlnRegnNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$PsptNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_PsptNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_PsptNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/PsptNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TaxIdNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_TaxIdNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_TaxIdNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/TaxIdNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$IdntyCardNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_IdntyCardNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_IdntyCardNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/IdntyCardNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$MplyrIdNbDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_MplyrIdNb</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_MplyrIdNb</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/MplyrIdNb"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$IssrDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_Issr</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>_Issr</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$PersonIdentification3/Issr"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DateAndPlaceOfBirth" select="$PersonIdentification3/DtAndPlcOfBirth"/>
						<xsl:call-template name="DateAndPlaceOfBirth">
							<xsl:with-param name="DateAndPlaceOfBirth" select="$DateAndPlaceOfBirth"/>
							<xsl:with-param name="DateAndPlaceOfBirth_parent">
								<xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="GenericIdentification4" select="$PersonIdentification3/OthrId"/>
						<xsl:call-template name="GenericIdentification4">
							<xsl:with-param name="GenericIdentification4" select="$GenericIdentification4"/>
							<xsl:with-param name="GenericIdentification4_parent">
								<xsl:value-of select="$PersonIdentification3_pname"/>_<xsl:value-of select="$PersonIdentification3_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
