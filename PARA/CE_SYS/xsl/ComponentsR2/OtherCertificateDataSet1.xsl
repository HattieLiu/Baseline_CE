<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<!--  *********** point <OtherCertificateDataSet1> Start ********** -->
	<xsl:template name="OtherCertificateDataSet1">
		<xsl:param name="OtherCertificateDataSet1"/>
		<xsl:param name="OtherCertificateDataSet1_parent"/>
		<xsl:variable name="OtherCertificateDataSet1_name" select="name($OtherCertificateDataSet1)"/>
		<xsl:variable name="OtherCertificateDataSet1_pname" select="$OtherCertificateDataSet1_parent"/>
		<xsl:variable name="fldDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="$OtherCertificateDataSet1_name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="CertIdDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CertId'"/>
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
		<xsl:variable name="CertInfDesc">
			<xsl:call-template name="getFldDesc1">
				<xsl:with-param name="FldId" select="'CertInf'"/>
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
					<xsl:attribute name="onClick">Swap('<xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>')</xsl:attribute>
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
					<xsl:attribute name="id"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/></xsl:attribute>
					<xsl:attribute name="style">DISPLAY:none;overflow: hidden; border: 0px none #000000;width:95%;</xsl:attribute>
					<table width="95%" border="0" cellpadding="0" cellspacing="0" align="right">
						<tr>
							<td/>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$CertIdDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>_CertId</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>_CertId</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OtherCertificateDataSet1/CertId"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$CertTpDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>_CertTp</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>_CertTp</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OtherCertificateDataSet1/CertTp"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
						</tr>
						<tr>
							<xsl:element name="TD">
								<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
								<xsl:attribute name="height">25</xsl:attribute>
								<xsl:value-of select="$IsseDtDesc"/>
								<xsl:element name="INPUT">
									<xsl:attribute name="type">text</xsl:attribute>
									<xsl:attribute name="name"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>_IsseDt</xsl:attribute>
									<xsl:attribute name="id"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>_IsseDt</xsl:attribute>
									<xsl:attribute name="class">CHAR_P</xsl:attribute>
									<xsl:attribute name="length">35</xsl:attribute>
									<xsl:attribute name="maxlength">35</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="$OtherCertificateDataSet1/IsseDt"/></xsl:attribute>
								</xsl:element>
							</xsl:element>
							<xsl:for-each select="$OtherCertificateDataSet1/CertInf">
								<xsl:element name="TD">
									<tr>
										<xsl:attribute name="style">width:30%;FONT-FAMILY: Verdana, Arial;FONT-SIZE: 11px;</xsl:attribute>
										<xsl:attribute name="height">25</xsl:attribute>
										<xsl:value-of select="$CertInfDesc"/>
										<xsl:element name="INPUT">
											<xsl:attribute name="type">text</xsl:attribute>
											<xsl:attribute name="name"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>_CertInf</xsl:attribute>
											<xsl:attribute name="id"><xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>_CertInf</xsl:attribute>
											<xsl:attribute name="class">CHAR_P</xsl:attribute>
											<xsl:attribute name="length">35</xsl:attribute>
											<xsl:attribute name="maxlength">35</xsl:attribute>
											<xsl:attribute name="value"><xsl:value-of select="."/></xsl:attribute>
										</xsl:element>
									</tr>
								</xsl:element>
							</xsl:for-each>
						</tr>
						<xsl:variable name="DocumentIdentification1" select="$OtherCertificateDataSet1/DataSetId"/>
						<xsl:call-template name="DocumentIdentification1">
							<xsl:with-param name="DocumentIdentification1" select="$DocumentIdentification1"/>
							<xsl:with-param name="DocumentIdentification1_parent">
								<xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
						<xsl:variable name="PartyIdentification26" select="$OtherCertificateDataSet1/Issr"/>
						<xsl:call-template name="PartyIdentification26">
							<xsl:with-param name="PartyIdentification26" select="$PartyIdentification26"/>
							<xsl:with-param name="PartyIdentification26_parent">
								<xsl:value-of select="$OtherCertificateDataSet1_pname"/>_<xsl:value-of select="$OtherCertificateDataSet1_name"/>
							</xsl:with-param>
						</xsl:call-template>
					</table>
				</xsl:element>
			</xsl:element>
		</tr>
	</xsl:template>
	<!--  *********** point <OtherCertificateDataSet1> end ********** -->
</xsl:stylesheet>
