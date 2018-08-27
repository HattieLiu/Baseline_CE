<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template name="DataSetSubmissionReferences3">
		<xsl:param name="DataSetSubmissionReferences3"/>
		<xsl:param name="DataSetSubmissionReferences3_parent"/>
		<xsl:variable name="DataSetSubmissionReferences3_name" select="name($DataSetSubmissionReferences3)"/>
		<xsl:variable name="DataSetSubmissionReferences3_pname" select="$DataSetSubmissionReferences3_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$DataSetSubmissionReferences3_name"/>
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
		<xsl:variable name="ForcdMtchDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'ForcdMtch'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$TxIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/>_TxId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences3/TxId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$SubmitrTxRefDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/>_SubmitrTxRef</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/>_SubmitrTxRef</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences3/SubmitrTxRef"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:value-of select="$ForcdMtchDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/>_ForcdMtch</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/>_ForcdMtch</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$DataSetSubmissionReferences3/ForcdMtch"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<xsl:variable name="DocumentIdentification7" select="$DataSetSubmissionReferences3/PurchsOrdrRef"/>
						<xsl:call-template name="DocumentIdentification7">
							<xsl:with-param name="DocumentIdentification7" select="$DocumentIdentification7"/>
							<xsl:with-param name="DocumentIdentification7_parent">
								<xsl:value-of select="$DataSetSubmissionReferences3_pname"/>_<xsl:value-of select="$DataSetSubmissionReferences3_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
</xsl:stylesheet>
