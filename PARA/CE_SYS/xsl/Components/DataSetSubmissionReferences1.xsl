<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:Doc="urn:com.cs.tsu">
   <xsl:include href="DocumentIdentification5.xsl"/>
<!--  *********** point <DataSetSubmissionReferences1> Start ********** -->
	<xsl:template name="DataSetSubmissionReferences1">
		<xsl:param name="DataSetSubmissionReferences1"/>
		<xsl:param name="DataSetSubmissionReferences1_parent"/>
		<xsl:variable name="DataSetSubmissionReferences1_name" select="name($DataSetSubmissionReferences1)"/>
		<xsl:variable name="DataSetSubmissionReferences1_pname" select="$DataSetSubmissionReferences1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc">
				<xsl:with-param name="FldId" select="$DataSetSubmissionReferences1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TxIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TxId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="FnlSubmissnDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'FnlSubmissn'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DataSetSubmissionReferences1_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences1_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TxIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences1_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences1_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences1_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences1/Doc:TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$FnlSubmissnDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences1_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences1_name"/>_FnlSubmissn</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences1_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences1_name"/>_FnlSubmissn</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences1/Doc:FnlSubmissn"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification5" select="$DataSetSubmissionReferences1/Doc:SubmitrTxRef"/>
						<xsl:call-template name="DocumentIdentification5">
							<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
							<xsl:with-param name="DocumentIdentification5_parent">
           							<xsl:value-of select="$DataSetSubmissionReferences1_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <DataSetSubmissionReferences1> end ********** -->
</xsl:stylesheet>
