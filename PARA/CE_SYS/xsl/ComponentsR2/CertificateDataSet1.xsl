<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="LineItemAndPOIdentification1.xsl"/>
	<xsl:include href="CertifiedCharacteristics1Choice.xsl"/>
	<xsl:include href="DatePeriodDetails.xsl"/>
	<!--  *********** point <CertificateDataSet1> Start ********** -->
	<xsl:template name="CertificateDataSet1">
		<xsl:param name="CertificateDataSet1"/>
		<xsl:param name="CertificateDataSet1_parent"/>
		<xsl:variable name="CertificateDataSet1_name" select="name($CertificateDataSet1)"/>
		<xsl:variable name="CertificateDataSet1_pname" select="$CertificateDataSet1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$CertificateDataSet1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CertTpDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CertTp'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IsseDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'IsseDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AuthrsdInspctrIndDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AuthrsdInspctrInd'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CertIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CertId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="GoodsDescDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'GoodsDesc'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="AddtlInfDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'AddtlInf'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IsseDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_IsseDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_IsseDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertificateDataSet1/IsseDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$AuthrsdInspctrIndDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_AuthrsdInspctrInd</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_AuthrsdInspctrInd</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertificateDataSet1/AuthrsdInspctrInd"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$CertIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_CertId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_CertId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertificateDataSet1/CertId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$GoodsDescDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_GoodsDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertificateDataSet1/GoodsDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$CertTpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_CertTp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_CertTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$CertificateDataSet1/CertTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:for-each select="$CertificateDataSet1/AddtlInf">
								<xsl:element name="TD">
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:value-of select="$AddtlInfDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_AddtlInf</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>_AddtlInf</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$CertificateDataSet1/DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="DocumentIdentification1_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1" select="$CertificateDataSet1/Submitr"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BICIdentification1_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$CertificateDataSet1/LineItm">
							<xsl:variable name="LineItemAndPOIdentification1" select="."/>
							<xsl:call-template name="LineItemAndPOIdentification1">
								<xsl:with-param name="LineItemAndPOIdentification1" select="$LineItemAndPOIdentification1"/>
								<xsl:with-param name="LineItemAndPOIdentification1_parent">
									<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="CertifiedCharacteristics1Choice" select="$CertificateDataSet1/CertfdChrtcs"/>
						<xsl:call-template name="CertifiedCharacteristics1Choice">
							<xsl:with-param name="CertifiedCharacteristics1Choice" select="$CertifiedCharacteristics1Choice"/>
							<xsl:with-param name="CertifiedCharacteristics1Choice_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PostalAddress5" select="$CertificateDataSet1/PlcOfIsse"/>
						<xsl:call-template name="PostalAddress5">
							<xsl:with-param name="PostalAddress5" select="$PostalAddress5"/>
							<xsl:with-param name="PostalAddress5_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26" select="$CertificateDataSet1/Issr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="DatePeriodDetails" select="$CertificateDataSet1/InspctnDt"/>
						<xsl:call-template name="DatePeriodDetails">
							<xsl:with-param name="DatePeriodDetails" select="$DatePeriodDetails"/>
							<xsl:with-param name="DatePeriodDetails_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="SingleTransport3" select="$CertificateDataSet1/Trnsprt"/>
						<xsl:call-template name="SingleTransport3">
							<xsl:with-param name="SingleTransport3" select="$SingleTransport3"/>
							<xsl:with-param name="SingleTransport3_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_double" select="$CertificateDataSet1/Consgnr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_double"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_three" select="$CertificateDataSet1/Consgn"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_three"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26_four" select="$CertificateDataSet1/Manfctr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26_four"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$CertificateDataSet1_pname"/>_<xsl:value-of select="$CertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <CertificateDataSet1> end ********** -->
</xsl:stylesheet>
