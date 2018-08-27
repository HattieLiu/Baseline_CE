<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <RequiredSubmission4> Start ********** -->
	<xsl:template name="RequiredSubmission4">
		<xsl:param name="RequiredSubmission4"/>
		<xsl:param name="RequiredSubmission4_parent"/>
		<xsl:variable name="RequiredSubmission4_name" select="name($RequiredSubmission4)"/>
		<xsl:variable name="RequiredSubmission4_pname" select="$RequiredSubmission4_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$RequiredSubmission4_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CertTpDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CertTp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MtchIsseDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MtchIsseDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MtchInspctnDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MtchInspctnDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="LineItmIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'LineItmId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AuthrsdInspctrIndDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AuthrsdInspctrInd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="MtchConsgnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'MtchConsgn'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$CertTpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_CertTp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_CertTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission4/CertTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$MtchIsseDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_MtchIsseDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_MtchIsseDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission4/MtchIsseDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$MtchInspctnDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_MtchInspctnDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_MtchInspctnDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission4/MtchInspctnDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$AuthrsdInspctrIndDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_AuthrsdInspctrInd</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_AuthrsdInspctrInd</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission4/AuthrsdInspctrInd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$MtchConsgnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_MtchConsgn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_MtchConsgn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$RequiredSubmission4/MtchConsgn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:for-each select="$RequiredSubmission4/LineItmId">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$LineItmIdDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:number value="position"/>_<xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_LineItmId</xsl:attribute>
											<xsl:attribute name="id"><xsl:number value="position"/>_<xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>_LineItmId</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:for-each select="$RequiredSubmission4/Submitr">
							<xsl:variable name="BICIdentification1" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="PartyIdentification27" select="$RequiredSubmission4/MtchIssr"/>
						<xsl:call-template name="PartyIdentification27">
							<xsl:with-param name="PartyIdentification27" select="$PartyIdentification27"/>
							<xsl:with-param name="PartyIdentification27_parent">
								<xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification27_double" select="$RequiredSubmission4/MtchManfctr"/>
						<xsl:call-template name="PartyIdentification27">
							<xsl:with-param name="PartyIdentification27" select="$PartyIdentification27_double"/>
							<xsl:with-param name="PartyIdentification27_parent">
								<xsl:value-of select="$RequiredSubmission4_pname"/>_<xsl:value-of select="$RequiredSubmission4_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <RequiredSubmission4> end ********** -->
</xsl:stylesheet>
