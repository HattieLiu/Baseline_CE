<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
           <xsl:include href="DocumentIdentification5.xsl"/>
           
           <xsl:include href="ActivityDetails1.xsl"/>
           <xsl:include href="PendingActivity1.xsl"/>
<!--  *********** point <ActivityReportItems1`> start ********** -->
	<xsl:template name="ActivityReportItems1">
		<xsl:param name="ActivityReportItems1"/>
		<xsl:param name="ActivityReportItems1_parent"/>
		<xsl:param name="stmt1" select="Doc:PdgReqForActn"/>
		<xsl:variable name="ActivityReportItems1_name" select="name($ActivityReportItems1)"/>
		<xsl:variable name="ActivityReportItems1_pname" select="$ActivityReportItems1_parent"/>
		<xsl:variable name="submissnIDDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$ActivityReportItems1_name"/>
			</xsl:call-template>
		</xsl:variable>
		
	<xsl:variable name="TxIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TxId'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$ActivityReportItems1_pname"/>_<xsl:value-of select="$ActivityReportItems1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$ActivityReportItems1_pname"/>_<xsl:value-of select="$ActivityReportItems1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TxIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$ActivityReportItems1_pname"/>_<xsl:value-of select="$ActivityReportItems1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$ActivityReportItems1_pname"/>_<xsl:value-of select="$ActivityReportItems1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$ActivityReportItems1/Doc:TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification5" select="$ActivityReportItems1/Doc:UsrTxRef"/>
						<xsl:call-template name="DocumentIdentification5">
							<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
							<xsl:with-param name="DocumentIdentification5_parent">
							     <xsl:value-of select="$ActivityReportItems1_pname"/>_<xsl:value-of select="$ActivityReportItems1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="BICIdentification1" select="$ActivityReportItems1/Doc:RptdNtty"/>
						<xsl:call-template name="BICIdentification1">
							<xsl:with-param name="BICIdentification1" select="$BICIdentification1"/>
							<xsl:with-param name="BICIdentification1_parent">
							     <xsl:value-of select="$ActivityReportItems1_pname"/>_<xsl:value-of select="$ActivityReportItems1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="ActivityDetails1" select="$ActivityReportItems1/Doc:RptdItm"/>
						<xsl:call-template name="ActivityDetails1">
							<xsl:with-param name="ActivityDetails1" select="$ActivityDetails1"/>
							<xsl:with-param name="ActivityDetails1_parent">
							    <xsl:value-of select="$ActivityReportItems1_pname"/>_<xsl:value-of select="$ActivityReportItems1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:for-each select="$ActivityReportItems1/Doc:PdgReqForActn">
						<xsl:variable name="PendingActivity1" select="."/>
						<xsl:call-template name="PendingActivity1">
							<xsl:with-param name="PendingActivity1" select="$PendingActivity1"/>
							<xsl:with-param name="PendingActivity1_parent">
          							<xsl:value-of select="$ActivityReportItems1_pname"/>_<xsl:value-of select="$ActivityReportItems1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						</xsl:for-each>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <ActivityReportItems1> end ********** -->
</xsl:stylesheet>
