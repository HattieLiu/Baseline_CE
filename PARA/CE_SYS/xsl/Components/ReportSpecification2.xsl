<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">

<!--  *********** point <ReportSpecification2> Start ********** -->
	<xsl:template name="ReportSpecification2">
		<xsl:param name="ReportSpecification2"/>
		<xsl:param name="ReportSpecification2_parent"/>
		<xsl:variable name="ReportSpecification2_name" select="name($ReportSpecification2)"/>
		<xsl:variable name="ReportSpecification2_pname" select="$ReportSpecification2_parent"/>
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ReportSpecification2_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="IdentificationDesc">
		<xsl:call-template name="getFldDesc">
			<xsl:with-param name="FldId" select="'Doc:Id'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
						    <xsl:for-each select="$ReportSpecification2/Doc:TxId">
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Transaction Identification:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:for-each select="$ReportSpecification2/Doc:TxSts">
						<xsl:variable name="TransactionStatus1" select="."/>
						<xsl:call-template name="TransactionStatus1">
							<xsl:with-param name="TransactionStatus1" select="$TransactionStatus1"/>
							<xsl:with-param name="TransactionStatus1_parent">
							     <xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<tr>
						    <xsl:for-each select="$ReportSpecification2/Doc:SubmitrTxRef">
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="nowrap">true</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Submitter Transaction Reference:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_SubmitrTxRef</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_SubmitrTxRef</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
						</tr> 
						<xsl:for-each select="$ReportSpecification2/Doc:NttiesToBeRptd">
						<xsl:variable name="BICIdentification1" select="."/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BICIdentification1_parent">
                                	<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>						
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification2/Doc:Crspdt">
						<xsl:variable name="BICIdentification1_double" select="."/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1_double"/>
							<xsl:with-param name="BICIdentification1_parent">
                                	<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>						
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification2/Doc:Buyr">
						<xsl:variable name="PartyIdentification5" select="."/>
						<xsl:call-template name="PartyIdentification5">
							<xsl:with-param name="PartyIdentification5" select="$PartyIdentification5"/>
							<xsl:with-param name="PartyIdentification5_parent">
							   <xsl:number value="position()"/>_<xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						<xsl:for-each select="$ReportSpecification2/Doc:Sellr">
						<xsl:variable name="PartyIdentification5_double" select="."/>
						<xsl:call-template name="PartyIdentification5">
							<xsl:with-param name="PartyIdentification5" select="$PartyIdentification5_double"/>
							   <xsl:with-param name="PartyIdentification5_parent">
							   <xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
						
						<tr>
						    <xsl:for-each select="$ReportSpecification2/Doc:BuyrCtry">
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Buyer Country:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_BuyrCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_BuyrCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$ReportSpecification2/Doc:SellrCtry">
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Seller Country:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_SellrCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_SellrCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
							<xsl:for-each select="$ReportSpecification2/Doc:CrspdtCtry">
							<xsl:element name="TD">
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:text>Correspondent Country:</xsl:text>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_CrspdtCtry</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>_CrspdtCtry</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:for-each select="$ReportSpecification2/Doc:PdgReqForActn">
						<xsl:variable name="PendingActivity1" select="."/>
						<xsl:call-template name="PendingActivity1">
							<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
							<xsl:with-param name="PendingActivity1_parent">
							   <xsl:number value="position()"/>_<xsl:value-of select="$ReportSpecification2_pname"/>_<xsl:value-of select="$ReportSpecification2_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ReportSpecification2> end ********** -->
	</xsl:stylesheet>