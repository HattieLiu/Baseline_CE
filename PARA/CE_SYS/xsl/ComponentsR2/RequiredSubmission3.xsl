<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <RequiredSubmission3> Start ********** -->
	<xsl:template name="RequiredSubmission3">
		<xsl:param name="RequiredSubmission3"/>
		<xsl:param name="RequiredSubmission3_parent"/>
		<xsl:variable name="RequiredSubmission3_name" select="name($RequiredSubmission3)"/>
		<xsl:variable name="RequiredSubmission3_pname" select="$RequiredSubmission3_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$RequiredSubmission3_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MtchIsseDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MtchIsseDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MtchTrnsprtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MtchTrnsprt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MtchAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MtchAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ClausesReqrdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ClausesReqrd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MtchAssrdPtyDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MtchAssrdPty'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$MtchIsseDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_MtchIsseDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_MtchIsseDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission3/MtchIsseDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:70%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$MtchTrnsprtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_MtchTrnsprt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_MtchTrnsprt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission3/MtchTrnsprt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$MtchAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_MtchAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_MtchAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission3/MtchAmt"/></xsl:attribute>
								</xsl:element>
								<xsl:attribute name="colspan">1000</xsl:attribute>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$MtchAssrdPtyDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_MtchAssrdPty</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_MtchAssrdPty</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission3/MtchAssrdPty"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:for-each select="$RequiredSubmission3/ClausesReqrd">
							<tr>
								<xsl:element name="TD">
									<xsl:attribute name="style">width:70%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$ClausesReqrdDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_ClausesReqrd</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>_ClausesReqrd</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission3/ClausesReqrd"/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</tr>
						</xsl:for-each>
						<xsl:for-each select="$RequiredSubmission3/Submitr">
							<xsl:variable name="BICIdentification1" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="PartyIdentification27" select="$RequiredSubmission3/MtchIssr"/>
						<xsl:call-template name="PartyIdentification27">
							<xsl:with-param name="PartyIdentification27" select="$PartyIdentification27"/>
							<xsl:with-param name="PartyIdentification27_parent">
								<xsl:value-of select="$RequiredSubmission3_pname"/>_<xsl:value-of select="$RequiredSubmission3_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <RequiredSubmission3> end ********** -->
</xsl:stylesheet>
