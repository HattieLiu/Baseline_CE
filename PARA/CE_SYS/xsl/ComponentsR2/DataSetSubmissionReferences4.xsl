<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="DocumentIdentification7.xsl"/>
	<xsl:include href="DocumentIdentification5.xsl"/>
	<xsl:include href="DocumentIdentification3.xsl"/>
	<xsl:template name="DataSetSubmissionReferences4">
		<xsl:param name="DataSetSubmissionReferences4"/>
		<xsl:param name="DataSetSubmissionReferences4_parent"/>
		<xsl:variable name="DataSetSubmissionReferences4_name" select="name($DataSetSubmissionReferences4)"/>
		<xsl:variable name="DataSetSubmissionReferences4_pname" select="$DataSetSubmissionReferences4_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$DataSetSubmissionReferences4_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TxIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TxId'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="ForcdMtchDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ForcdMtch'"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="TxStsDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'TxSts'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TxIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences4/TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ForcdMtchDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>_ForcdMtch</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>_ForcdMtch</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences4/ForcdMtch"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$TxStsDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>_TxSts</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>_TxSts</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences4/TxSts"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$DataSetSubmissionReferences4/PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:param name="DocumentIdentification7_parent">
								<xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>
							</xsl:param>
						</xsl:call-template>
						<xsl:for-each select="$DataSetSubmissionReferences4/UsrTxRef">
							<xsl:variable name="DocumentIdentification5" select="."/>
							<xsl:call-template name="DocumentIdentification5">
								<xsl:with-param name="DocumentIdentification5" select="$DocumentIdentification5"/>
								<xsl:with-param name="DocumentIdentification5_parent">
									<xsl:number value="position()"/>_<xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:for-each>
						<xsl:variable name="DocumentIdentification3" select="$DataSetSubmissionReferences4/EstblishdBaselnId"/>
						<xsl:call-template name="DocumentIdentification3">
							<xsl:with-param name="DocumentIdentification3" select="$DocumentIdentification3"/>
							<xsl:with-param name="DocumentIdentification3_parent">
								<xsl:value-of select="$DataSetSubmissionReferences4_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences4_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
