USE InsuranceLettersAp
SELECT @@servername 'Servidor', db_name(dbid) 'Base de Datos' from master..sysprocesses where spid = @@spid
GO

SELECT getdate() as 'Fecha hora Inicial'
GO

SELECT '--------------Before--------------'
SELECT COUNT(*) FROM [dbo].[application]
SELECT '--------------Before--------------'
GO

BEGIN TRAN


SET IDENTITY_INSERT [dbo].[application] ON 

INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (1, N'mwi_SGP', N'MWI Singapore', N'<i class="fas fa-shopping-bag"></i> MWI Singapore', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (2, N'mwi_HKG', N'MWI Hong Kong', N'<i class="fas fa-shopping-bag"></i> MWI Hong Kong', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (3, N'mwi_THA', N'MWI Thailand', N'<i class="fas fa-shopping-bag"></i> MWI Thailand', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (4, N'mwi_MAC', N'MWI Macao', N'<i class="fas fa-shopping-bag"></i> MWI Macao', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (5, N'mwi_KOR', N'MWI Korea', N'<i class="fas fa-shopping-bag"></i> MWI Korea', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (6, N'mwi_TWN', N'MWI Taiwan', N'<i class="fas fa-shopping-bag"></i> MWI Taiwan', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (7, N'mwi_AUS', N'MWI Australia', N'<i class="fas fa-shopping-bag"></i> MWI Australia', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (8, N'mwi_NZL', N'MWI New Zealand', N'<i class="fas fa-shopping-bag"></i> MWI New Zealand', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (9, N'mwi_PHL', N'MWI Philippines', N'<i class="fas fa-shopping-bag"></i> MWI Philippines', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (10, N'mwi_VNM', N'MWI Vietnam', N'<i class="fas fa-shopping-bag"></i> MWI Vietnam', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (11, N'mwi_MYS', N'MWI Malaysia', N'<i class="fas fa-shopping-bag"></i> MWI Malaysia', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (12, N'mwi_CHN', N'MWI China', N'<i class="fas fa-shopping-bag"></i> MWI China', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (13, N'mwi_IDN', N'MWI Indonesia', N'<i class="fas fa-shopping-bag"></i> MWI Indonesia', N'{

}', N'[
    {
        name: "bundle",
        path: "$.input.fields[?(@.name== ''Bundle'')].values[0].value"
    },
    {
        name: "bin",
        path: "$.input.fields[?(@.name== ''Bin'')].values[0].value"
    },
    {
        name: "firstname",
        path: "$.input.fields[?(@.name== ''FirstName'')].values[0].value"
    },
    {
        name: "lastname",
        path: "$.input.fields[?(@.name== ''LastName'')].values[0].value"
    },
    {
        name: "email",
        path: "$.input.fields[?(@.name== ''Email'')].values[0].value"
    },
    {
        name: "departureDate",
        path: "$.input.fields[?(@.name== ''DepartureDate'')].values[0].value"
    },
    {
        name: "returnDate",
        path: "$.input.fields[?(@.name== ''ReturnDate'')].values[0].value"
    }, 
    {
        name: "issuanceDate",
        path: "$.input.fields[?(@.name== ''IssuanceDate'')].values[0].value"
    },
        {
        name: "effectiveDate",
        path: "$.input.fields[?(@.name== ''EffectiveDate'')].values[0].value"
    },
        {
        name: "expireDate",
        path: "$.input.fields[?(@.name== ''ExpireDate'')].values[0].value"
    },
    {
        name: "duenotified",
        path: "$.input.fields[?(@.name== ''NotifiedDateTP'')].values[-1:].value"
    }
]', N'0', N'{

}', 1, 15, N'expireDate', 0)
SET IDENTITY_INSERT [dbo].[application] OFF
SET IDENTITY_INSERT [dbo].[language] ON 

INSERT [dbo].[language] ([id], [code], [name]) VALUES (1, N'en', N'English')
INSERT [dbo].[language] ([id], [code], [name]) VALUES (2, N'ko', N'Korean')
INSERT [dbo].[language] ([id], [code], [name]) VALUES (3, N'th', N'Thai')
INSERT [dbo].[language] ([id], [code], [name]) VALUES (4, N'zh-hk', N'Chinese (Hong Kong)')
INSERT [dbo].[language] ([id], [code], [name]) VALUES (5, N'zh-cn', N'Chinese (Simplified)')
INSERT [dbo].[language] ([id], [code], [name]) VALUES (6, N'in', N'Indonesian')
INSERT [dbo].[language] ([id], [code], [name]) VALUES (7, N'vi', N'Vietnamese')
SET IDENTITY_INSERT [dbo].[language] OFF
SET IDENTITY_INSERT [dbo].[email] ON 

INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (1, 1, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (2, 2, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (3, 2, 4, N'確認註冊和激活您的旅遊保險')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (4, 3, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (5, 3, 3, N'การยืนยันการลงทะเบียนและเปิดใช้ประกันภัยการเดินทางของท่าน')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (6, 4, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (7, 4, 4, N'確認註冊和激活您的旅遊保險')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (8, 5, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (9, 5, 2, N'여행자 보험 가입 및 개시 확인')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (10, 6, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (11, 7, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (12, 8, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (13, 9, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (14, 10, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (15, 11, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (16, 12, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (17, 13, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (18, 12, 5, N'确认注册和激活您的旅游保险')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (19, 10, 7, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (20, 13, 6, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (21, 6, 4, N'確認註冊和激活您的旅遊保險')
SET IDENTITY_INSERT [dbo].[email] OFF
SET IDENTITY_INSERT [dbo].[email_due] ON 

INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (1, 1, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (2, 2, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (3, 2, 4, N'保險到期提醒 —— 請檢查續保資格')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (4, 3, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (5, 3, 3, N'ข้อความเตือนการหมดอายุของประกันภัย – โปรดตรวจสอบคุณสมบัติสำหรับการต่ออายุ')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (6, 4, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (7, 4, 4, N'保險到期提醒 —— 請檢查續保資格')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (8, 5, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (9, 5, 2, N'보험 만료 안내 - 갱신을 위해 귀하께서 해당하는지 다시 한 번 확인해주시기 바랍니다')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (10, 6, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (11, 7, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (12, 8, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (13, 9, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (14, 10, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (15, 11, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (16, 12, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (17, 13, 1, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (18, 12, 5, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (19, 10, 7, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (20, 13, 6, N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[email_due] ([id], [application_id], [language_id], [subject]) VALUES (21, 6, 4, N'保險到期提醒 —— 請檢查續保資格')
SET IDENTITY_INSERT [dbo].[email_due] OFF
SET IDENTITY_INSERT [dbo].[landing] ON 

INSERT [dbo].[landing] ([id], [code], [name], [active], [filter], [can_redirect_to]) VALUES (1, N'ap', N'ap', 1, NULL, N'{
}')
SET IDENTITY_INSERT [dbo].[landing] OFF
SET IDENTITY_INSERT [dbo].[landing_application] ON 

INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (1, 1, 1)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (2, 1, 2)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (4, 1, 3)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (3, 1, 4)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (5, 1, 5)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (6, 1, 6)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (7, 1, 7)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (8, 1, 8)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (9, 1, 9)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (10, 1, 10)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (11, 1, 11)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (12, 1, 12)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (13, 1, 13)
SET IDENTITY_INSERT [dbo].[landing_application] OFF
SET IDENTITY_INSERT [dbo].[letter] ON 

INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (1, 1, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (2, 2, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (3, 3, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (4, 2, 4, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (5, 3, 3, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (6, 4, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (7, 4, 4, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (8, 5, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (9, 5, 2, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (10, 6, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (11, 7, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (12, 8, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (13, 9, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (14, 10, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (15, 11, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (16, 12, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (17, 13, 1, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (18, 12, 5, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (19, 10, 7, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (20, 13, 6, N'Certificate.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (21, 6, 4, N'Certificate.pdf')
SET IDENTITY_INSERT [dbo].[letter] OFF
SET IDENTITY_INSERT [dbo].[step] ON 

INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (1, 1, N'mwi_SGP01', N'Disclaimer', 1, N'Index', 1, 1)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (2, 1, N'mwi_SGP02', N'CardHolder Information', 2, N'Index', 1, 1)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (4, 1, N'mwi_SGP03', N'Information Review', 3, N'Index', 1, 1)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (5, 1, N'mwi_HKG01', N'Disclaimer', 4, N'Index', 1, 2)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (6, 1, N'mwi_HKG02', N'CardHolder Information', 5, N'Index', 1, 2)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (8, 1, N'mwi_HKG03', N'Information Review', 6, N'Index', 1, 2)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (9, 1, N'mwi_THA01', N'Disclaimer', 7, N'Index', 1, 3)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (10, 1, N'mwi_THA02', N'CardHolder Information', 8, N'Index', 1, 3)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (12, 1, N'mwi_THA03', N'Information Review', 9, N'Index', 1, 3)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (13, 1, N'mwi_MAC01', N'Disclaimer', 10, N'Index', 1, 4)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (14, 1, N'mwi_MAC02', N'CardHolder Information', 11, N'Index', 1, 4)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (16, 1, N'mwi_MAC03', N'Information Review', 12, N'Index', 1, 4)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (17, 1, N'mwi_KOR01', N'Disclaimer', 13, N'Index', 1, 5)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (18, 1, N'mwi_KOR02', N'CardHolder Information', 14, N'Index', 1, 5)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (20, 1, N'mwi_KOR03', N'Information Review', 15, N'Index', 1, 5)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (21, 1, N'mwi_main', N'Index', 0, N'CardIndex', 0, NULL)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (22, 1, N'mwi_TWN01', N'Disclaimer', 16, N'Index', 1, 6)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (23, 1, N'mwi_TWN02', N'CardHolder Information', 17, N'Index', 1, 6)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (24, 1, N'mwi_TWN03', N'Information Review', 18, N'Index', 1, 6)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (25, 1, N'mwi_AUS01', N'Disclaimer', 19, N'Index', 1, 7)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (26, 1, N'mwi_AUS02', N'CardHolder Information', 20, N'Index', 1, 7)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (27, 1, N'mwi_AUS03', N'Information Review', 21, N'Index', 1, 7)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (28, 1, N'mwi_NZL01', N'Disclaimer', 22, N'Index', 1, 8)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (29, 1, N'mwi_NZL02', N'CardHolder Information', 23, N'Index', 1, 8)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (30, 1, N'mwi_NZL03', N'Information Review', 24, N'Index', 1, 8)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (31, 1, N'mwi_PHL01', N'Disclaimer', 25, N'Index', 1, 9)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (32, 1, N'mwi_PHL02', N'CardHolder Information', 26, N'Index', 1, 9)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (33, 1, N'mwi_PHL03', N'Information Review', 27, N'Index', 1, 9)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (34, 1, N'mwi_VNM01', N'Disclaimer', 28, N'Index', 1, 10)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (35, 1, N'mwi_VNM02', N'CardHolder Information', 29, N'Index', 1, 10)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (36, 1, N'mwi_VNM03', N'Information Review', 30, N'Index', 1, 10)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (37, 1, N'mwi_MYS01', N'Disclaimer', 31, N'Index', 1, 11)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (38, 1, N'mwi_MYS02', N'CardHolder Information', 32, N'Index', 1, 11)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (39, 1, N'mwi_MYS03', N'Information Review', 33, N'Index', 1, 11)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (40, 1, N'mwi_CHN01', N'Disclaimer', 34, N'Index', 1, 12)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (41, 1, N'mwi_CHN02', N'CardHolder Information', 35, N'Index', 1, 12)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (42, 1, N'mwi_CHN03', N'Information Review', 36, N'Index', 1, 12)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (43, 1, N'mwi_IDN01', N'Disclaimer', 37, N'Index', 1, 13)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (44, 1, N'mwi_IDN02', N'CardHolder Information', 38, N'Index', 1, 13)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (45, 1, N'mwi_IDN03', N'Information Review', 39, N'Index', 1, 13)
SET IDENTITY_INSERT [dbo].[step] OFF
SET IDENTITY_INSERT [dbo].[landing_language] ON 

INSERT [dbo].[landing_language] ([id], [landing_id], [language_id], [label]) VALUES (1, 1, 1, N'English')
INSERT [dbo].[landing_language] ([id], [landing_id], [language_id], [label]) VALUES (2, 1, 2, N'Korean')
INSERT [dbo].[landing_language] ([id], [landing_id], [language_id], [label]) VALUES (3, 1, 3, N'Thai')
INSERT [dbo].[landing_language] ([id], [landing_id], [language_id], [label]) VALUES (4, 1, 4, N'Chinese (Hong Kong)')
INSERT [dbo].[landing_language] ([id], [landing_id], [language_id], [label]) VALUES (5, 1, 5, N'Chinese (Simplified)')
INSERT [dbo].[landing_language] ([id], [landing_id], [language_id], [label]) VALUES (6, 1, 6, N'Indonesian')
INSERT [dbo].[landing_language] ([id], [landing_id], [language_id], [label]) VALUES (7, 1, 7, N'Vietnamese')
SET IDENTITY_INSERT [dbo].[landing_language] OFF
SET IDENTITY_INSERT [dbo].[static_label] ON 

INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (406, 1, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (692, 2, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (693, 3, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (694, 4, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (965, 1, N'amount_100', N'USD 100')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (966, 2, N'amount_100', N'USD 100')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (967, 3, N'amount_100', N'100 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (968, 4, N'amount_100', N'100 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (969, 5, N'amount_100', N'663 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (970, 6, N'amount_100', N'USD100')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (971, 7, N'amount_100', N'100 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (972, 1, N'amount_100perday', N'USD 100 per Day')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (973, 2, N'amount_100perday', N'일일 USD 100')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (974, 3, N'amount_100perday', N'100 ดอลลาร์สหรัฐต่อวัน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (975, 4, N'amount_100perday', N'每日 100 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (976, 5, N'amount_100perday', N'每日663 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (977, 6, N'amount_100perday', N'USD100 per hari')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (978, 7, N'amount_100perday', N'100 USD mỗi ngày')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (979, 1, N'amount_250', N'USD 250')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (980, 2, N'amount_250', N'USD 250')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (981, 3, N'amount_250', N'250 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (982, 4, N'amount_250', N'250 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (983, 5, N'amount_250', N'1,660 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (984, 6, N'amount_250', N'USD250')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (985, 7, N'amount_250', N'250 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (986, 1, N'amount_500', N'USD 500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (987, 2, N'amount_500', N'USD 500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (988, 3, N'amount_500', N'500 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (989, 4, N'amount_500', N'500 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (990, 5, N'amount_500', N'3,315 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (991, 6, N'amount_500', N'USD500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (992, 7, N'amount_500', N'500 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (993, 1, N'amount_included', N'Included')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (994, 2, N'amount_included', N'포함')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (995, 3, N'amount_included', N'รวม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (996, 4, N'amount_included', N'包括')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (997, 5, N'amount_included', N'包括')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (998, 6, N'amount_included', N'Sudah termasuk')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (999, 7, N'amount_included', N'Đã bao gồm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1000, 1, N'amount_uptousd100k', N'Up to USD 100,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1001, 2, N'amount_uptousd100k', N'최대 USD 100,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1002, 3, N'amount_uptousd100k', N'สูงถึง 100,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1003, 4, N'amount_uptousd100k', N'最高达 100,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1004, 5, N'amount_uptousd100k', N'最高663,000 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1005, 6, N'amount_uptousd100k', N'Hingga USD100.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1006, 7, N'amount_uptousd100k', N'Lên tới 100.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1007, 1, N'amount_uptousd1k', N'Up to USD 1,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1008, 2, N'amount_uptousd1k', N'최대 USD 1,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1009, 3, N'amount_uptousd1k', N'สูงถึง 1,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1010, 4, N'amount_uptousd1k', N'最高达 1,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1011, 5, N'amount_uptousd1k', N'最高6,300 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1012, 6, N'amount_uptousd1k', N'Hingga USD1.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1013, 7, N'amount_uptousd1k', N'Lên tới 1.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1014, 1, N'amount_uptousd2_5k', N'Up to USD 2,500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1015, 2, N'amount_uptousd2_5k', N'최대 USD 2,500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1016, 3, N'amount_uptousd2_5k', N'สูงถึง 2,500 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1017, 4, N'amount_uptousd2_5k', N'最高达 2,500 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1018, 5, N'amount_uptousd2_5k', N'最高16,575 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1019, 6, N'amount_uptousd2_5k', N'Hingga USD2.500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1020, 7, N'amount_uptousd2_5k', N'Lên tới 2.500 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1021, 1, N'amount_uptousd250k', N'Up to USD 250,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1022, 2, N'amount_uptousd250k', N'최대 USD 250,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1023, 3, N'amount_uptousd250k', N'สูงถึง 250,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1024, 4, N'amount_uptousd250k', N'最高达 250,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1025, 5, N'amount_uptousd250k', N'最高1,657,500 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1026, 6, N'amount_uptousd250k', N'Hingga USD250.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1027, 7, N'amount_uptousd250k', N'Lên tới 250.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1028, 1, N'amount_uptousd500k', N'Up to USD 500,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1029, 2, N'amount_uptousd500k', N'최대 USD 500,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1030, 3, N'amount_uptousd500k', N'สูงถึง 500,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1031, 4, N'amount_uptousd500k', N'最高达 500,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1032, 5, N'amount_uptousd500k', N'最高3,315,000 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1033, 6, N'amount_uptousd500k', N'Hingga USD500.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1034, 7, N'amount_uptousd500k', N'Lên tới 500.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1035, 1, N'amount_uptousd5k', N'Up to USD 5,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1036, 2, N'amount_uptousd5k', N'최대 USD 5,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1037, 3, N'amount_uptousd5k', N'สูงถึง 5,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1038, 4, N'amount_uptousd5k', N'最高达 5,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1039, 5, N'amount_uptousd5k', N'最高33,150 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1040, 6, N'amount_uptousd5k', N'Hingga USD5.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1041, 7, N'amount_uptousd5k', N'Lên tới 5.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1042, 1, N'attachment_file_name', N'TravelInsuranceConfirmation.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1043, 2, N'attachment_file_name', N'TravelInsuranceConfirmation.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1044, 3, N'attachment_file_name', N'TravelInsuranceConfirmation.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1045, 4, N'attachment_file_name', N'TravelInsuranceConfirmation.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1046, 5, N'attachment_file_name', N'TravelInsuranceConfirmation.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1047, 6, N'attachment_file_name', N'TravelInsuranceConfirmation.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1048, 7, N'attachment_file_name', N'TravelInsuranceConfirmation.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1049, 1, N'back', N'Back')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1050, 2, N'back', N'뒤로')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1051, 3, N'back', N'ย้อนกลับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1052, 4, N'back', N'返回')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1053, 5, N'back', N'返回')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1054, 6, N'back', N'Kembali')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1055, 7, N'back', N'Trở về')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1056, 1, N'ben_assistance_department', N'Overseas Emergency Assistance Services')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1057, 2, N'ben_assistance_department', N'해외 응급 지원 서비스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1058, 3, N'ben_assistance_department', N'บริการให้ความช่วยเหลือฉุกเฉินในต่างประเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1059, 4, N'ben_assistance_department', N'海外緊急援助服務')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1060, 5, N'ben_assistance_department', N'海外紧急援助服务')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1061, 6, N'ben_assistance_department', N'Layanan Bantuan Darurat Luar Negeri')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1062, 7, N'ben_assistance_department', N'Dịch vụ Hỗ trợ khẩn cấp ở nước ngoài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1063, 1, N'ben_common_carrier', N'Common Carrier Baggage Delay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1064, 2, N'ben_common_carrier', N'일반 수화물 지연')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1065, 3, N'ben_common_carrier', N'ความล่าช้าในการขนถ่ายกระเป๋าเดินทางของผู้ประกอบการขนส่ง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1066, 4, N'ben_common_carrier', N'公共運輸工具行李延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1067, 5, N'ben_common_carrier', N'公共承运人行李延误')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1068, 6, N'ben_common_carrier', N'Keterlambatan Bagasi Angkutan Umum')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1069, 7, N'ben_common_carrier', N'Hành lý đến trễ do các hãng vận tải công cộng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1070, 1, N'ben_common_carrier_description', N'For delays in excess of 4 hours')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1071, 2, N'ben_common_carrier_description', N'4시간 초과 지연의 경우')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1072, 3, N'ben_common_carrier_description', N'สำหรับความล่าช้าเกินกว่า 4 ชั่วโมง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1073, 4, N'ben_common_carrier_description', N'超過 4 小時的延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1074, 5, N'ben_common_carrier_description', N'延误超过4小时')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1075, 6, N'ben_common_carrier_description', N'Apabila terlambat lebih dari 4 jam')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1076, 7, N'ben_common_carrier_description', N'Khi trễ quá 4 tiếng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1077, 1, N'ben_daily_hospital', N'Daily In-Hospital Cash Benefit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1078, 2, N'ben_daily_hospital', N'일일 실손 의료 보험 (현금)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1079, 3, N'ben_daily_hospital', N'ผลประโยชน์รายวันสำหรับการเข้าพักในโรงพยาบาล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1080, 4, N'ben_daily_hospital', N'每日住院現金保險賠償')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1081, 5, N'ben_daily_hospital', N'住院每日现金保障')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1082, 6, N'ben_daily_hospital', N'Manfaat Tunai Rawat Inap Harian')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1083, 7, N'ben_daily_hospital', N'Quyền lợi tiền nằm viện hằng ngày')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1084, 1, N'ben_daily_hospital_description', N'Minimum 3 days, maximum 15 days.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1085, 2, N'ben_daily_hospital_description', N'최소 3일, 최대 15일.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1086, 3, N'ben_daily_hospital_description', N'ต่ำสุด 3 วัน สูงสุด 15 วัน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1087, 4, N'ben_daily_hospital_description', N'最短 3 天，最长 15 天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1088, 5, N'ben_daily_hospital_description', N'最短 3 天，最長 15 天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1089, 6, N'ben_daily_hospital_description', N'Minimum 3 hari, maksimum 15 hari.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1090, 7, N'ben_daily_hospital_description', N'Tối thiểu 3 ngày, tối đa 15 ngày.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1091, 1, N'ben_emergency', N'Overseas Emergency Medical Evacuation')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1092, 2, N'ben_emergency', N'응급 의무 후송')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1093, 3, N'ben_emergency', N'การเคลื่อนย้ายทางการแพทย์ฉุกเฉิน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1094, 4, N'ben_emergency', N'緊急醫療後送')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1095, 5, N'ben_emergency', N'海外 緊急醫療運送/遺體送返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1096, 6, N'ben_emergency', N'Evakuasi Medis Darurat Luar Negeri')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1097, 7, N'ben_emergency', N'Sơ tán y tế khẩn cấp ở nước ngoài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1098, 1, N'ben_emergency_repatriation', N'Overseas Emergency Medical Evacuation / Return of Mortal Remains')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1099, 2, N'ben_emergency_repatriation', N'해외 응급 의무 후송/유해 송환')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1100, 3, N'ben_emergency_repatriation', N'การเคลื่อนย้ายทางการแพทย์ฉุกเฉิน/ การส่งศพกลับประเทศภูมิลำเนาในต่างประเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1101, 4, N'ben_emergency_repatriation', N'海外紧急医疗运送/遗体送返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1102, 5, N'ben_emergency_repatriation', N'身故遗体送返 / 遗体遣返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1103, 6, N'ben_emergency_repatriation', N'Evakuasi Medis Darurat / Pemulangan Jenazah Luar Negeri')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1104, 7, N'ben_emergency_repatriation', N'Sơ tán y tế khẩn cấp ở nước ngoài/Hồi hương thi hài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1105, 1, N'ben_medical', N'Overseas Medical Expenses due to Injury or Sickness')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1106, 2, N'ben_medical', N'상해 또는 질병으로 인한 해외 의료 비용 부상 또는 질병으로 인한 의료비')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1107, 3, N'ben_medical', N'ค่าใช้จ่ายทางการแพทย์ในต่างประเทศ เนื่องมาจากการบาดเจ็บหรือการเจ็บป่วย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1108, 4, N'ben_medical', N'因受伤或疾病而产生的海外医疗费用')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1109, 5, N'ben_medical', N'因受傷或疾病而產生的海外醫療費用')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1110, 6, N'ben_medical', N'Biaya Medis Luar Negeri akibat Cedera atau Sakit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1111, 7, N'ben_medical', N'Chi phí y tế ở nước ngoài do bị thương hoặc đau ốm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1112, 1, N'ben_missed_connection', N'Missed Connection')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1113, 2, N'ben_missed_connection', N'연결편 결항')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1114, 3, N'ben_missed_connection', N'การพลาดการต่อเที่ยวบิน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1115, 4, N'ben_missed_connection', N'錯過轉乘班機')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1116, 5, N'ben_missed_connection', N'错过转机')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1117, 6, N'ben_missed_connection', N'Gagal Transit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1118, 7, N'ben_missed_connection', N'Mất liên lạc')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1119, 1, N'ben_overseas_quarantine', N'Overseas Quarantine Allowance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1120, 2, N'ben_overseas_quarantine', N'해외 격리 지원금')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1121, 3, N'ben_overseas_quarantine', N'เงินช่วยเหลือสำหรับการกักตัวในต่างประเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1122, 4, N'ben_overseas_quarantine', N'海外檢疫津貼')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1123, 5, N'ben_overseas_quarantine', N'海外隔离津贴')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1124, 6, N'ben_overseas_quarantine', N'Tunjangan Karantina Luar Negeri')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1125, 7, N'ben_overseas_quarantine', N'Trợ cấp cách ly ở nước ngoài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1126, 1, N'ben_overseas_quarantine_description', N'Maximum 14 days.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1127, 2, N'ben_overseas_quarantine_description', N'최대 14일.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1128, 3, N'ben_overseas_quarantine_description', N'สูงสุด 14 วัน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1129, 4, N'ben_overseas_quarantine_description', N'最长 14 天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1130, 5, N'ben_overseas_quarantine_description', N'最长14天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1131, 6, N'ben_overseas_quarantine_description', N'Maksimum 14 hari.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1132, 7, N'ben_overseas_quarantine_description', N'Tối đa 14 ngày.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1133, 1, N'ben_personal_baggage', N'Personal Baggage Including Laptop Computer')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1134, 2, N'ben_personal_baggage', N'노트북 컴퓨터 등 개인 수하물')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1135, 3, N'ben_personal_baggage', N'กระเป๋าเดินทางส่วนตัว รวมถึงคอมพิวเตอร์แล็ปท๊อป')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1136, 4, N'ben_personal_baggage', N'包括手提電腦在內的個人行李')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1137, 5, N'ben_personal_baggage', N'个人行李，包括笔记本电脑')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1138, 6, N'ben_personal_baggage', N'Bagasi Pribadi Termasuk Laptop')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1139, 7, N'ben_personal_baggage', N'Hành lý cá nhân bao gồm máy tính xách tay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1140, 1, N'ben_personal_baggage_description', N'Subject to a single item maximum limit of USD 625.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1141, 2, N'ben_personal_baggage_description', N'단일 품목 최대 한도 KRW 718,750 조건')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1142, 3, N'ben_personal_baggage_description', N'อยู่ภายใต้ขีดจำกัดสูงสุดของรายการเดียวที่ 625 เหรียญสหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1143, 4, N'ben_personal_baggage_description', N'單件物品上限為 625 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1144, 5, N'ben_personal_baggage_description', N'单件遺失物品最高限额为4,145 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1145, 6, N'ben_personal_baggage_description', N'Dikenai batas maksimum USD625 per barang.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1146, 7, N'ben_personal_baggage_description', N'Theo giới hạn tối đa của một món đồ là 625 USD.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1147, 1, N'ben_repatriation', N'Repatriation of Mortal Remains')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1148, 2, N'ben_repatriation', N'유해 본국 송환')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1149, 3, N'ben_repatriation', N'การส่งศพกลับประเทศภูมิลำเนา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1150, 4, N'ben_repatriation', N'遺體遣返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1151, 5, N'ben_repatriation', N'遺體送返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1152, 6, N'ben_repatriation', N'Repatriasi Jenazah')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1153, 7, N'ben_repatriation', N'Hồi hương thi hài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1154, 1, N'ben_trip_cancellation', N'Trip Cancellation')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1155, 2, N'ben_trip_cancellation', N'여행 취소')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1156, 3, N'ben_trip_cancellation', N'การยกเลิกการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1157, 4, N'ben_trip_cancellation', N'行程取消')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1158, 5, N'ben_trip_cancellation', N'旅行取消')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1159, 6, N'ben_trip_cancellation', N'Pembatalan Perjalanan')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1160, 7, N'ben_trip_cancellation', N'Huỷ chuyến đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1161, 1, N'ben_trip_curtailment', N'Trip Curtailment')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1162, 2, N'ben_trip_curtailment', N'여행 단축')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1163, 3, N'ben_trip_curtailment', N'การลดจำนวนวันเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1164, 4, N'ben_trip_curtailment', N'行程縮減')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1165, 5, N'ben_trip_curtailment', N'旅行缩减')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1166, 6, N'ben_trip_curtailment', N'Pengurangan Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1167, 7, N'ben_trip_curtailment', N'Rút ngắn chuyến đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1168, 1, N'ben_trip_delay', N'Flight Delay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1169, 2, N'ben_trip_delay', N'비행 지연')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1170, 3, N'ben_trip_delay', N'เที่ยวบินล่าช้า')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1171, 4, N'ben_trip_delay', N'航班延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1172, 5, N'ben_trip_delay', N'旅行延误')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1173, 6, N'ben_trip_delay', N'Penundaan Penerbangan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1174, 7, N'ben_trip_delay', N'Trễ chuyến bay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1175, 1, N'ben_trip_delay_description', N'For delays in excess of 4 hours.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1176, 2, N'ben_trip_delay_description', N'4시간 초과 지연의 경우')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1177, 3, N'ben_trip_delay_description', N'สำหรับความล่าช้าเกินกว่า 4 ชั่วโมง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1178, 4, N'ben_trip_delay_description', N'超過 4 小時的延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1179, 5, N'ben_trip_delay_description', N'延误超过4小时')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1180, 6, N'ben_trip_delay_description', N'Apabila ditunda lebih dari 4 jam.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1181, 7, N'ben_trip_delay_description', N'Khi trễ quá 4 tiếng.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1182, 1, N'ben_trip_postponement', N'Trip Postponement')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1183, 2, N'ben_trip_postponement', N'여행 연기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1184, 3, N'ben_trip_postponement', N'การเลื่อนการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1185, 4, N'ben_trip_postponement', N'行程延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1186, 5, N'ben_trip_postponement', N'旅行延期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1187, 6, N'ben_trip_postponement', N'Penangguhan Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1188, 7, N'ben_trip_postponement', N'Hoãn chuyến đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1189, 1, N'bin', N'FIRST TEN DIGITS OF YOUR MASTERCARD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1190, 2, N'bin', N'마스터 카드의 첫 10자리 번호')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1191, 3, N'bin', N'หมายเลข 10 หลักแรกของมาสเตอร์การ์ดของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1192, 4, N'bin', N'萬事達卡的前 10 位數字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1193, 5, N'bin', N'万事达的前 10 位数字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1194, 6, N'bin', N'SEPULUH DIGIT PERTAMA MASTERCARD ANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1195, 7, N'bin', N'MƯỜI CHỮ SỐ ĐẦU TIÊN TRÊN MASTERCARD CỦA BẠN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1196, 1, N'bin_info', N'First 10 digits of your payment card')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1197, 2, N'bin_info', N'결제 카드의 첫 10자리 번호')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1198, 3, N'bin_info', N'หมายเลข 10 หลักแรกของบัตรชำระเงินของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1199, 4, N'bin_info', N'支付卡的前 10 位數字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1200, 5, N'bin_info', N'支付卡的前 10 位数字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1201, 6, N'bin_info', N'10 digit pertama kartu pembayaran Anda')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1202, 7, N'bin_info', N'10 chữ số đầu tiên trên thẻ thanh toán của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1203, 1, N'breadcrumbs_cardholder', N'Personal Information')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1204, 2, N'breadcrumbs_cardholder', N'개인 정보')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1205, 3, N'breadcrumbs_cardholder', N'ข้อมูลส่วนตัว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1206, 4, N'breadcrumbs_cardholder', N'個人資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1207, 5, N'breadcrumbs_cardholder', N'个人资料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1208, 6, N'breadcrumbs_cardholder', N'Informasi Pribadi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1209, 7, N'breadcrumbs_cardholder', N'Thông tin cá nhân')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1210, 1, N'breadcrumbs_review', N'Review and Accept')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1211, 2, N'breadcrumbs_review', N'검토 및 동의')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1212, 3, N'breadcrumbs_review', N'ทบทวนและยอมรับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1213, 4, N'breadcrumbs_review', N'閱讀並接受')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1214, 5, N'breadcrumbs_review', N'阅读并接受')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1215, 6, N'breadcrumbs_review', N'Tinjau dan Setujui')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1216, 7, N'breadcrumbs_review', N'Xem xét và chấp nhận')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1217, 1, N'cat_assistance_department', N'Assistance Department Services')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1218, 2, N'cat_assistance_department', N'지원 서비스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1219, 3, N'cat_assistance_department', N'บริการให้ความช่วยเหลือฉุกเฉินในต่างประเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1220, 4, N'cat_assistance_department', N'援助部門服務')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1221, 5, N'cat_assistance_department', N'援助部门服务')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1222, 6, N'cat_assistance_department', N'Layanan Bagian Bantuan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1223, 7, N'cat_assistance_department', N'Dịch vụ phòng ban hỗ trợ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1224, 1, N'cat_baggage', N'Baggage Protection')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1225, 2, N'cat_baggage', N'수하물 보호')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1226, 3, N'cat_baggage', N'ความคุ้มครองกระเป๋าสัมภาระ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1227, 4, N'cat_baggage', N'行李保護')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1228, 5, N'cat_baggage', N'行李保障')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1229, 6, N'cat_baggage', N'Perlindungan Bagasi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1230, 7, N'cat_baggage', N'Bảo vệ hành lý')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1231, 1, N'cat_travel_medical', N'Travel Medical Benefits')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1232, 2, N'cat_travel_medical', N'여행자 의료 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1233, 3, N'cat_travel_medical', N'สิทธิประโยชน์ทางการแพทย์สำหรับการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1234, 4, N'cat_travel_medical', N'旅遊醫療保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1235, 5, N'cat_travel_medical', N'旅游医疗保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1236, 6, N'cat_travel_medical', N'Manfaat Medis Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1237, 7, N'cat_travel_medical', N'Quyền lợi y tế du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1238, 1, N'cat_trip_inconvenience', N'Trip Inconvenience Protection')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1239, 2, N'cat_trip_inconvenience', N'여행 애로 사항 보호')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1240, 3, N'cat_trip_inconvenience', N'การคุ้มครองความไม่สะดวกในการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1241, 4, N'cat_trip_inconvenience', N'旅程不便保護')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1242, 5, N'cat_trip_inconvenience', N'旅行意外无忧保障')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1243, 6, N'cat_trip_inconvenience', N'Perlindungan dari Ketidaknyamanan Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1244, 7, N'cat_trip_inconvenience', N'Bảo vệ khỏi sự bất tiện của chuyến đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1245, 1, N'close', N'Close')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1246, 2, N'close', N'닫기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1247, 3, N'close', N'ปิด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1248, 4, N'close', N'關閉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1249, 6, N'close', N'Tutup')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1250, 7, N'close', N'Đóng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1251, 1, N'confirm_msgOne', N'Please check your personal details and click “Complete Registration” to register your Travel Insurance.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1252, 2, N'confirm_msgOne', N'인적 사항을 확인하시고 가입 완료를 클릭해 여행자 보험에 가입하십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1253, 3, N'confirm_msgOne', N'โปรดตรวจสอบข้อมูลส่วนตัวของท่านและคลิก “ลงทะเบียน” เพื่อลงทะเบียนประกันภัยการเดินทางของท่าน.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1254, 4, N'confirm_msgOne', N'請檢查您的個人資料，並點擊「完成註冊」以註冊您的旅遊保險.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1255, 5, N'confirm_msgOne', N'请检查您的个人资料，并点击 “完成注册”以注册您的旅游保险.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1256, 6, N'confirm_msgOne', N'Periksa kembali data pribadi Anda, lalu klik “Selesaikan Pendaftaran” untuk mendaftarkan Asuransi Perjalanan Anda.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1257, 7, N'confirm_msgOne', N'Vui lòng kiểm tra thông tin cá nhân và nhấp vào “Hoàn thành đăng ký” để đăng ký Bảo hiểm Du lịch của bạn.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1258, 1, N'confirm_msgTwo', N'The registration will be confirmed to you by email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1259, 2, N'confirm_msgTwo', N'이메일을 통해 가입 확인을 진행하시게 됩니다.')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1260, 3, N'confirm_msgTwo', N'จะยืนยันการลงทะเบียนประกันภัยการเดินทางกับท่านทางอีเมล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1261, 4, N'confirm_msgTwo', N'我們將通過電子郵件確認註冊。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1262, 5, N'confirm_msgTwo', N'我们将通过电子邮件确认注册。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1263, 6, N'confirm_msgTwo', N'Pendaftaran akan dikonfirmasikan kepada Anda melalui email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1264, 7, N'confirm_msgTwo', N'Xác nhận đăng ký sẽ được gửi cho bạn qua email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1265, 1, N'confirmationMail_regards', N'Best regards')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1266, 2, N'confirmationMail_regards', N'따뜻한 안부')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1267, 3, N'confirmationMail_regards', N'ขอแสดงความนับถือ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1268, 4, N'confirmationMail_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1269, 5, N'confirmationMail_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1270, 6, N'confirmationMail_regards', N'Salam takzim')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1271, 7, N'confirmationMail_regards', N'Trân trọng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1272, 1, N'coverage_amount', N'Coverage Amount')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1273, 2, N'coverage_amount', N'보장 금액')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1274, 3, N'coverage_amount', N'วงเงินคุ้มครอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1275, 4, N'coverage_amount', N'承保金额')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1276, 5, N'coverage_amount', N'承保金額')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1277, 6, N'coverage_amount', N'Jumlah Pertanggungan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1278, 7, N'coverage_amount', N'Số tiền bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1279, 1, N'coverage_categories', N'Coverage Categories')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1280, 2, N'coverage_categories', N'보장 카테고리')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1281, 3, N'coverage_categories', N'หมวดความคุ้มครอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1282, 4, N'coverage_categories', N'承保项目')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1283, 5, N'coverage_categories', N'承保項目')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1284, 6, N'coverage_categories', N'Kategori Pertanggungan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1285, 7, N'coverage_categories', N'Danh mục bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1286, 1, N'coverage_description', N'Coverage Specifics')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1287, 2, N'coverage_description', N'보장 특이사항')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1288, 3, N'coverage_description', N'รายละเอียดความคุ้มครอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1289, 4, N'coverage_description', N'承保项目细节')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1290, 5, N'coverage_description', N'承保項目細節')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1291, 6, N'coverage_description', N'Spesifikasi Pertanggungan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1292, 7, N'coverage_description', N'Đặc điểm bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1293, 1, N'coverage_name', N'Coverage Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1294, 2, N'coverage_name', N'보장 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1295, 3, N'coverage_name', N'ชื่อความคุ้มครอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1296, 4, N'coverage_name', N'承保项目名称')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1297, 5, N'coverage_name', N'承保項目名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1298, 6, N'coverage_name', N'Nama Pertanggungan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1299, 7, N'coverage_name', N'Tên bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1300, 1, N'dados', N'Cardholder Details')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1301, 2, N'dados', N'카드소유주 상세 내역')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1302, 3, N'dados', N'ข้อมูลของผู้ถือบัตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1303, 4, N'dados', N'持卡人詳細資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1304, 5, N'dados', N'持卡人详细资料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1305, 6, N'dados', N'Data Pemegang Kartu')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1306, 7, N'dados', N'Thông tin chủ thẻ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1307, 1, N'dados_bilhete', N'Certificate Details')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1308, 2, N'dados_bilhete', N'증명서 상세 내역')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1309, 3, N'dados_bilhete', N'รายละเอียดของหนังสือรับรอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1310, 4, N'dados_bilhete', N'證明文件詳細資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1311, 5, N'dados_bilhete', N'证明文件详细资料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1312, 6, N'dados_bilhete', N'Data Sertifikat')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1313, 7, N'dados_bilhete', N'Thông tin chứng nhận')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1314, 1, N'dear', N'Dear')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1315, 2, N'dear', N'귀하')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1316, 3, N'dear', N'เรียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1317, 4, N'dear', N'親愛的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1318, 5, N'dear', N'亲爱的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1319, 6, N'dear', N'Yang terhormat')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1320, 7, N'dear', N'Kính gửi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1321, 1, N'description', N'Please enter your details below. We will use these details to identify you as a cardholder covered by the Travel Insurance in case you have to make a claim.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1322, 2, N'description', N'아래 사항을 입력하십시오. 귀하께서 보험을 청구하실 경우, 귀하께서 여행자 보험에서 보장되는 카드 소유주인 것을 확인하는 용도로 아래 정보를 사용할 것입니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1323, 3, N'description', N'โปรดใส่รายละเอียดของท่านด้านล่าง เราจะใช้รายละเอียดเหล่านี้ในการระบุตัวตนของท่านในฐานะผู้ถือบัตรที่ได้รับความคุ้มครองโดยประกันภัยการเดินทางในกรณีที่ท่านเรียกร้องค่าสินไหมทดแทน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1324, 4, N'description', N'請在下方輸入您的詳細資料。如果您提出索賠，我們將使用這些資料確認您是受旅遊保險承保的持卡人。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1325, 5, N'description', N'请在下方输入您的详细资料。如果您提出索赔，我们将使用这些资料确认您是受旅游保险承保的持卡人。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1326, 6, N'description', N'Masukkan data Anda di bawah ini. Kami akan menggunakan data ini untuk mengidentifikasi Anda sebagai pemegang kartu yang ditanggung oleh Asuransi Perjalanan apabila Anda kelak mengajukan klaim.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1327, 7, N'description', N'Vui lòng nhập thông tin chi tiết của bạn ở bên dưới. Chúng tôi sẽ sử dụng thông tin này để xác định bạn là chủ thẻ được hưởng Bảo hiểm Du lịch trong trường hợp bạn yêu cầu bảo hiểm.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1328, 1, N'edit', N'Edit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1329, 2, N'edit', N'편집')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1330, 3, N'edit', N'แก้ไข')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1331, 4, N'edit', N'編輯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1332, 5, N'edit', N'编辑')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1333, 6, N'edit', N'Edit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1334, 7, N'edit', N'Chỉnh sửa')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1335, 1, N'effective_date', N'Effective Date')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1336, 2, N'effective_date', N'유효일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1337, 3, N'effective_date', N'วันที่มีผลใช้บังคับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1338, 4, N'effective_date', N'有效日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1339, 5, N'effective_date', N'有效日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1340, 6, N'effective_date', N'Tanggal Berlaku')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1341, 7, N'effective_date', N'Ngày có hiệu lực')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1342, 1, N'email', N'EMAIL ADDRESS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1343, 2, N'email', N'이메일 주소')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1344, 3, N'email', N'ที่อยู่อีเมล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1345, 4, N'email', N'電子郵件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1346, 5, N'email', N'电子邮件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1347, 6, N'email', N'EMAIL ALAMAT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1348, 7, N'email', N'ĐỊA CHỈ EMAIL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1349, 1, N'en', N'English')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1350, 6, N'en', N'Bahasa Inggris')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1351, 7, N'en', N'Tiếng Anh')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1352, 1, N'ERR_CARDHOLDER_MORE_14', N'Must be over 14 years old')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1353, 2, N'ERR_CARDHOLDER_MORE_14', N'14세 이상이어야 합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1354, 3, N'ERR_CARDHOLDER_MORE_14', N'ต้องมีอายุมากกว่า 14 ปี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1355, 4, N'ERR_CARDHOLDER_MORE_14', N'必須年滿 14 歲')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1356, 5, N'ERR_CARDHOLDER_MORE_14', N'必须年满 14 岁')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1357, 6, N'ERR_CARDHOLDER_MORE_14', N'Harus berusia di atas 14 tahun')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1358, 7, N'ERR_CARDHOLDER_MORE_14', N'Phải trên 14 tuổi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1359, 1, N'ERR_FIELD_LENGTH_10', N'Digits must be Ten')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1360, 2, N'ERR_FIELD_LENGTH_10', N'반드시 열자리여야 합니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1361, 3, N'ERR_FIELD_LENGTH_10', N'ตัวเลขจะต้องมีสิบหลัก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1362, 4, N'ERR_FIELD_LENGTH_10', N'必須填寫 10 位數字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1363, 5, N'ERR_FIELD_LENGTH_10', N'必须填写 10 位数字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1364, 6, N'ERR_FIELD_LENGTH_10', N'Digit harus berjumlah sepuluh')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1365, 7, N'ERR_FIELD_LENGTH_10', N'Phải có đủ 10 chữ số')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1366, 1, N'ERR_FIELD_REQUIRED', N'Field Required')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1367, 2, N'ERR_FIELD_REQUIRED', N'필수 영역')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1368, 3, N'ERR_FIELD_REQUIRED', N'ช่องที่จำเป็นต้องกรอกข้อมูล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1369, 4, N'ERR_FIELD_REQUIRED', N'必填欄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1370, 5, N'ERR_FIELD_REQUIRED', N'必填栏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1371, 6, N'ERR_FIELD_REQUIRED', N'Wajib Diisi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1372, 7, N'ERR_FIELD_REQUIRED', N'Trường bắt buộc')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1373, 1, N'ERR_INVALID_DATE', N'Invalid date')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1374, 2, N'ERR_INVALID_DATE', N'잘못된 날짜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1375, 3, N'ERR_INVALID_DATE', N'วันที่ไม่ถูกต้อง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1376, 4, N'ERR_INVALID_DATE', N'失效日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1377, 5, N'ERR_INVALID_DATE', N'失效日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1378, 6, N'ERR_INVALID_DATE', N'Tanggal tidak valid')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1379, 7, N'ERR_INVALID_DATE', N'Ngày không hợp lệ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1380, 1, N'ERR_INVALID_EMAIL', N'Please enter a valid email address')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1381, 2, N'ERR_INVALID_EMAIL', N'유효한 이메일 주소를 입력하십시오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1382, 3, N'ERR_INVALID_EMAIL', N'โปรดใส่ที่อยู่อีเมลที่ถูกต้อง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1383, 4, N'ERR_INVALID_EMAIL', N'请输入有效的电子邮件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1384, 5, N'ERR_INVALID_EMAIL', N'請輸入有效的電子郵件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1385, 6, N'ERR_INVALID_EMAIL', N'Masukkan alamat email yang valid')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1386, 7, N'ERR_INVALID_EMAIL', N'Vui lòng nhập một địa chỉ email hợp lệ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1387, 1, N'EXIT', N'Exit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1388, 2, N'EXIT', N'나가기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1389, 3, N'EXIT', N'ออก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1390, 4, N'EXIT', N'退出')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1391, 5, N'EXIT', N'退出')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1392, 6, N'EXIT', N'Keluar')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1393, 7, N'EXIT', N'Thoát')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1394, 1, N'exit_message', N'Are you sure you do not want to continue with the registration process?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1395, 2, N'exit_message', N'정말로 가입 절차를 종료하시겠습니까?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1396, 3, N'exit_message', N'ท่านแน่ใจหรือไม่ว่าไม่ต้องการที่จะดำเนินการลงทะเบียนต่อ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1397, 4, N'exit_message', N'您確定要終止註冊流程嗎？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1398, 5, N'exit_message', N'您确定要终止注册流程吗？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1399, 6, N'exit_message', N'Apakah Anda yakin tidak ingin melanjutkan proses pendaftaran?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1400, 7, N'exit_message', N'Bạn có chắc rằng mình không muốn tiếp tục quá trình đăng ký không?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1401, 1, N'expire_date', N'Expiry Date')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1402, 2, N'expire_date', N'만료일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1403, 3, N'expire_date', N'วันหมดอายุ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1404, 4, N'expire_date', N'到期日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1405, 5, N'expire_date', N'到期日期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1406, 6, N'expire_date', N'Tanggal Berakhir')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1407, 7, N'expire_date', N'Ngày hết hạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1408, 1, N'faq_file_label', N'FAQ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1409, 2, N'faq_file_label', N'FAQ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1410, 3, N'faq_file_label', N'คำถามที่พบบ่อย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1411, 4, N'faq_file_label', N'常見問題')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1412, 5, N'faq_file_label', N'常见问题')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1413, 6, N'faq_file_label', N'Tanya Jawab')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1414, 7, N'faq_file_label', N'Câu hỏi thường gặp')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1415, 1, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1416, 2, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1417, 3, N'faq_file_name', N'คำถามที่พบบ่อย.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1418, 4, N'faq_file_name', N'常見問題.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1419, 5, N'faq_file_name', N'常见问题.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1420, 6, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1421, 7, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1422, 1, N'first_name', N'FIRST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1423, 2, N'first_name', N'이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1424, 3, N'first_name', N'ชื่อ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1425, 4, N'first_name', N'名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1426, 5, N'first_name', N'名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1427, 6, N'first_name', N'NAMA DEPAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1428, 7, N'first_name', N'TÊN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1429, 1, N'first_name_info', N'First name of Mastercard cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1430, 2, N'first_name_info', N'마스터카드 소유주의 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1431, 3, N'first_name_info', N'ชื่อของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1432, 4, N'first_name_info', N'萬事達卡持卡人的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1433, 5, N'first_name_info', N'万事达卡持卡人的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1434, 6, N'first_name_info', N'Nama depan pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1435, 7, N'first_name_info', N'Tên của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1436, 1, N'footer_content', N'Provision of services is subject to availability and applicable legal restrictions. Insurance coverage is underwritten by approved Member Companies of AIG Insurance Company or Network Partner. Complete provisions pertaining to these plans of insurance are contained in the Master Policy(ies) on file with Mastercard Asia/Pacific Pte. Ltd. If there are any discrepancies between this document and the Master Policy(ies) or the applicable Mastercard contract for other benefits, the Master Policy(ies) or the applicable Mastercard contract for other benefits shall govern. The Insurance Company has the final authority to determine and respond to any claims, comments, inquiries, disputes; related to utilization of the cardholder benefit program.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1437, 2, N'footer_content', N'서비스 조항은 사용 가능 여부 및 해당 법적 제한을 따릅니다. 보험 보장은 승인된 AIG 보험사의 회원사 또는 네트워크 파트너에서 인수됩니다. 본 보험에 해당하는 전체 조항은 마스터카드 아시아 태평양지부 파일에 있는 마스터 정책에 포함되어 있습니다 . 본 문서와 마스터 정책 또는 기타 보장에 대해 해당되는 마스터카드 계약 사이에 차이가 있다면, 마스터 정책 또는 기타 보장에 대해 해당되는 마스터 계약이 우위를 점합니다. 보험 회사는 카드소유주 보장 프로그램 활용과 관련한 모든 청구, 발언, 문의, 논쟁을 결정하고 응대하는 최종 결정권을 가지고 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1438, 3, N'footer_content', N'การให้บริการอยู่ภายใต้เงื่อนไขของความพร้อมในการให้บริการและข้อจำกัดทางกฎหมายที่มีผลใช้บังคับ ความคุ้มครองของประกันภัยนี้ได้ถูกรับประกันภัยโดยบริษัทสมาชิกที่ผ่านการอนุมัติของบริษัทประกันภัย AIG หรือหุ้นส่วนในเครือข่าย ข้อกำหนดฉบับเต็มที่เกี่ยวข้องกับแผนการประกันภัยเหล่านี้ได้แสดงไว้ในกรมธรรม์ประกันภัยหลักในแฟ้มข้อมูลของบริษัท Mastercard Asia/Pacific Pte. Ltd. หากมีข้อแตกต่างใด ๆ ระหว่างเอกสารฉบับนี้และกรมธรรม์ประกันภัยหลัก หรือสัญญาของ Mastercard ที่มีผลใช้บังคับสำหรับสิทธิประโยชน์อื่น ๆ แล้ว กรมธรรม์ประกันภัยหลักหรือสัญญาของ Mastercard ที่มีผลใช้บังคับสำหรับสิทธิประโยชน์อื่นจะมีอำนาจเหนือกว่า บริษัทประกันภัยมีอำนาจเด็ดขาดในการตัดสินและตอบสนองต่อการเรียกร้องค่าสินไหมทดแทน การแสดงความเห็น ข้อสงสัย ข้อโต้แย้งใด ๆ ที่เกี่ยวข้องกับการใช้โปรแกรมสิทธิประโยชน์ของผู้ถือบัตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1439, 4, N'footer_content', N'服務提供受可用性和適用法律限制約束。保險由 AIG 保險公司或網絡合作夥伴的認可成員公司承保。與保險計劃相關的完整條款由 Mastercard Asia/Pacific Pte. Ltd 的總保單歸檔。如果本文件與總保單或適用的萬事達卡其他福利合約之間存在任何差異，應以總保單或適用的萬事達卡其他福利合約為準。保險公司對任何與持卡人保險福利計劃使用有關的索賠、評論、查詢、爭議擁有最終決定權。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1440, 5, N'footer_content', N'服务提供受可用性和适用法律限制约束。保险由 AIG 保险公司或网络合作伙伴的认可成员公司承保。与保险计划相关的完整条款由 Mastercard Asia/Pacific Pte. Ltd 的总保单归档。如果本文件与总保单或适用的万事达卡其他福利合约之间存在任何差异，应以总保单或适用的万事达卡其他福利合约为准。保险公司对任何与持卡人保险福利计划使用有关的索赔、评论、查询、争议拥有最终决定权。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1441, 6, N'footer_content', N'Penyediaan layanan disesuaikan dengan ketersediaan, juga batasan hukum yang berlaku. Asuransi ditanggung oleh berbagai Perusahaan Anggota dari Perusahaan Asuransi AIG atau Mitra Jaringan yang sah. Ketentuan lengkap terkait naskah asuransi ini tercantum dalam Polis Induk yang telah disusun oleh Mastercard Asia/Pacific Pte. Ltd. Apabila terdapat ketidaksesuaian antara dokumen ini dengan Polis Utama atau dengan kontrak Mastercard yang berlaku untuk berbagai manfaat lain, maka Polis Utama atau kontrak Mastercard yang berlaku untuk manfaat-manfaat lain tersebut akan diutamakan. Perusahaan Asuransi AIG memegang wewenang final untuk membuat ketetapan dan tanggapan terhadap klaim, komentar, pertanyaan, maupun perselisihan terkait program manfaat pemegang kartu.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1442, 7, N'footer_content', N'Việc cung cấp các dịch vụ tùy thuộc vào tính khả dụng và các hạn chế pháp lý hiện hành. Phạm vi bảo hiểm được bảo lãnh bởi các Công ty Thành viên được chấp thuận của Công ty Bảo hiểm AIG hoặc Đối tác mạng lưới. Các điều khoản hoàn chỉnh liên quan đến những gói bảo hiểm này có trong (các) Hợp đồng Chính trên hồ sơ của Mastercard Asia/Pacific Pte. Ltd. Nếu có bất kỳ sự khác biệt nào giữa tài liệu này và (các) Hợp đồng Chính hoặc hợp đồng Mastercard hiện hành cho các lợi ích khác, (các) Hợp đồng Chính hoặc hợp đồng Mastercard hiện hành cho các lợi ích khác sẽ có hiệu lực chi phối. Công ty Bảo hiểm có thẩm quyền cuối cùng để xác định và trả lời các khiếu nại, nhận xét, thắc mắc, tranh chấp; liên quan đến việc sử dụng chương trình quyền lợi của chủ thẻ.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1443, 1, N'footer_title', N'2022 AIG. All rights reserved. All services offered via this website are provided by AIG to eligible Mastercard Cardholders.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1444, 2, N'footer_title', N'2022 AIG. 무단 전재 및 복제 금지. 본 웹사이트에서 제공하는 모든 서비스는 해당하는 마스터 카드 소유자를 위해 AIG에서 제공하고 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1445, 3, N'footer_title', N'2022 AIG สงวนลิขสิทธิ์ การบริการทั้งหมดที่เสนอผ่านเว็บไซต์นี้ได้จัดหาโดย AIG สำหรับผู้ถือบัตรมาสเตอร์การ์ดที่มีคุณสมบัติเหมาะสมในการรับสิทธิ์เท่านั้น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1446, 4, N'footer_title', N'2022 AIG.版權所有。本網站的所有服務均由 AIG 為合資格的萬事達卡持卡人提供。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1447, 5, N'footer_title', N'2022 AIG. 版权所有。本网站的所有服务均由 AIG 为合资格的万事达卡持卡人提供。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1448, 6, N'footer_title', N'2022 AIG. Hak cipta dilindungi undang-undang. Semua layanan yang ditawarkan melalui situs web ini disediakan oleh AIG kepada para Pemegang Kartu Mastercard yang memenuhi syarat.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1449, 7, N'footer_title', N'2022 AIG. Đã đăng ký bản quyền. Tất cả các dịch vụ qua trang web này đều được AIG cung cấp cho các Chủ thẻ Mastercard đủ điều kiện.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1450, 1, N'footnote_32358', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1451, 2, N'footnote_32358', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1452, 3, N'footnote_32358', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1453, 4, N'footnote_32358', N'<b>請注意：子限制適用於受上述旅遊保險保障的配偶、子女。 </b><br/> 配偶及子女的分項給付限額相當於所有旅遊保險金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1454, 5, N'footnote_32358', N'<b>请注意：子限制适用于受上述旅游保险保障的配偶、子女。 </b><br/> 配偶及子女的分项给付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1455, 6, N'footnote_32358', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1456, 7, N'footnote_32358', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1457, 1, N'footnote_32360', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1458, 2, N'footnote_32360', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1459, 3, N'footnote_32360', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1460, 4, N'footnote_32360', N'<b>請注意：子限制適用於受上述旅遊保險保障的配偶、子女。 </b><br/> 配偶及子女的分項給付限額相當於所有旅遊保險金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1461, 5, N'footnote_32360', N'<b>请注意：子限制适用于受上述旅游保险保障的配偶、子女。 </b><br/> 配偶及子女的分项给付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1462, 6, N'footnote_32360', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1463, 7, N'footnote_32360', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1464, 1, N'footnote_32362', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1465, 2, N'footnote_32362', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1466, 3, N'footnote_32362', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1467, 4, N'footnote_32362', N'<b>請注意：子限制適用於受上述旅遊保險保障的配偶、子女。 </b><br/> 配偶及子女的分項給付限額相當於所有旅遊保險金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1468, 5, N'footnote_32362', N'<b>请注意：子限制适用于受上述旅游保险保障的配偶、子女。 </b><br/> 配偶及子女的分项给付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1469, 6, N'footnote_32362', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1470, 7, N'footnote_32362', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1471, 1, N'footnote_32364', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1472, 2, N'footnote_32364', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1473, 3, N'footnote_32364', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1474, 4, N'footnote_32364', N'<b>請注意：子限制適用於受上述旅遊保險保障的配偶、子女。 </b><br/> 配偶及子女的分項給付限額相當於所有旅遊保險金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1475, 5, N'footnote_32364', N'<b>请注意：子限制适用于受上述旅游保险保障的配偶、子女。 </b><br/> 配偶及子女的分项给付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1476, 6, N'footnote_32364', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1477, 7, N'footnote_32364', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1478, 1, N'footnote_32366', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1479, 2, N'footnote_32366', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1480, 3, N'footnote_32366', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1481, 4, N'footnote_32366', N'<b>請注意：子限制適用於受上述旅遊保險保障的配偶、子女。 </b><br/> 配偶及子女的分項給付限額相當於所有旅遊保險金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1482, 5, N'footnote_32366', N'<b>请注意：子限制适用于受上述旅游保险保障的配偶、子女。 </b><br/> 配偶及子女的分项给付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1483, 6, N'footnote_32366', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1484, 7, N'footnote_32366', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1485, 1, N'generate_send', N'COMPLETE REGISTRATION')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1486, 2, N'generate_send', N'가입 완료')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1487, 3, N'generate_send', N'ลงทะเบียนเสร็จสมบูรณ์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1488, 4, N'generate_send', N'完成註冊')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1489, 5, N'generate_send', N'完成注册')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1490, 6, N'generate_send', N'SELESAIKAN PENDAFTARAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1491, 7, N'generate_send', N'HOÀN THÀNH ĐĂNG KÝ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1492, 1, N'ipid_file_label', N'Benefit Summary')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1493, 2, N'ipid_file_label', N'보장 내역 요약')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1494, 3, N'ipid_file_label', N'สรุปข้อมูลสิทธิประโยชน์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1495, 4, N'ipid_file_label', N'保險福利摘要')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1496, 6, N'ipid_file_label', N'Ringkasan Manfaat')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1497, 7, N'ipid_file_label', N'Tóm tắt quyền lợi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1498, 1, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1499, 2, N'ipid_file_name', N'보장 내역 요약.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1500, 3, N'ipid_file_name', N'สรุปข้อมูลสิทธิประโยชน์.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1501, 4, N'ipid_file_name', N'保險福利摘要.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1502, 6, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1503, 7, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1504, 2, N'ko', N'한국어')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1505, 1, N'last_name', N'LAST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1506, 2, N'last_name', N'성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1507, 3, N'last_name', N'นามสกุล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1508, 4, N'last_name', N'姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1509, 5, N'last_name', N'姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1510, 6, N'last_name', N'NAMA BELAKANG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1511, 7, N'last_name', N'HỌ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1512, 1, N'last_name_info', N'Last name of Mastercard cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1513, 2, N'last_name_info', N'마스터카드 소유주의 성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1514, 3, N'last_name_info', N'นามสกุลของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1515, 4, N'last_name_info', N'萬事達卡持卡人的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1516, 5, N'last_name_info', N'万事达卡持卡人的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1517, 6, N'last_name_info', N'Nama belakang pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1518, 7, N'last_name_info', N'Họ của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1519, 1, N'mail_10_digits', N'First 10 digits of Mastercard:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1520, 2, N'mail_10_digits', N'마스터 카드의 첫 10자리 번호:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1521, 3, N'mail_10_digits', N'หมายเลข 10 หลักแรกของมาสเตอร์การ์ดของท่าน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1522, 4, N'mail_10_digits', N'萬事達卡的前 10 位數字：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1523, 5, N'mail_10_digits', N'万事达的前 10 位数字：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1524, 6, N'mail_10_digits', N'10 digit pertama Mastercard:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1525, 7, N'mail_10_digits', N'10 chữ số đầu tiên trên thẻ Mastercard:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1526, 1, N'mail_attached', N'Attached to this email you will find a copy of the terms & conditions and Insurance Product Information Document. Please keep these documents in a safe place. You might consider downloading and saving these documents for future use as you may need these documents in the event of a claim.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1527, 2, N'mail_attached', N'본 이메일 첨부파일로 약관 및 보험 상품 정보 서류를 받아보시게 됩니다. 안전한 곳에 보관해주십시오. 청구 시점에 본 서류가 필요할 수 있기에, 추후 사용을 위해 본 문서를 다운로드 및 저장하실 수도 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1528, 3, N'mail_attached', N'เอกสารที่แนบมาพร้อมกับอีเมลฉบับนี้เป็นสำเนาของข้อตกลงและเงื่อนไขและเอกสารข้อมูลผลิตภัณฑ์ประกันภัย โปรดเก็บรักษาเอกสารเหล่านี้ไว้ในสถานที่ที่ปลอดภัย ท่านอาจจะพิจารณาดาวน์โหลดและบันทึกเอกสารเหล่านี้เก็บไว้เพื่อใช้ในอนาคตเนื่องจากท่านอาจจำเป็นต้องใช้เอกสารเหล่านี้ในกรณีของการเรียกร้องค่าสินไหมทดแทน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1529, 4, N'mail_attached', N'本電子郵件附有條款和細則和保險產品資料文件的副本。請將這些文件存放在安全的地方。您可以考慮下載和保存這些文件以備不時之需，因為索賠時您可能需要這些文件。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1530, 5, N'mail_attached', N'本电子邮件附有条款和条件和保险产品资料文件的副本。请将这些文件存放在安全的地方。您可以考虑下载和保存这些文件以备不时之需，因为索赔时您可能需要这些文件。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1531, 6, N'mail_attached', N'Salinan syarat & ketentuan serta Dokumen Informasi Produk Asuransi terlampir pada email ini. Harap simpan dokumen-dokumen ini di tempat yang aman. Anda dapat mengunduh dan menyimpan berbagai dokumen ini untuk digunakan kembali apabila dibutuhkan saat mengajukan klaim.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1532, 7, N'mail_attached', N'Đính kèm với email này là một bản sao của các điều khoản & điều kiện, cùng Tài liệu Thông tin sản phẩm bảo hiểm. Hãy giữ các tài liệu này ở nơi an toàn. Bạn có thể cân nhắc việc tải xuống và lưu các tài liệu này để sử dụng về sau vì đây sẽ là những tài liệu bạn có thể cần đến trong trường hợp yêu cầu bảo hiểm.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1533, 1, N'mail_automatic', N'This message has been generated automatically – Please do not answer this message')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1534, 2, N'mail_automatic', N'본 메시지는 자동으로 생성되었습니다. 본 메시지에 답장하지 마시기 바랍니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1535, 3, N'mail_automatic', N'ข้อความนี้ได้สร้างขึ้นโดยอัตโนมัติ – โปรดอย่าตอบกลับข้อความนี้')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1536, 4, N'mail_automatic', N'此訊息為自動生成訊息，請不要回覆')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1537, 5, N'mail_automatic', N'此讯息为自动生成讯息，请不要回覆')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1538, 6, N'mail_automatic', N'Ini adalah pesan otomatis – Anda tidak perlu membalas pesan ini')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1539, 7, N'mail_automatic', N'Đây là thư do hệ thống tạo tự động – Vui lòng không trả lời thư này')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1540, 1, N'mail_confirmation', N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1541, 2, N'mail_confirmation', N'여행자 보험 가입 및 개시 확인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1542, 3, N'mail_confirmation', N'การยืนยันการลงทะเบียนและเปิดใช้ประกันภัยการเดินทางของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1543, 4, N'mail_confirmation', N'確認註冊和激活您的旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1544, 5, N'mail_confirmation', N'确认注册和激活您的旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1545, 6, N'mail_confirmation', N'Konfirmasi pendaftaran dan pengaktifan Asuransi Perjalanan Anda')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1546, 7, N'mail_confirmation', N'Xác nhận đăng ký và kích hoạt Bảo hiểm Du lịch của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1547, 1, N'mail_confirmation_number', N'Registration confirmation number:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1548, 2, N'mail_confirmation_number', N'가입 확정 번호:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1549, 3, N'mail_confirmation_number', N'หมายเลขการยืนยันการลงทะเบียน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1550, 4, N'mail_confirmation_number', N'註冊確認號碼：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1551, 6, N'mail_confirmation_number', N'Nomor konfirmasi pendaftaran:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1552, 7, N'mail_confirmation_number', N'Mã xác nhận đăng ký:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1553, 1, N'mail_contact', N'Contacting AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1554, 2, N'mail_contact', N'AIG에 연락하기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1555, 3, N'mail_contact', N'การติดต่อกับ AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1556, 4, N'mail_contact', N'聯繫 AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1557, 5, N'mail_contact', N'联系 AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1558, 6, N'mail_contact', N'Hubungi AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1559, 7, N'mail_contact', N'Liên hệ AIG')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1560, 1, N'mail_contact_2', N'You can contact AIG if you have any questions about the insurance coverage or if you need to submit a claim. Please refer to the terms and conditions attached to this email for contact details and claims procedure.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1561, 2, N'mail_contact_2', N'보험 보장과 관련한 문의 사항이 있으시거나 청구를 제출해야 할 경우 AIG에 연락하실 수도 있습니다. 연락 정보 및 청구 진행는 본 이메일에 첨부된 약관을 확인해주십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1562, 3, N'mail_contact_2', N'ท่านสามารถติดต่อกับ AIG หากท่านมีคำถามใด ๆ เกี่ยวกับความคุ้มครองของประกันภัยหรือหากท่านจำเป็นต้องยื่นเอกสารเพื่อเรียกร้องค่าสินไหมทดแทน โปรดอ้างถึงข้อตกลงและเงื่อนไขที่ได้แนบมาพร้อมกับอีเมลฉบับนี้สำหรับข้อมูลการติดต่อและขั้นตอนการเรียกร้องค่าสินไหมทดแทน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1563, 4, N'mail_contact_2', N'如果您對承保範圍有任何疑問或需要提交索賠，可以聯繫 AIG。請參閱本電子郵件附件中的條款和細則，了解聯繫方式和索賠程序。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1564, 5, N'mail_contact_2', N'如果您对承保范围有任何疑问或需要提交索赔，可以联系 AIG。请参阅本电子邮件附件中的条款和条件，了解联系方式和索赔程序。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1565, 6, N'mail_contact_2', N'Silakan hubungi AIG jika Anda memiliki pertanyaan seputar pertanggungan asuransi atau untuk mengajukan klaim. Untuk detail narahubung dan prosedur klaim, baca syarat dan ketentuan yang terlampir pada email ini.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1566, 7, N'mail_contact_2', N'Bạn có thể liên hệ AIG nếu có bất kỳ câu hỏi nào về phạm vi bảo hiểm hoặc nếu cần yêu cầu bảo hiểm. Vui lòng tham khảo các điều khoản và điều kiện đính kèm theo email này để biết thông tin liên hệ và quá trình yêu cầu bảo hiểm.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1567, 1, N'mail_coverage_benefits', N'Coverage Included:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1568, 2, N'mail_coverage_benefits', N'포함된 보장 내역:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1569, 3, N'mail_coverage_benefits', N'ความคุ้มครองที่ครอบคลุม:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1570, 4, N'mail_coverage_benefits', N'承保範圍：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1571, 5, N'mail_coverage_benefits', N'承保范围：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1572, 6, N'mail_coverage_benefits', N'Pertanggungan Mencakup:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1573, 7, N'mail_coverage_benefits', N'Phạm vi bảo hiểm bao gồm:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1574, 1, N'mail_dear', N'Dear')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1575, 2, N'mail_dear', N'귀하')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1576, 3, N'mail_dear', N'เรียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1577, 4, N'mail_dear', N'親愛的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1578, 5, N'mail_dear', N'亲爱的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1579, 6, N'mail_dear', N'Yang terhormat')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1580, 7, N'mail_dear', N'Kính gửi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1581, 1, N'mail_details', N'REGISTRATION DETAILS:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1582, 2, N'mail_details', N'가입 상세 내역:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1583, 3, N'mail_details', N'รายละเอียดการลงทะเบียน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1584, 4, N'mail_details', N'註冊詳情：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1585, 5, N'mail_details', N'注册详情：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1586, 6, N'mail_details', N'DETAIL PENDAFTARAN:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1587, 7, N'mail_details', N'THÔNG TIN ĐĂNG KÝ:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1588, 1, N'mail_due_condition', N'Click the link below to check whether you are still eligible to renew your complimentary Travel Insurance, arranged by Mastercard, for another 12 months.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1589, 2, N'mail_due_condition', N'아래 링크를 클릭해 마스터카드에서 제공하는 무료 여행자 보험을 12개월 동안 추가로 이용하실 수 있는지 확인해주십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1590, 3, N'mail_due_condition', N'โปรดคลิกที่ลิ้งก์ด้านล่างเพื่อตรวจสอบว่าท่านยังคงมีคุณสมบัติเหมาะสมที่จะต่ออายุประกันภัยการเดินทางเพิ่มไปอีก 12 เดือนโดยไม่คิดค่าใช้จ่ายของท่าน ซึ่งจัดหาโดย Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1591, 4, N'mail_due_condition', N'單擊下面鏈接以檢查您是否仍有資格續保萬事達卡提供的免費旅遊保險，為期 12 個月。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1592, 5, N'mail_due_condition', N'单击下面链接以检查您是否仍有资格续保万事达卡提供的免费旅游保险，为期 12 个月。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1593, 6, N'mail_due_condition', N'Klik tautan di bawah ini untuk mengetahui apakah Anda masih memenuhi syarat untuk memperpanjang Asuransi Perjalanan gratis Anda, disiapkan oleh Mastercard, untuk 12 bulan berikutnya.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1594, 7, N'mail_due_condition', N'Nhấp vào liên kết sau để xem bạn còn đủ điều kiện gia hạn Bảo hiểm Du lịch miễn phí do Mastercard cung cấp thêm 12 tháng hay không.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1595, 1, N'mail_due_expires', N'Your complimentary Travel insurance which includes Overseas Travel Medical benefits, will expire in')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1596, 2, N'mail_due_expires', N'해외 여행 의료 보장 내역을 포함한 귀하의 무료 여행자 보험이 다음 일자 내에 만료됩니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1597, 3, N'mail_due_expires', N'ประกันภัยการเดินทางโดยไม่คิดค่าใช้จ่ายของท่าน ซึ่งครอบคลุมผลประโยชน์ในการรักษาพยาบาลระหว่างการเดินทางในต่างประเทศจะหมดอายุใน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1598, 4, N'mail_due_expires', N'您的免費旅遊保險（包括海外旅遊醫療保險福利）即將在以下日期到期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1599, 5, N'mail_due_expires', N'您的免费旅游保险（包括海外旅游医疗保险福利）即将在以下日期到期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1600, 6, N'mail_due_expires', N'Asuransi Perjalanan gratis Anda, termasuk Manfaat Medis Perjalanan Luar Negeri, akan berakhir dalam')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1601, 7, N'mail_due_expires', N'Bảo hiểm Du lịch miễn phí của bạn bao gồm các quyền lợi Y tế du lịch ở nước ngoài sẽ hết hạn trong')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1602, 1, N'mail_due_expires_2', N'days – the exact expiry date is indicated at the bottom of this email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1603, 2, N'mail_due_expires_2', N'일 - 정확한 만료일이 본 이메일 하단에 표기되어 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1604, 3, N'mail_due_expires_2', N'วัน – วันหมดอายุที่ถูกต้องแม่นยำได้ระบุไว้ที่ส่วนท้ายของอีเมลฉบับนี้')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1605, 4, N'mail_due_expires_2', N'天 —— 確切的到期日期顯示在這封電子郵件的最底部。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1606, 5, N'mail_due_expires_2', N'天 —— 确切的到期日期显示在这封电子邮件的最底部。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1607, 6, N'mail_due_expires_2', N'hari – tepatnya pada tanggal yang tertera di bagian bawah email ini.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1608, 7, N'mail_due_expires_2', N'ngày – ngày hết hạn chính xác được nêu rõ ở cuối email này.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1609, 1, N'mail_due_extend', N'Check renewal options')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1610, 2, N'mail_due_extend', N'갱신 옵션 확인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1611, 3, N'mail_due_extend', N'ตรวจสอบทางเลือกในการต่ออายุ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1612, 4, N'mail_due_extend', N'查看續保選項')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1613, 5, N'mail_due_extend', N'查看续保选项')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1614, 6, N'mail_due_extend', N'Periksa opsi perpanjangan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1615, 7, N'mail_due_extend', N'Xem các tùy chọn gia hạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1616, 1, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1617, 2, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1618, 3, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1619, 4, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1620, 5, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1621, 6, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1622, 7, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1623, 1, N'mail_due_information', N'Your complimentary Travel Insurance, arranged by Mastercard, is valid for 12 months from registration. In order to renew your coverage for another 12 months, you will need to re-register for the complimentary insurance through a simple and secure 3-step online re-registration procedure.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1624, 2, N'mail_due_information', N'마스터카드에서 제공하는 무료 여행자보험은 가입 후 12개월 동안 유효합니다. 다시 한 번 12개월 갱신을 원하신다면, 간단하고 안전한 3단계 온라인 재가입 절차를 통해 무료 보험에 재가입하실 수 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1625, 3, N'mail_due_information', N'ประกันภัยการเดินทางโดยไม่คิดค่าใช้จ่ายของท่าน ซึ่งได้จัดหาโดย Mastercard มีผลใช้บังคับเป็นเวลา 12 เดือนนับจากวันลงทะเบียน ในการขอต่ออายุความคุ้มครองของท่านเพิ่มไปอีก 12 เดือน ท่านจะต้องลงทะเบียนใหม่อีกครั้งเพื่อขอใช้ประกันภัยโดยไม่คิดค่าใช้จ่ายผ่านขั้นตอนการลงทะเบียนใหม่ทางออนไลน์ที่ง่ายและปลอดภัยเพียง 3 ขั้นตอนเท่านั้น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1626, 4, N'mail_due_information', N'由萬事達卡提供的免費旅行保險在註冊後 12 個月內有效。為了將您的保險再續保 12 個月，您需要通過簡單且安全的 3 步在線重新註冊程序重新註冊免費保險。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1627, 5, N'mail_due_information', N'由万事达卡提供的免费旅行保险在注册后 12 个月内有效。为了将您的保险再续保 12 个月，您需要通过简单且安全的 3 步在线重新注册程序重新注册免费保险。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1628, 6, N'mail_due_information', N'Asuransi Perjalanan gratis Anda, disiapkan oleh Mastercard, berlaku 12 bulan sejak pendaftaran. Guna memperpanjang pertanggungan Anda untuk 12 bulan berikutnya, dapatkan asuransi gratis melalui prosedur pendaftaran ulang secara daring, hanya dalam 3 langkah mudah dan aman.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1629, 7, N'mail_due_information', N'Bảo hiểm Du lịch miễn phí của bạn do Mastercard cung cấp có hiệu lực trong 12 tháng kể từ khi đăng ký. Để gia hạn bảo hiểm của bạn thêm 12 tháng nữa, bạn sẽ cần đăng ký lại bảo hiểm miễn phí thông qua quy trình đăng ký lại trực tuyến gồm 3 bước bảo mật và đơn giản.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1630, 1, N'mail_due_options', N'RENEWAL OPTIONS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1631, 2, N'mail_due_options', N'갱신 옵션')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1632, 3, N'mail_due_options', N'ทางเลือกในการต่ออายุ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1633, 4, N'mail_due_options', N'續保選項')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1634, 5, N'mail_due_options', N'续保选项')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1635, 6, N'mail_due_options', N'OPSI PERPANJANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1636, 7, N'mail_due_options', N'CÁC TÙY CHỌN GIA HẠN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1637, 1, N'mail_due_regards', N'Best regards')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1638, 2, N'mail_due_regards', N'귀하의 안녕을 기원하며 이만 줄이겠습니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1639, 3, N'mail_due_regards', N'ขอแสดงความนับถือ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1640, 4, N'mail_due_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1641, 5, N'mail_due_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1642, 6, N'mail_due_regards', N'Salam takzim')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1643, 7, N'mail_due_regards', N'Trân trọng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1644, 1, N'mail_due_title', N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1645, 2, N'mail_due_title', N'보험 만료 안내 - 갱신을 위해 귀하께서 해당하는지 다시 한 번 확인해주시기 바랍니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1646, 3, N'mail_due_title', N'ข้อความเตือนการหมดอายุของประกันภัย – โปรดตรวจสอบคุณสมบัติสำหรับการต่ออายุ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1647, 4, N'mail_due_title', N'保險到期提醒 —— 請檢查續保資格')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1648, 5, N'mail_due_title', N'保险到期提醒 —— 请检查续保资格')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1649, 6, N'mail_due_title', N'Asuransi Anda hampir berakhir – Cek apakah Anda memenuhi syarat untuk memperpanjangnya')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1650, 7, N'mail_due_title', N'Thư nhắc hết hạn bảo hiểm – Vui lòng xem điều kiện gia hạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1651, 1, N'mail_effective', N'Effective Date:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1652, 2, N'mail_effective', N'유효일:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1653, 3, N'mail_effective', N'วันที่มีผลใช้บังคับ:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1654, 4, N'mail_effective', N'有效日期:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1655, 5, N'mail_effective', N'有效日期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1656, 6, N'mail_effective', N'Tanggal Berlaku:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1657, 7, N'mail_effective', N'Ngày có hiệu lực:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1658, 1, N'mail_expire', N'Expiry Date:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1659, 2, N'mail_expire', N'만료일:')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1660, 3, N'mail_expire', N'วันหมดอายุ:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1661, 4, N'mail_expire', N'到期日期:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1662, 5, N'mail_expire', N'到期日期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1663, 6, N'mail_expire', N'Tanggal Berakhir:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1664, 7, N'mail_expire', N'Ngày hết hạn:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1665, 1, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. is incorporated and domiciled in Singapore. The address of its registered office is 78 Shenton Way, #09-16, Singapore 079120. The Company’s immediate and ultimate parents are AIG APAC Holdings Pte. Ltd. (incorporated in Singapore) and American International Group, Inc. (“AIG”) (incorporated in the United States of America) respectively. The purpose of this website is to enable eligible Mastercard cardholders to activate their complimentary insurance cover arranged by Mastercard Asia/Pacific Pte. Ltd. and underwritten by AIG Asia Pacific Insurance Pte. Ltd.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1666, 2, N'mail_footer', N'AIG 아시아 태평양지부 유한 회사 는 싱가포르에 설립되어 주소를 두고 있습니다. 등록된 법인 주소는 78 Shenton Way, #09-16, Singapore 079120입니다. 법인의 직계 및 최상위 모기업은 각각 싱가포르에 설립된 AIG APAC Holdings 유한 회사 및 미국에 설립된 주식회사 American International Group (“AIG”) 입니다. 본 웹사이트의 목적은 해당하는 마스터카드 소유주가 마스터카드 아시아/태평양지부 유한 회사에서 제공하고 AIG 아시아 태평양 보험 유한 회사에서 인수된 무료 보험 보장을 활성화시키는 것입니다 .')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1667, 3, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. ได้ก่อตั้งเป็นบริษัทตามกฎหมายและตั้งอยู่ในสิงคโปร์ ที่อยู่ของสำนักงานจดทะเบียนคือ 78 Shenton Way, #09-16, Singapore 079120 บริษัทแม่ของบริษัทคือ AIG APAC Holdings Pte. Ltd (ได้ก่อตั้งเป็นบริษัทตามกฎหมาย ในประเทศสิงคโปร์) และกลุ่มบริษัท American International Group, Inc. (“AIG”) (ได้ก่อตั้งเป็นบริษัทตามกฎหมายในประเทศสหรัฐ อเมริกา) ตามลำดับ วัตถุประสงค์ของเว็บไซต์นี้คือ เพื่อทำให้ผู้ถือบัตรมาสเตอร์การ์ดที่มีสิทธิ์สามารถเปิดใช้ความคุ้มครองจากประกันภัยโดยไม่คิดค่าใช้จ่ายซึ่งจัดหาโดยบริษัท Mastercard Asia/Pacific Pte. Ltd. และรับประกันภัยโดยบริษัท AIG Asia Pacific Insurance Pte. Ltd.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1668, 4, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. 在新加坡註冊成立。 其註冊辦事處的地址為 78 Shenton Way, #09-16, Singapore 079120。 該公司的直接和最終母公司分別是 AIG APAC Holdings Pte.Ltd. （在新加坡註冊成立）和 American International Group, Inc.（“AIG”）（在美國註冊成立） 。 本網站讓合資格的萬事達卡持卡人激活由Mastercard Asia/Pacific Pte. Ltd. 提供的、並由 AIG Asia Pacific Insurance Pte. Ltd. 承保的免費保險。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1669, 5, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. 在新加坡注册成立。其注册办事处的地址为 78 Shenton Way, #09-16, Singapore 079120。该公司的直接和最终母公司分别是 AIG APAC Holdings Pte.Ltd.（在新加坡注册成立）和 American International Group, Inc.（“AIG”）（在美国注册成立）。本网站让合资格的万事达卡持卡人激活由 Mastercard Asia/Pacific Pte. Ltd. 提供的、并由 AIG Asia Pacific Insurance Pte. Ltd. 承保的免费保险。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1670, 6, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. berbadan hukum dan berkedudukan di Singapura. Alamat kantornya yang terdaftar adalah 78 Shenton Way, #09-16, Singapore 079120. Induk langsung dan utama Perusahaan ini adalah AIG APAC Holdings Pte. Ltd. (berbadan hukum di Singapura) dan American International Group, Inc. (“AIG”) (berbadan hukum di Amerika Serikat). Situs web ini bertujuan agar para pemegang kartu Mastercard yang memenuhi syarat dapat mengaktifkan pertanggungan asuransi gratis mereka, disiapkan oleh Mastercard Asia/Pacific Pte. Ltd. dan ditanggung oleh AIG Asia Pacific Insurance Pte. Ltd.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1671, 7, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. được thành lập và có trụ sở tại Singapore. Địa chỉ đăng ký văn phòng là 78 Shenton Way, #09-16, Singapore 079120. Công ty mẹ trực tiếp của Công ty là AIG APAC Holdings Pte. Ltd. (được thành lập tại Singapore), còn công ty mẹ tối cao là American International Group, Inc. (“AIG”) (được thành lập tại Hoa Kỳ). Mục đích của trang web này là cho phép các chủ thẻ Mastercard đủ điều kiện kích hoạt bảo hiểm miễn phí do Mastercard Asia/Pacific Pte. Ltd. cung cấp và được bảo lãnh bởi AIG Asia Pacific Insurance Pte. Ltd.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1672, 1, N'mail_insurance', N'Insurance documentation')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1673, 2, N'mail_insurance', N'보험 서류')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1674, 3, N'mail_insurance', N'เอกสารประกันภัย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1675, 4, N'mail_insurance', N'保險文件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1676, 5, N'mail_insurance', N'保险文件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1677, 6, N'mail_insurance', N'Dokumentasi asuransi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1678, 7, N'mail_insurance', N'Tài liệu bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1679, 1, N'mail_insured', N'Insured Name:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1680, 2, N'mail_insured', N'보험명:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1681, 3, N'mail_insured', N'ชื่อผู้เอาประกันภัย:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1682, 4, N'mail_insured', N'受保人姓名：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1683, 5, N'mail_insured', N'受保人姓名：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1684, 6, N'mail_insured', N'Nama Tertanggung:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1685, 7, N'mail_insured', N'Tên người được bảo hiểm:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1686, 1, N'mail_package_name', N'Package Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1687, 2, N'mail_package_name', N'패키지명')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1688, 3, N'mail_package_name', N'ชื่อแพ็กเกจ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1689, 4, N'mail_package_name', N'保險計劃名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1690, 5, N'mail_package_name', N'保险计划名称')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1691, 6, N'mail_package_name', N'Nama Paket')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1692, 7, N'mail_package_name', N'Tên gói')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1693, 1, N'mail_regards', N'Best regards')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1694, 2, N'mail_regards', N'귀하의 안녕을 기원하며 이만 줄이겠습니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1695, 3, N'mail_regards', N'ขอแสดงความนับถือ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1696, 4, N'mail_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1697, 5, N'mail_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1698, 6, N'mail_regards', N'Salam takzim')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1699, 7, N'mail_regards', N'Trân trọng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1700, 1, N'mail_thanks', N'Thank you for activating your Travel Insurance, arranged by Mastercard that includes Overseas Travel Medical Benefits. <br>The registration was completed with a Mastercard payment card starting with the following 10 digits:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1701, 2, N'mail_thanks', N'해외 여행자 의료 보험을 포함해 마스터카드에서 제공하는 여행자 보험을 개시해주셔서 감사합니다. <br>가입은 다음 10자리로 시작하는 마스터카드 결제 카드로 완료되었습니다:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1702, 3, N'mail_thanks', N'ขอขอบคุณอย่างยิ่งที่ได้เปิดใช้ประกันภัยการเดินทางของท่านที่จัดหาโดย Mastercard ซึ่งรวมถึงสิทธิประโยชน์ทางการแพทย์สำหรับการเดินทางในต่างประเทศ. <br>การลงทะเบียนได้ดำเนินการเสร็จสิ้นแล้วด้วยบัตรมาสเตอร์การ์ดที่ใช้ชำระเงินซึ่งมีหมายเลข 10 หลักต่อไปนี้:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1703, 4, N'mail_thanks', N'感謝您激活由萬事達卡提供的包含海外旅遊醫療保險的旅遊保險。使用以以下 10 位數字開頭的萬事達卡支付卡完成註冊:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1704, 5, N'mail_thanks', N'感谢您激活由万事达卡提供的包含海外旅游医疗保险的旅游保险。<br>使用以以下 10 位数字开头的万事达卡支付卡完成注册：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1705, 6, N'mail_thanks', N'Terima kasih telah mengaktifkan Asuransi Perjalanan yang disiapkan oleh Mastercard dan mencakup Manfaat Medis Perjalanan Luar Negeri. <br>Pendaftaran telah diselesaikan menggunakan kartu pembayaran Mastercard dengan 10 digit awal berikut:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1706, 7, N'mail_thanks', N'Cảm ơn bạn đã kích hoạt Bảo hiểm Du lịch của mình, đây là bảo hiểm do Mastercard cung cấp, bao gồm các Quyền lợi Y tế du lịch ở nước ngoài. <br>Việc đăng ký đã hoàn tất với thẻ thanh toán Mastercard bắt đầu bằng 10 chữ số sau:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1707, 1, N'next', N'Next')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1708, 2, N'next', N'다음')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1709, 3, N'next', N'ถัดไป')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1710, 4, N'next', N'下一步')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1711, 5, N'next', N'下一步')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1712, 6, N'next', N'Lanjut')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1713, 7, N'next', N'Tiếp theo')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1714, 1, N'no', N'No')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1715, 2, N'no', N'아니오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1716, 3, N'no', N'ไม่ใช่')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1717, 4, N'no', N'不是')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1718, 5, N'no', N'不是')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1719, 6, N'no', N'Tidak')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1720, 7, N'no', N'Không')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1721, 1, N'package_name', N'Package Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1722, 2, N'package_name', N'패키지명')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1723, 3, N'package_name', N'ชื่อแพ็กเกจ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1724, 4, N'package_name', N'保險計劃名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1725, 5, N'package_name', N'保险计划名称')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1726, 6, N'package_name', N'Nama Paket')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1727, 7, N'package_name', N'Tên gói')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1728, 1, N'package_name_32358', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1729, 2, N'package_name_32358', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1730, 3, N'package_name_32358', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1731, 4, N'package_name_32358', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1732, 5, N'package_name_32358', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1733, 6, N'package_name_32358', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1734, 7, N'package_name_32358', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1735, 1, N'package_name_32360', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1736, 2, N'package_name_32360', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1737, 3, N'package_name_32360', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1738, 4, N'package_name_32360', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1739, 5, N'package_name_32360', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1740, 6, N'package_name_32360', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1741, 7, N'package_name_32360', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1742, 1, N'package_name_32362', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1743, 2, N'package_name_32362', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1744, 3, N'package_name_32362', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1745, 4, N'package_name_32362', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1746, 5, N'package_name_32362', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1747, 6, N'package_name_32362', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1748, 7, N'package_name_32362', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1749, 1, N'package_name_32364', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1750, 2, N'package_name_32364', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1751, 3, N'package_name_32364', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1752, 4, N'package_name_32364', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1753, 5, N'package_name_32364', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1754, 6, N'package_name_32364', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1755, 7, N'package_name_32364', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1756, 1, N'package_name_32366', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1757, 2, N'package_name_32366', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1758, 3, N'package_name_32366', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1759, 4, N'package_name_32366', N'旅遊保險')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1760, 5, N'package_name_32366', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1761, 6, N'package_name_32366', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1762, 7, N'package_name_32366', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1763, 1, N'package_view_details', N'Click for more details')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1764, 2, N'package_view_details', N'클릭해서 더 보기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1765, 3, N'package_view_details', N'คลิกเพื่ออ่านรายละเอียดเพิ่มเติม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1766, 4, N'package_view_details', N'点击了解更多详情')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1767, 5, N'package_view_details', N'点击了解更多详情')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1768, 6, N'package_view_details', N'Klik untuk detail lainnya')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1769, 7, N'package_view_details', N'Nhấp để xem thêm chi tiết')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1770, 1, N'passport', N'Passport')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1771, 2, N'passport', N'여권')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1772, 3, N'passport', N'หนังสือเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1773, 4, N'passport', N'護照')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1774, 5, N'passport', N'护照')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1775, 6, N'passport', N'Paspor')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1776, 7, N'passport', N'Hộ chiếu')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1777, 1, N'placeholder_bin', N'10 digits of your payment card')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1778, 2, N'placeholder_bin', N'결제 카드 열 자리')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1779, 3, N'placeholder_bin', N'หมายเลข 10 หลักของบัตรชำระเงินของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1780, 4, N'placeholder_bin', N'支付卡的 10 位數字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1781, 5, N'placeholder_bin', N'支付卡的 10 位数字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1782, 6, N'placeholder_bin', N'10 digit kartu pembayaran Anda')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1783, 7, N'placeholder_bin', N'10 chữ số trên thẻ thanh toán của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1784, 1, N'placeholder_firstName', N'Enter your first name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1785, 2, N'placeholder_firstName', N'이름을 입력하십시오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1786, 3, N'placeholder_firstName', N'ใส่ชื่อของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1787, 4, N'placeholder_firstName', N'輸入您的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1788, 5, N'placeholder_firstName', N'输入您的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1789, 6, N'placeholder_firstName', N'Masukkan nama depan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1790, 7, N'placeholder_firstName', N'Nhập tên của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1791, 1, N'placeholder_lastName', N'Enter your last name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1792, 2, N'placeholder_lastName', N'성을 입력하십시오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1793, 3, N'placeholder_lastName', N'ใส่นามสกุลของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1794, 4, N'placeholder_lastName', N'輸入您的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1795, 5, N'placeholder_lastName', N'输入您的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1796, 6, N'placeholder_lastName', N'Masukkan nama belakang')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1797, 7, N'placeholder_lastName', N'Nhập họ của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1798, 1, N'product_summary', N'Product Summary')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1799, 2, N'product_summary', N'제품 요약')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1800, 3, N'product_summary', N'สรุปข้อมูลผลิตภัณฑ์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1801, 4, N'product_summary', N'產品摘要')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1802, 5, N'product_summary', N'产品摘要')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1803, 6, N'product_summary', N'Ringkasan Produk')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1804, 7, N'product_summary', N'Tóm tắt sản phẩm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1805, 1, N'required', N'Required')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1806, 2, N'required', N'필수')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1807, 3, N'required', N'จำเป็น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1808, 4, N'required', N'必填')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1809, 5, N'required', N'必填')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1810, 6, N'required', N'Wajib diisi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1811, 7, N'required', N'Bắt buộc')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1812, 1, N'select', N'Select')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1813, 2, N'select', N'선택')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1814, 3, N'select', N'เลือก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1815, 4, N'select', N'選擇')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1816, 5, N'select', N'选择')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1817, 6, N'select', N'Pilih')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1818, 7, N'select', N'Chọn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1819, 1, N'terms', N'Please carefully read the documents below; if you agree to the terms and conditions in these documents, please tick the box to accept the terms and conditions and click “Next” to proceed to the next step.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1820, 2, N'terms', N'아래 문서를 주의 깊게 읽어주십시오. 본 문서의 약관에 동의하신다면, 상자에 체크 표시를 해 약관에 동의해주시고 다음 단계로 계속하기 위해 다음을 클릭해주십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1821, 3, N'terms', N'โปรดอ่านเอกสารด้านล่างอย่างละเอียดถี่ถ้วน หากท่านยอมรับข้อตกลงและเงื่อนไขในเอกสารเหล่านี้ โปรดทำเครื่องหมายถูกในกล่องเพื่อยอมรับข้อตกลงและเงื่อนไข และจากนั้นให้คลิก “ทำต่อไป” เพื่อดำเนินการในขั้นตอนถัดไป')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1822, 4, N'terms', N'請仔細閱讀以下文件；如果您同意文件中的條款和細則，請勾選方框以接受條款和細則，然後單擊「下一步」繼續。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1823, 5, N'terms', N'请仔细阅读以下文件；如果您同意文件中的条款和条件，请勾选方框以接受条款和条件，然后单击“下一步”继续。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1824, 6, N'terms', N'Baca dokumen-dokumen di bawah ini dengan cermat; apabila Anda menerima semua syarat dan ketentuan di dalamnya, silakan centang kotak sebagai tanda persetujuan, lalu klik “Lanjut” untuk menuju langkah berikutnya.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1825, 7, N'terms', N'Vui lòng đọc kỹ các tài liệu dưới đây; nếu bạn đồng ý với các điều khoản và điều kiện trong các tài liệu này, vui lòng đánh dấu vào ô chấp nhận các điều khoản và điều kiện rồi nhấp vào “Tiếp theo” để chuyển sang bước tiếp theo.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1826, 1, N'terms_and_conditions_file_label', N'Terms and conditions')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1827, 2, N'terms_and_conditions_file_label', N'약관')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1828, 3, N'terms_and_conditions_file_label', N'ข้อตกลงและเงื่อนไข')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1829, 4, N'terms_and_conditions_file_label', N'條款和細則')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1830, 5, N'terms_and_conditions_file_label', N'条款和条件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1831, 6, N'terms_and_conditions_file_label', N'Syarat dan ketentuan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1832, 7, N'terms_and_conditions_file_label', N'Điều khoản và điều kiện')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1833, 1, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1834, 2, N'terms_and_conditions_file_name', N'약관.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1835, 3, N'terms_and_conditions_file_name', N'ข้อตกลงและเงื่อนไข.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1836, 4, N'terms_and_conditions_file_name', N'條款和細則.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1837, 5, N'terms_and_conditions_file_name', N'条款和条件.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1838, 6, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1839, 7, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1840, 1, N'terms_check', N'I have read, understood and accept the terms and conditions')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1841, 2, N'terms_check', N'약관을 읽고 이해하며 상기 내용에 동의합니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1842, 3, N'terms_check', N'ข้าพเจ้าได้อ่าน เข้าใจ และยอมรับข้อตกลงและเงื่อนไข')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1843, 4, N'terms_check', N'我已閱讀、理解並接受條款和細則')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1844, 5, N'terms_check', N'我已阅读、理解并接受条款和条件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1845, 6, N'terms_check', N'Saya telah membaca, memahami, dan menerima semua syarat dan ketentuan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1846, 7, N'terms_check', N'Tôi đã đọc, hiểu và chấp nhận các điều khoản và điều kiện')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1847, 1, N'terms_header', N'Mastercard Asia/Pacific Pte. Ltd. has arranged complimentary Travel Insurance benefits for eligible Mastercard cardholders. On this page you can find out what benefits are included in the insurance policy, register and activate the cover through a simple and secure 3-step registration process.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1848, 2, N'terms_header', N'마스터카드 아시아 태평양지부 유한 회사 는 해당하는 마스터카드 소유주를 위한 무료 여행자 보험을 마련했습니다. 본 페이지에서 귀하께서는 보험 약관에 어떤 보장이 포함되는지 확인하실 수 있으며, 간단하고 안전한 3단계 가입 절차를 통해 보장을 가입 및 활성화하실 수 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1849, 3, N'terms_header', N'บริษัท Mastercard Asia/Pacific Pte. Ltd. ได้จัดให้มีสิทธิประโยชน์ด้านประกันภัยการเดินทางโดยไม่คิดค่าใช้จ่ายสำหรับผู้ถือบัตรมาสเตอร์การ์ดที่มีสิทธิ์ ในหน้านี้ ท่านสามารถพบข้อมูลว่ามีผลประโยชน์ใดบ้างที่ได้รวมอยู่ในกรมธรรม์ประกันภัย ลงทะเบียนและเปิดใช้ความคุ้มครองผ่านกระบวนการลงทะเบียนที่ง่ายและปลอดภัยเพียง 3 ขั้นตอนเท่านั้น.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1850, 4, N'terms_header', N'Mastercard Asia/Pacific Pte.為合資格萬事達卡持卡人提供免費旅遊保險福利。在本頁面，您可以了解保單涵蓋的保險福利，並輕鬆地通過安全的 3 步流程完成保險註冊和激活。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1851, 5, N'terms_header', N'Mastercard Asia/Pacific Pte.为合资格万事达卡持卡人提供免费旅游保险福利。在本页面，您可以了解保单涵盖的保险福利，并轻松地通过安全的 3 步流程完成保险注册和激活。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1852, 6, N'terms_header', N'Mastercard Asia/Pacific Pte. Ltd. mempersembahkan manfaat Asuransi Perjalanan gratis kepada para pemegang kartu Mastercard yang memenuhi syarat. Di halaman ini, Anda dapat mempelajari berbagai manfaat yang tercakup dalam polis asuransi, serta mendaftar dan mengaktifkan pertanggungan melalui 3 langkah mudah dan aman.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1853, 7, N'terms_header', N'Mastercard Asia/Pacific Pte. Ltd. đã cung cấp các quyền lợi Bảo hiểm Du lịch miễn phí cho các chủ thẻ Mastercard đủ điều kiện. Trên trang này, bạn có thể tìm hiểu những quyền lợi nằm trong hợp đồng bảo hiểm, đăng ký và kích hoạt bảo hiểm thông qua quy trình đăng ký 3 bước đơn giản và an toàn.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1854, 1, N'terms_title', N'Register to activate your Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1855, 2, N'terms_title', N'여행자 보험 활성화하기 위해 가입하기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1856, 3, N'terms_title', N'ลงทะเบียนเพื่อเปิดใช้ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1857, 4, N'terms_title', N'註冊以激活您的旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1858, 5, N'terms_title', N'注册以激活您的旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1859, 6, N'terms_title', N'Silakan mendaftar untuk mengaktifkan Asuransi Perjalanan Anda')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1860, 7, N'terms_title', N'Đăng ký để kích hoạt Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1861, 3, N'th', N'ไทย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1862, 1, N'title', N'Your personal details:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1863, 2, N'title', N'귀하의 개인 정보:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1864, 3, N'title', N'รายละเอียดส่วนตัวของท่าน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1865, 4, N'title', N'您的個人資料：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1866, 5, N'title', N'您的个人信息：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1867, 6, N'title', N'Detail pribadi Anda:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1868, 7, N'title', N'Thông tin cá nhân của bạn:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1869, 1, N'verifique', N'Confirm registration:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1870, 2, N'verifique', N'가입 확인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1871, 3, N'verifique', N'ยืนยันการลงทะเบียน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1872, 4, N'verifique', N'確認註冊：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1873, 5, N'verifique', N'确认注册：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1874, 6, N'verifique', N'Konfirmasi pendaftaran:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1875, 7, N'verifique', N'Xác nhận đăng ký:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1876, 1, N'welcome', N'Your Travel Insurance journey starts here!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1877, 2, N'welcome', N'여행자 보험 여행은 여기에서 시작됩니다!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1878, 3, N'welcome', N'เริ่มต้นกระบวนการประกันภัยการเดินทางของท่านได้ที่นี่!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1879, 4, N'welcome', N'在此展開您的旅遊保險之旅！')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1880, 5, N'welcome', N'由此开始旅游保险的注册流程！')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1881, 6, N'welcome', N'Perjalanan Asuransi Perjalanan Anda dimulai di sini!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1882, 7, N'welcome', N'Hành trình Bảo hiểm Du lịch của bạn bắt đầu từ đây!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1883, 1, N'yes', N'Yes')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1884, 2, N'yes', N'예')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1885, 3, N'yes', N'ใช่')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1886, 4, N'yes', N'是')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1887, 5, N'yes', N'是')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1888, 6, N'yes', N'Ya')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1889, 7, N'yes', N'Có')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1890, 4, N'zh-hk', N'繁體中文')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1891, 1, N'mail_sent', N'You have successfully registered for your Travel Insurance, arranged by Mastercard.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1892, 2, N'mail_sent', N'귀하께서는 마스터카드에서 제공하는 여행자 보험에 성공적으로 가입하셨습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1893, 3, N'mail_sent', N'ท่านได้ลงทะเบียนประกันภัยการเดินทางของท่านซึ่งได้จัดหาโดย Mastercard สำเร็จเรียบร้อยแล้ว.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1894, 4, N'mail_sent', N'您已成功註冊 萬事達卡提供的旅遊保險。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1895, 5, N'mail_sent', N'您已成功注册万事达卡提供的旅游保险。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1896, 6, N'mail_sent', N'Anda telah berhasil mendaftarkan untuk Asuransi Perjalanan Anda, disiapkan oleh Mastercard.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1897, 7, N'mail_sent', N'Bạn đã đăng ký thành công Bảo hiểm Du lịch do Mastercard cung cấp.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1898, 1, N'mail_sent_msg', N'The registration and details of the Travel insurance will be confirmed to you by email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1899, 2, N'mail_sent_msg', N'여행자 보험 가입 및 상세 내역은 귀하께서 이메일로 확인하실 수 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1900, 3, N'mail_sent_msg', N'โดยจะมีการยืนยันการลงทะเบียนและรายละเอียดของประกันภัยการเดินทางกับท่านทางอีเมล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1901, 4, N'mail_sent_msg', N'我們將通過電子郵件向您確認旅遊保險的註冊和詳細資料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1902, 5, N'mail_sent_msg', N'我们将通过电子邮件向您确认旅游保险的注册和详细资料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1903, 6, N'mail_sent_msg', N'Konfirmasi pendaftaran dan detail Asuransi Perjalanan akan dikirimkan kepada Anda melalui email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1904, 7, N'mail_sent_msg', N'Bạn sẽ nhận được xác nhận đăng ký và thông tin Bảo hiểm Du lịch qua email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1905, 1, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1906, 2, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1907, 3, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1908, 4, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1909, 5, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1910, 6, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1911, 7, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1912, 1, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1913, 2, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1914, 3, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1915, 4, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1916, 5, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1917, 6, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1918, 7, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1919, 1, N'footer.button_end_session', N'Leave')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1920, 2, N'footer.button_end_session', N'종료')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1921, 3, N'footer.button_end_session', N'ออก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1922, 4, N'footer.button_end_session', N'離開')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1923, 5, N'footer.button_end_session', N'离开')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1924, 6, N'footer.button_end_session', N'Tutup')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1925, 7, N'footer.button_end_session', N'Rời đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1926, 1, N'footer.button_extend_session', N'Stay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1927, 2, N'footer.button_extend_session', N'유지')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1928, 3, N'footer.button_extend_session', N'อยู่ต่อ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1929, 4, N'footer.button_extend_session', N'停留')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1930, 5, N'footer.button_extend_session', N'停留')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1931, 6, N'footer.button_extend_session', N'Teruskan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1932, 7, N'footer.button_extend_session', N'Ở lại')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1933, 1, N'footer.expiresession', N'The session is about to expire. Do you wish to extend the session?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1934, 2, N'footer.expiresession', N'세션이 만료될 예정입니다. 세션을 연장하시겠습니까?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1935, 3, N'footer.expiresession', N'เซสชั่นของคุณกำลังจะหมดอายุ คุณต้องการขยายเวลาต่อหรือไม่')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1936, 4, N'footer.expiresession', N'頁面即將到期。 您想延長時間嗎？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1937, 5, N'footer.expiresession', N'页面即将到期。您想延长时间吗？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1938, 6, N'footer.expiresession', N'Sesi ini akan segera berakhir. Apakah Anda ingin meneruskan sesi ini?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1939, 7, N'footer.expiresession', N'Phiên sắp hết hạn. Bạn có muốn kéo dài phiên này không?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1940, 1, N'header.exit', N'Exit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1941, 2, N'header.exit', N'나가기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1942, 3, N'header.exit', N'ออก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1943, 4, N'header.exit', N'退出')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1944, 5, N'header.exit', N'退出')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1945, 6, N'header.exit', N'Keluar')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1946, 7, N'header.exit', N'Thoát')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1947, 5, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1948, 6, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1949, 7, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1950, 5, N'close', N'关闭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1951, 5, N'zh-cn', N'简体中文')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1952, 6, N'in', N'Bahasa')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1953, 7, N'vi', N'Tiếng Việt')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1954, 1, N'WARN_SENDING_EMAIL', N'The email has not been send due to an internal error in the process.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1955, 2, N'WARN_SENDING_EMAIL', N'프로세스 내부 오류로 이메일이 전송되지 않았습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1956, 3, N'WARN_SENDING_EMAIL', N'ยังไม่ได้ส่งอีเมลนี้เนื่องมาจากความผิดพลาดภายในที่เกิดขึ้นในกระบวนการ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1957, 4, N'WARN_SENDING_EMAIL', N'由於處理過程中出現內部錯誤，電子郵件尚未被發送。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1958, 5, N'WARN_SENDING_EMAIL', N'由于处理过程中出现内部错误，电子邮件尚未被发送。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1959, 6, N'WARN_SENDING_EMAIL', N'Email tidak terkirim karena ada kesalahan proses internal.')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1960, 7, N'WARN_SENDING_EMAIL', N'Email chưa được gửi do lỗi nội bộ trong quá trình này.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1961, 1, N'session_expired', N'Your session has expired.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1962, 2, N'session_expired', N'세션이 만료되었습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1963, 3, N'session_expired', N'ช่วงระยะเวลาการใช้งานของคุณสิ้นสุดแล้ว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1964, 4, N'session_expired', N'您的使用時段已過期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1965, 5, N'session_expired', N'会话已过期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1966, 6, N'session_expired', N'Sesi Anda telah berakhir.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1967, 7, N'session_expired', N'Phiên của bạn đã hết hạn.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1968, 1, N'ERR_UNAUTHORIZED_APPLICATION', N'Unauthorized Application.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1969, 2, N'ERR_UNAUTHORIZED_APPLICATION', N'허가되지 않은 응용 프로그램.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1970, 3, N'ERR_UNAUTHORIZED_APPLICATION', N'แอปพลิเคชั่นที่ไม่ได้รับอนุญาต')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1971, 4, N'ERR_UNAUTHORIZED_APPLICATION', N'未經授權的應用程式。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1972, 5, N'ERR_UNAUTHORIZED_APPLICATION', N'应用程序未经授权。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1973, 6, N'ERR_UNAUTHORIZED_APPLICATION', N'Aplikasi tidak sah.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1974, 7, N'ERR_UNAUTHORIZED_APPLICATION', N'Ứng dụng chưa được cấp phép.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1975, 5, N'ipid_file_label', N'保险福利概要')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1976, 5, N'ipid_file_name', N'保险福利概要.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1977, 5, N'mail_confirmation_number', N'注册确认号码：')
SET IDENTITY_INSERT [dbo].[static_label] OFF
SET IDENTITY_INSERT [dbo].[step_handler] ON 

INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (2, 1, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (3, 5, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (4, 9, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (5, 13, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (6, 17, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (11, 2, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
	EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
	NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (12, 6, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
	EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
	NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (13, 10, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
	EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
	NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (14, 14, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
	EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
	NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (15, 18, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
	EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
	NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (16, 22, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (17, 23, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (18, 25, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (19, 26, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (20, 28, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (21, 29, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (22, 31, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (23, 32, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (24, 34, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (25, 35, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (26, 37, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (27, 38, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (28, 40, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (29, 41, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (30, 43, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (31, 44, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
SET IDENTITY_INSERT [dbo].[step_handler] OFF

SELECT '--------------After--------------'
SELECT COUNT(*) FROM [dbo].[application] 
SELECT '--------------After--------------'
COMMIT TRAN
SELECT getdate() as 'Fecha hora Final'


