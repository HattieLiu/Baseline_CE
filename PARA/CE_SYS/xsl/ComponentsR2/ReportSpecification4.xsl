<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="TransactionStatus4.xsl"/>
	<xsl:include href="BICIdentification1.xsl"/>
	<xsl:include href="PartyIdentification28.xsl"/>
	<xsl:include href="PendingActivity1.xsl"/>
	<!--  *********** point <ReportSpecification4> Start ********** -->
	<xsl:template name="ReportSpecification4">
		<xsl:param name="ReportSpecification4"/>
		<xsl:param name="ReportSpecification4_parent"/>
		<xsl:variable name="ReportSpecification4_name" select="name($ReportSpecification4)"/>
		<xsl:variable name="ReportSpecification4_pname" select="$ReportSpecification4_parent"/>
		<xsl:variable name="RptSpcfctnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$ReportSpecification4_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TxIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TxId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SubmitrTxRefDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'SubmitrTxRef'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="BuyrCtryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'BuyrCtry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="SellrCtryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'SellrCtry'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CrspdtCtryDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CrspdtCtry'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>')</xsl:attribute>
					<xsl:value-of select="$RptSpcfctnDesc"/>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:for-each select="$ReportSpecification4/TxId">
								<xsl:element name="TD">
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:value-of select="$TxIdDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_TxId</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_TxId</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$ReportSpecification4/SubmitrTxRef">
								<xsl:element name="TD">
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:value-of select="$SubmitrTxRefDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_SubmitrTxRef</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_SubmitrTxRef</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<tr>
							<xsl:for-each select="$ReportSpecification4/BuyrCtry">
								<xsl:element name="TD">
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:value-of select="$BuyrCtryDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_BuyrCtry</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_BuyrCtry</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$ReportSpecification4/SellrCtry">
								<xsl:element name="TD">
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:value-of select="$SellrCtryDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_SellrCtry</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_SellrCtry</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<tr>
							<xsl:for-each select="$ReportSpecification4/CrspdtCtry">
								<xsl:element name="TD">
									<xsl:attribute name="height">25</xsl:attribute>
									<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
									<xsl:value-of select="$CrspdtCtryDesc"/>
									<xsl:element name="INPUT">
										<xsl:attribute name="type">text</xsl:attribute>
										<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_CrspdtCtry</xsl:attribute>
										<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>_CrspdtCtry</xsl:attribute>
										<xsl:attribute name="class">CHAR_P</xsl:attribute>
										<xsl:attribute name="length">35</xsl:attribute>
										<xsl:attribute name="maxlength">35</xsl:attribute>
										<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
									</xsl:element>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:for-each select="$ReportSpecification4/TxSts">
							<xsl:variable name="TransactionStatus4" select="."/>
							<xsl:call-template name="TransactionStatus4">
								<xsl:with-param name="TransactionStatus4" select="$TransactionStatus4"/>
								<xsl:with-param name="TransactionStatus4_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification4/NttiesToBeRptd">
							<xsl:variable name="BICIdentification1" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification4/Crspdt">
							<xsl:variable name="BICIdentification1_double" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification4/SubmitgBk">
							<xsl:variable name="BICIdentification1_three" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1_three"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification4/OblgrBk">
							<xsl:variable name="BICIdentification1_four" select="."/>
							<xsl:call-template name="BICIdentification1">
								<xsl:with-param name="BICIdentification1" select="$BICIdentification1_four"/>
								<xsl:with-param name="BICIdentification1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification4/Buyr">
							<xsl:variable name="PartyIdentification28" select="."/>
							<xsl:call-template name="PartyIdentification28">
								<xsl:with-param name="PartyIdentification28" select="$PartyIdentification28"/>
								<xsl:with-param name="PartyIdentification28_parent">
									<xsl:number value="position()"/>_<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification4/Sellr">
							<xsl:variable name="PartyIdentification28_double" select="."/>
							<xsl:call-template name="PartyIdentification28">
								<xsl:with-param name="PartyIdentification28" select="$PartyIdentification28_double"/>
								<xsl:with-param name="PartyIdentification28_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification4/PdgReqForActn">
							<xsl:variable name="PendingActivity1" select="."/>
							<xsl:call-template name="PendingActivity1">
								<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
								<xsl:with-param name="PendingActivity1_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification4_pname"/>_<xsl:value-of select="$ReportSpecification4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ReportSpecification4> end ********** -->
</xsl:stylesheet>
