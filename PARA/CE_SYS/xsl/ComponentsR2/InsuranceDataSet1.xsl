<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="PartyIdentification29Choice.xsl"/>
	<xsl:template name="InsuranceDataSet1">
		<xsl:param name="InsuranceDataSet1"/>
		<xsl:param name="InsuranceDataSet1_parent"/>
		<xsl:variable name="InsuranceDataSet1_name" select="name($InsuranceDataSet1)"/>
		<xsl:variable name="InsuranceDataSet1_pname" select="$InsuranceDataSet1_parent"/>
		<xsl:variable name="InsrncDataSetDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$InsuranceDataSet1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IsseDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'IsseDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="FctvDtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'FctvDt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InsrncDocIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InsrncDocId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InsrdAmtDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InsrdAmt'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InsrdGoodsDescDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InsrdGoodsDesc'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InsrncCondsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InsrncConds'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="InsrncClausesDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'InsrncClauses'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ClmsPyblInDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ClmsPyblIn'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>')</xsl:attribute>
					<xsl:value-of select="$InsrncDataSetDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="100%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IsseDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_IsseDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_IsseDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InsuranceDataSet1/IsseDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$FctvDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_FctvDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_FctvDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InsuranceDataSet1/FctvDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$InsrncDocIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrncDocId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrncDocId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InsuranceDataSet1/InsrncDocId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$InsrdAmtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrdAmt_CCY</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrdAmt_CCY</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">10</xsl:attribute>
									<xsl:attribute name="maxlength">10</xsl:attribute>
									<xsl:attribute name="size">3</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InsuranceDataSet1/InsrdAmt/@Ccy"/></xsl:attribute>
								</xsl:element>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrdAmt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrdAmt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InsuranceDataSet1/InsrdAmt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$InsrdGoodsDescDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrdGoodsDesc</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrdGoodsDesc</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InsuranceDataSet1/InsrdGoodsDesc"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$ClmsPyblInDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_ClmsPyblIn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_ClmsPyblIn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$InsuranceDataSet1/ClmsPyblIn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:for-each select="$InsuranceDataSet1/InsrncClauses">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$InsrncClausesDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrncClauses</xsl:attribute>
											<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrncClauses</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$InsuranceDataSet1/InsrncConds">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$InsrncCondsDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrncConds</xsl:attribute>
											<xsl:attribute name="id"><xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>_InsrncConds</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$InsuranceDataSet1/DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="DocumentIdentification1_parent">
								<xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26" select="$InsuranceDataSet1/Issr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PostalAddress5" select="$InsuranceDataSet1/PlcOfIsse"/>
						<xsl:call-template name="PostalAddress5">
							<xsl:with-param name="PostalAddress5" select="$PostalAddress5"/>
							<xsl:with-param name="PostalAddress5_parent">
								<xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="SingleTransport3" select="$InsuranceDataSet1/Trnsprt"/>
						<xsl:call-template name="SingleTransport3">
							<xsl:with-param name="SingleTransport3" select="$SingleTransport3"/>
							<xsl:with-param name="SingleTransport3_parent">
								<xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification29Choice" select="$InsuranceDataSet1/Assrd"/>
						<xsl:call-template name="PartyIdentification29Choice">
							<xsl:with-param name="PartyIdentification29Choice" select="$PartyIdentification29Choice"/>
							<xsl:with-param name="PartyIdentification29Choice_parent">
								<xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PostalAddress5_double" select="$InsuranceDataSet1/ClmsPyblAt"/>
						<xsl:call-template name="PostalAddress5">
							<xsl:with-param name="PostalAddress5" select="$PostalAddress5_double"/>
							<xsl:with-param name="PostalAddress5_parent">
								<xsl:value-of select="$InsuranceDataSet1_pname"/>_<xsl:value-of select="$InsuranceDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
