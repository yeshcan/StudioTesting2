<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/1999/XSL/Tranform"
	xmlns:functx="https://www.functx.com/" xmlns:wd="urn:com.workday.report/Rahul_Test_Sec_1">
	<xsl:output method="xml" />
	<xsl:template match="wd:Report_Data">
		<root>
		<xsl:for-each select="wd:Report_Entry">
				<xsl:for-each select="wd:Instance_Sets_group">
				<row>
					<Domain>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="../wd:Domain/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Domain>
					<Functional_Areas>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="../wd:Functional_Areas/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Functional_Areas>
					<Security_Content>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="wd:Instance_Set/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Security_Content>
					</row>
				</xsl:for-each>
				
				<xsl:for-each select="wd:Reports_and_Tasks_group">
				<row>
					<Domain>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="../wd:Domain/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Domain>
					<Functional_Areas>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="../wd:Functional_Areas/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Functional_Areas>
					<Security_Content>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="wd:UI_Task/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Security_Content>
			</row>
			</xsl:for-each>
			<xsl:for-each select="wd:Report_Fields_group">
				<row>
					<Domain>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="../wd:Domain/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Domain>
					<Functional_Areas>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="../wd:Functional_Areas/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Functional_Areas>
					<Security_Content>
					<xsl:text>"</xsl:text>
						<xsl:value-of select="wd:field/@wd:Descriptor"/>
						<xsl:text>"</xsl:text>
					</Security_Content>
					</row>
			</xsl:for-each>
			</xsl:for-each>
		</root>
	</xsl:template>
</xsl:stylesheet>