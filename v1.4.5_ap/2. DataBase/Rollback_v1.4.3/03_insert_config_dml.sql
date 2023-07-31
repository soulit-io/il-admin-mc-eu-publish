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

}', 0, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (2, N'mwi_HKG', N'MWI Hong Kong', N'<i class="fas fa-shopping-bag"></i> MWI Hong Kong', N'{

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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
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

}', 0, 15, N'expireDate', 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (14, N'travel_AUS', N'Travel Australia', N'<i class="fas fa-plane"></i>Travel Australia', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (15, N'travel_KOR', N'Travel Korea', N'<i class="fas fa-plane"></i>Travel Korea', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (16, N'travel_CHN', N'Travel China', N'<i class="fas fa-plane"></i>Travel China', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (17, N'travel_HKG', N'Travel Hong Kong', N'<i class="fas fa-plane"></i>Travel Hong Kong', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (18, N'travel_IDN', N'Travel Indonesia', N'<i class="fas fa-plane"></i>Travel Indonesia', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (19, N'travel_MAC', N'Travel Macao', N'<i class="fas fa-plane"></i>Travel Macao', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (20, N'travel_MYS', N'Travel Malaysa', N'<i class="fas fa-plane"></i>Travel Malaysa', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (21, N'travel_NZL', N'Travel New Zealand', N'<i class="fas fa-plane"></i>Travel New Zealand', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (22, N'travel_PHL', N'Travel Philippines', N'<i class="fas fa-plane"></i>Travel Philippines', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (23, N'travel_SGP', N'Travel Singapore', N'<i class="fas fa-plane"></i>Travel Singapore', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (24, N'travel_THA', N'Travel Thailand', N'<i class="fas fa-plane"></i>Travel Thailand', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (25, N'travel_TWN', N'Travel Taiwan', N'<i class="fas fa-plane"></i>Travel Taiwan', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
INSERT [dbo].[application] ([id], [code], [name], [description], [filter], [tracking_fields], [ticket_prefix], [cancelation_fields], [due_notification], [due_days_notification], [due_date_tracking_property], [renewable]) VALUES (26, N'travel_VNM', N'Travel Vietnam', N'<i class="fas fa-plane"></i>Travel Vietnam', N'{}', N'[
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
]', N'0', N'{}', 0, 0, NULL, 0)
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
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (22, 14, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (23, 15, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (24, 15, 2, N'여행자 보험 가입 및 개시 확인')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (25, 16, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (26, 17, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (27, 18, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (28, 19, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (29, 20, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (30, 21, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (31, 22, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (32, 23, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (33, 24, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (34, 25, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (35, 26, 1, N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (36, 16, 5, N'确认注册和激活您的旅游保险')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (37, 17, 4, N'確認註冊和激活您的旅遊保險')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (38, 18, 6, N'Konfirmasi pendaftaran dan pengaktifan Asuransi Perjalanan Anda')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (39, 19, 4, N'確認註冊和激活您的旅遊保險')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (40, 24, 3, N'การยืนยันการลงทะเบียนและเปิดใช้ประกันภัยการเดินทางของท่าน')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (41, 25, 4, N'確認註冊和激活您的旅遊保險')
INSERT [dbo].[email] ([id], [application_id], [language_id], [subject]) VALUES (42, 26, 7, N'Xác nhận đăng ký và kích hoạt Bảo hiểm Du lịch của bạn')
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
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (14, 1, 14)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (15, 1, 15)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (16, 1, 16)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (17, 1, 17)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (18, 1, 18)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (19, 1, 19)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (20, 1, 20)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (21, 1, 21)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (22, 1, 22)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (23, 1, 23)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (24, 1, 24)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (25, 1, 25)
INSERT [dbo].[landing_application] ([id], [landing_id], [application_id]) VALUES (26, 1, 26)
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
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (22, 14, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (23, 15, 2, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (24, 15, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (25, 16, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (26, 17, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (27, 18, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (28, 19, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (29, 20, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (30, 21, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (31, 22, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (32, 23, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (33, 24, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (34, 25, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (35, 26, 1, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (36, 16, 5, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (37, 17, 4, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (38, 18, 6, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (39, 19, 4, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (40, 24, 3, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (41, 25, 4, N'TravelInsurance.pdf')
INSERT [dbo].[letter] ([id], [application_id], [language_id], [file_name]) VALUES (42, 26, 7, N'TravelInsurance.pdf')
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
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (46, 1, N'travel_AUS01', N'Login', 40, N'Index', 1, 14)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (47, 1, N'travel_AUS02', N'Disclaimer', 41, N'Index', 1, 14)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (48, 1, N'travel_AUS03', N'CardHolder Information', 42, N'Index', 1, 14)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (49, 1, N'travel_AUS04', N'Trip Information', 43, N'Index', 1, 14)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (50, 1, N'travel_AUS05', N'Information Review', 44, N'Index', 1, 14)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (51, 1, N'travel_KOR01', N'Login', 45, N'Index', 1, 15)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (52, 1, N'travel_KOR02', N'Disclaimer', 46, N'Index', 1, 15)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (53, 1, N'travel_KOR03', N'CardHolder Information', 47, N'Index', 1, 15)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (54, 1, N'travel_KOR04', N'Trip Information', 48, N'Index', 1, 15)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (55, 1, N'travel_KOR05', N'Information Review', 49, N'Index', 1, 15)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (56, 1, N'travel_SGP01', N'Login', 50, N'Index', 1, 23)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (57, 1, N'travel_SGP02', N'Disclaimer', 51, N'Index', 1, 23)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (58, 1, N'travel_SGP03', N'CardHolder Information', 52, N'Index', 1, 23)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (59, 1, N'travel_SGP04', N'Trip Information', 53, N'Index', 1, 23)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (60, 1, N'travel_SGP05', N'Information Review', 54, N'Index', 1, 23)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (61, 1, N'travel_MAC01', N'Login', 55, N'Index', 1, 19)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (62, 1, N'travel_MAC02', N'Disclaimer', 56, N'Index', 1, 19)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (63, 1, N'travel_MAC03', N'CardHolder Information', 57, N'Index', 1, 19)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (64, 1, N'travel_MAC04', N'Trip Information', 58, N'Index', 1, 19)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (66, 1, N'travel_MAC05', N'Information Review', 59, N'Index', 1, 19)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (67, 1, N'travel_IDN01', N'Login', 60, N'Index', 1, 18)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (68, 1, N'travel_IDN02', N'Disclaimer', 61, N'Index', 1, 18)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (69, 1, N'travel_IDN03', N'CardHolder Information', 62, N'Index', 1, 18)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (70, 1, N'travel_IDN04', N'Trip Information', 63, N'Index', 1, 18)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (71, 1, N'travel_IDN05', N'Information Review', 64, N'Index', 1, 18)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (72, 1, N'travel_HKG01', N'Login', 65, N'Index', 1, 17)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (73, 1, N'travel_HKG02', N'Disclaimer', 66, N'Index', 1, 17)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (74, 1, N'travel_HKG03', N'CardHolder Information', 67, N'Index', 1, 17)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (75, 1, N'travel_HKG04', N'Trip Information', 68, N'Index', 1, 17)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (76, 1, N'travel_HKG05', N'Information Review', 69, N'Index', 1, 17)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (77, 1, N'travel_THA01', N'Login', 70, N'Index', 1, 24)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (78, 1, N'travel_THA02', N'Disclaimer', 71, N'Index', 1, 24)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (79, 1, N'travel_THA03', N'Cardholder Information', 72, N'Index', 1, 24)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (81, 1, N'travel_THA04', N'Trip Information', 73, N'Index', 1, 24)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (82, 1, N'travel_THA05', N'Information Review', 74, N'Index', 1, 24)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (83, 1, N'travel_TWN01', N'Login', 75, N'Index', 1, 25)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (84, 1, N'travel_TWN02', N'Disclaimer', 76, N'Index', 1, 25)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (85, 1, N'travel_TWN03', N'CardHolder Information', 77, N'Index', 1, 25)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (87, 1, N'travel_TWN04', N'Trip Information', 78, N'Index', 1, 25)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (90, 1, N'travel_TWN05', N'Information Review', 79, N'Index', 1, 25)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (91, 1, N'travel_NZL01', N'Login', 80, N'Index', 1, 21)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (92, 1, N'travel_NZL02', N'Disclaimer', 81, N'Index', 1, 21)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (93, 1, N'travel_NZL03', N'CardHolder Information', 82, N'Index', 1, 21)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (94, 1, N'travel_NZL04', N'Trip Information', 83, N'Index', 1, 21)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (95, 1, N'travel_NZL05', N'Information Review', 84, N'Index', 1, 21)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (96, 1, N'travel_PHL01', N'Login', 85, N'Index', 1, 22)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (97, 1, N'travel_PHL02', N'Disclaimer', 86, N'Index', 1, 22)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (98, 1, N'travel_PHL03', N'CardHolder Information', 87, N'Index', 1, 22)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (99, 1, N'travel_PHL04', N'Trip Information', 88, N'Index', 1, 22)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (100, 1, N'travel_PHL05', N'Information Review', 89, N'Index', 1, 22)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (101, 1, N'travel_VNM01', N'Login', 90, N'Index', 1, 26)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (102, 1, N'travel_VNM02', N'Disclaimer', 91, N'Index', 1, 26)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (103, 1, N'travel_VNM03', N'CardHolder Information', 92, N'Index', 1, 26)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (104, 1, N'travel_VNM04', N'Trip Information', 93, N'Index', 1, 26)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (105, 1, N'travel_VNM05', N'Information Review', 94, N'Index', 1, 26)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (106, 1, N'travel_MYS01', N'Login', 95, N'Index', 1, 20)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (107, 1, N'travel_MYS02', N'Disclaimer', 96, N'Index', 1, 20)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (108, 1, N'travel_MYS03', N'CardHolder Information', 97, N'Index', 1, 20)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (109, 1, N'travel_MYS04', N'Trip Information', 98, N'Index', 1, 20)
GO
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (110, 1, N'travel_MYS05', N'Information Review', 99, N'Index', 1, 20)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (111, 1, N'travel_CHN01', N'Login', 100, N'Index', 1, 16)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (112, 1, N'travel_CHN02', N'Disclaimer', 101, N'Index', 1, 16)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (113, 1, N'travel_CHN03', N'CardHolder Information', 102, N'Index', 1, 16)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (114, 1, N'travel_CHN04', N'Trip Information', 103, N'Index', 1, 16)
INSERT [dbo].[step] ([id], [landing_id], [code], [description], [position], [action], [is_app_form], [application_id]) VALUES (115, 1, N'travel_CHN05', N'Information Review', 104, N'Index', 1, 16)
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
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (965, 1, N'amount_100', N'USD 100')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (972, 1, N'amount_100perday', N'USD 100 per Day')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (979, 1, N'amount_250', N'USD 250')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (986, 1, N'amount_500', N'USD 500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (993, 1, N'amount_included', N'Included')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1000, 1, N'amount_uptousd100k', N'Up to USD 100,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1007, 1, N'amount_uptousd1k', N'Up to USD 1,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1014, 1, N'amount_uptousd2_5k', N'Up to USD 2,500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1021, 1, N'amount_uptousd250k', N'Up to USD 250,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1028, 1, N'amount_uptousd500k', N'Up to USD 500,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1035, 1, N'amount_uptousd5k', N'Up to USD 5,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1042, 1, N'attachment_file_name', N'TravelInsurance.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1049, 1, N'back', N'Back')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1056, 1, N'ben_assistance_department', N'Overseas Emergency Assistance Services')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1063, 1, N'ben_common_carrier', N'Common Carrier Baggage Delay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1070, 1, N'ben_common_carrier_description', N'For delays in excess of 4 hours')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1077, 1, N'ben_daily_hospital', N'Daily In-Hospital Cash Benefit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1084, 1, N'ben_daily_hospital_description', N'Minimum 3 days, maximum 15 days.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1091, 1, N'ben_emergency', N'Overseas Emergency Medical Evacuation')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1098, 1, N'ben_emergency_repatriation', N'Overseas Emergency Medical Evacuation / Return of Mortal Remains')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1105, 1, N'ben_medical', N'Overseas Medical Expenses due to Injury or Sickness')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1112, 1, N'ben_missed_connection', N'Missed Connection')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1119, 1, N'ben_overseas_quarantine', N'Overseas Quarantine Allowance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1126, 1, N'ben_overseas_quarantine_description', N'Maximum 14 days.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1133, 1, N'ben_personal_baggage', N'Personal Baggage Including Laptop Computer')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1140, 1, N'ben_personal_baggage_description', N'Subject to a single item maximum limit of USD 625.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1147, 1, N'ben_repatriation', N'Repatriation of Mortal Remains')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1154, 1, N'ben_trip_cancellation', N'Trip Cancellation')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1161, 1, N'ben_trip_curtailment', N'Trip Curtailment')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1168, 1, N'ben_trip_delay', N'Flight Delay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1175, 1, N'ben_trip_delay_description', N'For delays in excess of 4 hours.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1182, 1, N'ben_trip_postponement', N'Trip Postponement')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1189, 1, N'bin', N'FIRST TEN DIGITS OF YOUR MASTERCARD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1196, 1, N'bin_info', N'First 10 digits of your payment card')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1203, 1, N'breadcrumbs_cardholder', N'Personal Information')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1210, 1, N'breadcrumbs_review', N'Review and Accept')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1217, 1, N'cat_assistance_department', N'Assistance Department Services')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1224, 1, N'cat_baggage', N'Baggage Protection')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1231, 1, N'cat_travel_medical', N'Travel Medical Benefits')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1238, 1, N'cat_trip_inconvenience', N'Trip Inconvenience Protection')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1245, 1, N'close', N'Close')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1251, 1, N'confirm_msgOne', N'Please check your personal details and click “Complete Registration” to register your Travel Insurance.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1258, 1, N'confirm_msgTwo', N'The registration will be confirmed to you by email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1265, 1, N'confirmationMail_regards', N'Best regards')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1272, 1, N'coverage_amount', N'Coverage Amount')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1279, 1, N'coverage_categories', N'Coverage Categories')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1286, 1, N'coverage_description', N'Coverage Specifics')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1293, 1, N'coverage_name', N'Coverage Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1300, 1, N'dados', N'Cardholder Details')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1307, 1, N'dados_bilhete', N'Certificate Details')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1314, 1, N'dear', N'Dear')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1321, 1, N'description', N'Please enter your details below. We will use these details to identify you as a cardholder covered by the Travel Insurance in case you have to make a claim.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1328, 1, N'edit', N'Edit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1335, 1, N'effective_date', N'Effective Date')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1342, 1, N'email', N'EMAIL ADDRESS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1349, 1, N'en', N'English')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1352, 1, N'ERR_CARDHOLDER_MORE_14', N'Must be over 14 years old')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1359, 1, N'ERR_FIELD_LENGTH_10', N'Digits must be Ten')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1366, 1, N'ERR_FIELD_REQUIRED', N'Field Required')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1373, 1, N'ERR_INVALID_DATE', N'Invalid date')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1380, 1, N'ERR_INVALID_EMAIL', N'Please enter a valid email address')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1387, 1, N'EXIT', N'Exit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1394, 1, N'exit_message', N'Are you sure you do not want to continue with the registration process?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1401, 1, N'expire_date', N'Expiry Date')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1408, 1, N'faq_file_label', N'FAQ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1415, 1, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1422, 1, N'first_name', N'FIRST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1429, 1, N'first_name_info', N'First name of Mastercard cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1436, 1, N'footer_content', N'Provision of services is subject to availability and applicable legal restrictions. Insurance coverage is underwritten by approved Member Companies of AIG Insurance Company or Network Partner. Complete provisions pertaining to these plans of insurance are contained in the Master Policy(ies) on file with Mastercard Asia/Pacific Pte. Ltd. If there are any discrepancies between this document and the Master Policy(ies) or the applicable Mastercard contract for other benefits, the Master Policy(ies) or the applicable Mastercard contract for other benefits shall govern. The Insurance Company has the final authority to determine and respond to any claims, comments, inquiries, disputes; related to utilization of the cardholder benefit program.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1443, 1, N'footer_title', N'2023 AIG. All rights reserved. All services offered via this website are provided by AIG to eligible Mastercard Cardholders.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1450, 1, N'footnote_32358', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1457, 1, N'footnote_32360', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1464, 1, N'footnote_32362', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1471, 1, N'footnote_32364', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1478, 1, N'footnote_32366', N'<b>Note: Sub-limits apply for Spouse, Children on all Travel Insurance Coverage benefits listed above. </b><br/> The sub-limit for Spouse and Children is equivalent to 50% of all Travel Insurance Coverage benefits.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1485, 1, N'generate_send', N'GENERATE AND SEND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1492, 1, N'ipid_file_label', N'Benefit Summary')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1498, 1, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1505, 1, N'last_name', N'LAST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1512, 1, N'last_name_info', N'Last name of Mastercard cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1519, 1, N'mail_10_digits', N'First 10 digits of Mastercard:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1526, 1, N'mail_attached', N'Attached to this email you will find a copy of the terms & conditions and Insurance Product Information Document. Please keep these documents in a safe place. You might consider downloading and saving these documents for future use as you may need these documents in the event of a claim.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1533, 1, N'mail_automatic', N'This message has been generated automatically – Please do not answer this message')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1540, 1, N'mail_confirmation', N'Confirmation of registration and activation of your Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1547, 1, N'mail_confirmation_number', N'Registration confirmation number:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1553, 1, N'mail_contact', N'Contacting AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1560, 1, N'mail_contact_2', N'You can contact AIG if you have any questions about the insurance coverage or if you need to submit a claim. Please refer to the terms and conditions attached to this email for contact details and claims procedure.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1567, 1, N'mail_coverage_benefits', N'Coverage Included:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1574, 1, N'mail_dear', N'Dear')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1581, 1, N'mail_details', N'REGISTRATION DETAILS:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1588, 1, N'mail_due_condition', N'Click the link below to check whether you are still eligible to renew your complimentary Travel Insurance, arranged by Mastercard, for another 12 months.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1595, 1, N'mail_due_expires', N'Your complimentary Travel insurance which includes Overseas Travel Medical benefits, will expire in')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1602, 1, N'mail_due_expires_2', N'days – the exact expiry date is indicated at the bottom of this email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1609, 1, N'mail_due_extend', N'Check renewal options')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1616, 1, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1623, 1, N'mail_due_information', N'Your complimentary Travel Insurance, arranged by Mastercard, is valid for 12 months from registration. In order to renew your coverage for another 12 months, you will need to re-register for the complimentary insurance through a simple and secure 3-step online re-registration procedure.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1630, 1, N'mail_due_options', N'RENEWAL OPTIONS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1637, 1, N'mail_due_regards', N'Best regards')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1644, 1, N'mail_due_title', N'Insurance expiry reminder – Please check eligibility for renewal')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1651, 1, N'mail_effective', N'Effective Date:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1658, 1, N'mail_expire', N'Expiry Date:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1665, 1, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. is incorporated and domiciled in Singapore. The address of its registered office is 78 Shenton Way, #09-16, Singapore 079120. The Company’s immediate and ultimate parents are AIG APAC Holdings Pte. Ltd. (incorporated in Singapore) and American International Group, Inc. (“AIG”) (incorporated in the United States of America) respectively. The purpose of this website is to enable eligible Mastercard cardholders to activate their complimentary insurance cover arranged by Mastercard Asia/Pacific Pte. Ltd. and underwritten by AIG Asia Pacific Insurance Pte. Ltd.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1672, 1, N'mail_insurance', N'Insurance documentation')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1679, 1, N'mail_insured', N'Insured Name:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1686, 1, N'mail_package_name', N'Package Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1693, 1, N'mail_regards', N'Best regards')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1700, 1, N'mail_thanks', N'Thank you for activating your Travel Insurance, arranged by Mastercard that includes Overseas Travel Medical Benefits. <br>The registration was completed with a Mastercard payment card starting with the following 10 digits:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1707, 1, N'next', N'Next')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1714, 1, N'no', N'No')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1721, 1, N'package_name', N'Package Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1728, 1, N'package_name_32358', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1735, 1, N'package_name_32360', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1742, 1, N'package_name_32362', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1749, 1, N'package_name_32364', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1756, 1, N'package_name_32366', N'Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1763, 1, N'package_view_details', N'Click for more details')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1770, 1, N'passport', N'PASSPORT NUMBER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1777, 1, N'placeholder_bin', N'10 digits of your payment card')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1784, 1, N'placeholder_firstName', N'Enter your first name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1791, 1, N'placeholder_lastName', N'Enter your last name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1798, 1, N'product_summary', N'Product Summary')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1805, 1, N'required', N'Required')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1812, 1, N'select', N'Select')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1819, 1, N'terms', N'Please carefully read the documents below; if you agree to the terms and conditions in these documents, please tick the box to accept the terms and conditions and click “Next” to proceed to the next step.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1826, 1, N'terms_and_conditions_file_label', N'Terms and conditions')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1833, 1, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1840, 1, N'terms_check', N'I have read, understood and accept the terms and conditions')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1847, 1, N'terms_header', N'Mastercard Asia/Pacific Pte. Ltd. has arranged complimentary Travel Insurance benefits for eligible Mastercard cardholders. On this page you can find out what benefits are included in the insurance policy, register and activate the cover through a simple and secure 3-step registration process.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1854, 1, N'terms_title', N'Register to activate your Travel Insurance')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1862, 1, N'title', N'Your personal details:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1869, 1, N'verifique', N'Confirm registration:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1876, 1, N'welcome', N'Your Travel Insurance journey starts here!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1883, 1, N'yes', N'Yes')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1891, 1, N'mail_sent', N'You have successfully registered for your Travel Insurance, arranged by Mastercard.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1898, 1, N'mail_sent_msg', N'The registration and details of the Travel insurance will be confirmed to you by email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1905, 1, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1912, 1, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1919, 1, N'footer.button_end_session', N'Leave')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1926, 1, N'footer.button_extend_session', N'Stay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1933, 1, N'footer.expiresession', N'The session is about to expire. Do you wish to extend the session?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1940, 1, N'header.exit', N'Exit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1954, 1, N'WARN_SENDING_EMAIL', N'The email has not been send due to an internal error in the process. Please try again. Sorry for the inconvenient.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1961, 1, N'session_expired', N'Your session has expired.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1968, 1, N'ERR_UNAUTHORIZED_APPLICATION', N'Unauthorized Application.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1975, 1, N'attachment_travel_file_name', N'TravelInsurance_Cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1985, 1, N'registered', N'I’M ALREADY REGISTERED')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1986, 1, N'registration', N'I WANT TO REGISTER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1987, 1, N'f_exis_notRegistered', N'You are not registered. Do you want to register?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1988, 1, N'link_registration', N'Go to Registration')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1989, 1, N'travel.email.send', N'The email was sent to the following email address:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1990, 1, N'close_button', N'x')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1997, 1, N'notice', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1998, 1, N'OK', N'Ok')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (1999, 1, N'OkMail', N'The email was successfully sent to the email address provided.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2000, 1, N'travel_irstep2', N'Next')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2007, 1, N'TRAVEL.seguro_viagem', N'TRAVEL LETTER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2008, 1, N'BREADCRUMBS_TRAVELDETAILS', N'REQUIREMENTS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2009, 1, N'BREADCRUMBS_TRAVELPASSENGERS', N'CARDHOLDER DETAILS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2010, 1, N'BREADCRUMBS_TRAVELINFO', N'TRIP INFORMATION')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2011, 1, N'BREADCRUMBS_TRAVELREVIEW', N'REVIEW AND GENERATE YOUR CERTIFICATE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2012, 1, N'TRAVEL02.before_start', N'What you will need before you start:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2013, 1, N'TRAVEL02.informacoes_pessoais', N'- Personal information (full name as it appears on passport, passport number, home address). <br>- Trip Information (purchase date of the trip, travel dates).</br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2014, 1, N'TRAVEL02.tenha', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2015, 1, N'TRAVEL02.texto_bullets', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2016, 1, N'RGTVA01.DECLARO', N'I confirm that I’ve used my eligible Mastercard to purchase the ticket.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2017, 1, N'f_disclaimer_travel', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2018, 1, N'f_disclaimer2_travel', N'By providing your Personal Information in this form and clicking on the Next button below, you agree and confirm your consent to the collection, use, sharing and internationaltransfer of your Personal Information by American International Group, Inc. ("AIG"), or any of itssubsidiaries and affiliates, and their service providers, in connection with the provision ofinsurance certificates and as otherwise set out in their privacy policies below. If you provide AIG with Personal Information about another person, you confirm that you have informed that person ofhow AIG will use it and that you are authorized to provide it.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2019, 1, N'TRAVEL02.cardholder_details_title', N'Enter Cardholder Details:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2020, 1, N'TRAVEL02.cardholder_details_subtitle', N'Please enter the requested information below for the cardholder.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2021, 1, N'TRAVEL02.text_required', N'Required *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2227, 1, N'TRAVEL02.travel_letter', N'TRAVEL LETTER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2228, 1, N'TRAVEL02.NAME', N'FIRST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2235, 1, N'TRAVEL02.NAME_TOOLTIP', N'First name of Mastercard cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2239, 1, N'country.ALB', N'ALBANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2240, 1, N'country.DZA', N'ALGERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2241, 1, N'country.AND', N'ANDORRA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2242, 1, N'country.AGO', N'ANGOLA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2243, 1, N'country.ATG', N'ANTIGUA AND BARBUDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2244, 1, N'country.ARG', N'ARGENTINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2245, 1, N'country.ARM', N'ARMENIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2246, 1, N'country.AUS', N'AUSTRALIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2247, 1, N'country.AUT', N'AUSTRIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2248, 1, N'country.AZE', N'AZERBAIJAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2249, 1, N'country.BHS', N'BAHAMAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2250, 1, N'country.BHR', N'BAHRAIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2251, 1, N'country.BGD', N'BANGLADESH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2253, 1, N'country.BLR', N'BELARUS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2254, 1, N'country.BEL', N'BELGIUM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2255, 1, N'country.BLZ', N'BELIZE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2256, 1, N'country.BEN', N'BENIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2257, 1, N'country.BTN', N'BHUTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2258, 1, N'country.BOL', N'BOLIVIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2259, 1, N'country.BIH', N'BOSNIA AND HERZEGOWINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2260, 1, N'country.BWA', N'BOTSWANA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2261, 1, N'country.BRA', N'BRAZIL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2262, 1, N'country.BRN', N'BRUNEI DARUSSALAM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2263, 1, N'country.BGR', N'BULGARIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2264, 1, N'country.BFA', N'BURKINA FASO')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2265, 1, N'country.BDI', N'BURUNDI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2266, 1, N'country.KHM', N'CAMBODIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2267, 1, N'country.CMR', N'CAMEROON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2268, 1, N'country.CAN', N'CANADA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2269, 1, N'country.CPV', N'CAPE VERDE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2270, 1, N'country.CAR', N'CARACAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2271, 1, N'country.CAF', N'CENTRAL AFRICAN REPUBLIC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2272, 1, N'country.TCD', N'CHAD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2273, 1, N'country.CHL', N'CHILE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2274, 1, N'country.CHN', N'CHINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2275, 1, N'country.COL', N'COLOMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2276, 1, N'country.COM', N'COMOROS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2277, 1, N'country.COG', N'CONGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2278, 1, N'country.ZAR', N'CONGO DEMOCATIC REPUBLIC OF')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2279, 1, N'country.CRI', N'COSTA RICA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2280, 1, N'country.CIV', N'COTE D''IVOIRE (IVORY COAST)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2281, 1, N'country.HRV', N'CROATIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2282, 1, N'country.CUB', N'CUBA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2283, 1, N'country.CUR', N'CURACAO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2284, 1, N'country.CYP', N'CYPRUS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2285, 1, N'country.CZE', N'CZECH REPUBLIC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2286, 1, N'country.DNK', N'DENMARK')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2287, 1, N'country.DJI', N'DJIBOUTI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2288, 1, N'country.DMA', N'DOMINICA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2289, 1, N'country.DOM', N'DOMINICAN REPUBLIC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2290, 1, N'country.ECU', N'ECUADOR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2291, 1, N'country.EGY', N'EGYPT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2292, 1, N'country.SLV', N'EL SALVADOR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2293, 1, N'country.GNQ', N'EQUATORIAL GUINEA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2294, 1, N'country.ERI', N'ERITREA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2295, 1, N'country.EST', N'ESTONIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2296, 1, N'country.ETH', N'ETHIOPIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2297, 1, N'country.FJI', N'FIJI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2298, 1, N'country.FIN', N'FINLAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2299, 1, N'country.FRA', N'FRANCE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2300, 1, N'country.GAB', N'GABON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2301, 1, N'country.GMB', N'GAMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2302, 1, N'country.GEO', N'GEORGIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2303, 1, N'country.DEU', N'GERMANY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2304, 1, N'country.GHA', N'GHANA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2305, 1, N'country.GRC', N'GREECE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2306, 1, N'country.GRD', N'GRENADA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2307, 1, N'country.GTM', N'GUATEMALA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2308, 1, N'country.GIN', N'GUINEA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2309, 1, N'country.GNB', N'GUINEA-BISSAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2310, 1, N'country.GUY', N'GUYANA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2311, 1, N'country.HTI', N'HAITI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2312, 1, N'country.VAT', N'HOLY SEE (VATICAN CITY STATE)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2313, 1, N'country.HND', N'HONDURAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2314, 1, N'country.HKG', N'HONG KONG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2315, 1, N'country.HUN', N'HUNGARY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2316, 1, N'country.ISL', N'ICELAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2317, 1, N'country.IND', N'INDIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2318, 1, N'country.IDN', N'INDONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2319, 1, N'country.IRN', N'IRAN ISLAMIC REPUBLIC OF')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2320, 1, N'country.IRQ', N'IRAQ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2321, 1, N'country.IRL', N'IRELAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2322, 1, N'country.ISR', N'ISRAEL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2323, 1, N'country.ITA', N'ITALY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2324, 1, N'country.JAM', N'JAMAICA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2325, 1, N'country.JPN', N'JAPAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2326, 1, N'country.JOR', N'JORDAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2327, 1, N'country.KAZ', N'KAZAKSTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2328, 1, N'country.KEN', N'KENYA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2329, 1, N'country.KIR', N'KIRIBATI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2330, 1, N'country.KOR', N'KOREA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2331, 1, N'country.PRK', N'KOREA DEMO PEOPLE''S REPUB OF')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2332, 1, N'country.KWT', N'KUWAIT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2333, 1, N'country.KGZ', N'KYRGYZSTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2334, 1, N'country.LAO', N'LAO PEOPLE''S DEMOCATIC REPUB')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2335, 1, N'country.LVA', N'LATVIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2336, 1, N'country.LBN', N'LEBANON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2337, 1, N'country.LSO', N'LESOTHO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2338, 1, N'country.LBR', N'LIBERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2339, 1, N'country.LBY', N'LIBYAN ARAB JAMAHIRIYA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2340, 1, N'country.LIE', N'LIECHTENSTEIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2341, 1, N'country.LTU', N'LITHUANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2342, 1, N'country.LUX', N'LUXEMBOURG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2343, 1, N'country.MAC', N'MACAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2344, 1, N'country.MKD', N'MACEDONIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2345, 1, N'country.MDG', N'MADAGASCAR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2346, 1, N'country.MWI', N'MALAWI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2347, 1, N'country.MYS', N'MALAYSIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2348, 1, N'country.MDV', N'MALDIVES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2349, 1, N'country.MLI', N'MALI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2350, 1, N'country.MLT', N'MALTA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2351, 1, N'country.MHL', N'MARSHALL ISLANDS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2352, 1, N'country.MRT', N'MAURITANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2353, 1, N'country.MUS', N'MAURITIUS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2354, 1, N'country.MEX', N'MEXICO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2355, 1, N'country.MIC', N'MICRONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2356, 1, N'country.FSM', N'MICRONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2357, 1, N'country.MDA', N'MOLDOVA REPUBLIC OF')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2358, 1, N'country.MCO', N'MONACO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2359, 1, N'country.MNG', N'MONGOLIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2360, 1, N'country.MSR', N'MONTSERRAT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2361, 1, N'country.MAR', N'MOROCCO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2362, 1, N'country.MOZ', N'MOZAMBIQUE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2363, 1, N'country.NAM', N'NAMIBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2364, 1, N'country.NRU', N'NAURU')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2365, 1, N'country.NPL', N'NEPAL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2366, 1, N'country.NLD', N'NETHERLANDS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2367, 1, N'country.NZL', N'NEW ZEALAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2368, 1, N'country.NIC', N'NICARAGUA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2369, 1, N'country.NER', N'NIGER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2370, 1, N'country.NGA', N'NIGERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2371, 1, N'country.NOR', N'NORWAY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2372, 1, N'country.OMN', N'OMAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2373, 1, N'country.PAK', N'PAKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2374, 1, N'country.PLW', N'PALAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2375, 1, N'country.PSE', N'PALESTINE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2376, 1, N'country.PAN', N'PANAMA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2377, 1, N'country.PNG', N'PAPUA NEW GUINEA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2378, 1, N'country.PRY', N'PARAGUAY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2379, 1, N'country.PER', N'PERU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2380, 1, N'country.PHL', N'PHILLIPINES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2381, 1, N'country.POL', N'POLAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2382, 1, N'country.PRT', N'PORTUGAL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2383, 1, N'country.QAT', N'QATAR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2384, 1, N'country.ROM', N'ROMANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2385, 1, N'country.RUS', N'RUSSIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2386, 1, N'country.RWA', N'RWANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2387, 1, N'country.KNA', N'SAINT KITTS AND NEVIS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2388, 1, N'country.LCA', N'SAINT LUCIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2389, 1, N'country.WSM', N'SAMOA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2390, 1, N'country.SMR', N'SAN MARINO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2391, 1, N'country.STP', N'SAO TOME AND PRINCIPE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2392, 1, N'country.SAU', N'SAUDI ARABIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2393, 1, N'country.SEN', N'SENEGAL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2394, 1, N'country.SRB', N'SERBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2395, 1, N'country.SYC', N'SEYCHELLES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2396, 1, N'country.SLE', N'SIERRA LEONE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2397, 1, N'country.SGP', N'SINGAPORE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2398, 1, N'country.SVK', N'SLOVAKIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2399, 1, N'country.SVN', N'SLOVENIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2400, 1, N'country.SLB', N'SOLOMON ISLANDS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2401, 1, N'country.SOM', N'SOMALIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2402, 1, N'country.SAF', N'SOUTH AFRICA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2403, 1, N'country.ESP', N'SPAIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2404, 1, N'country.LKA', N'SRI LANKA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2405, 1, N'country.VCT', N'ST. VINCENT AND THE GRENADINES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2406, 1, N'country.SDN', N'SUDAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2407, 1, N'country.SUR', N'SURINAM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2408, 1, N'country.SWZ', N'SWAZILAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2409, 1, N'country.SWE', N'SWEDEN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2410, 1, N'country.CHE', N'SWITZERLAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2411, 1, N'country.SYR', N'SYRIAN ARAB REPUBLIC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2412, 1, N'country.TJK', N'TAJIKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2413, 1, N'country.TZA', N'TANZANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2414, 1, N'country.THA', N'THAILAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2415, 1, N'country.TIN', N'TINIAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2416, 1, N'country.TGO', N'TOGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2417, 1, N'country.TON', N'TONGA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2418, 1, N'country.TTO', N'TRINIDAD & TOBAGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2419, 1, N'country.TUN', N'TUNISIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2420, 1, N'country.TUR', N'TURKEY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2421, 1, N'country.TKM', N'TURKMENISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2422, 1, N'country.TUV', N'TUVALU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2423, 1, N'country.UGA', N'UGANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2424, 1, N'country.UKR', N'UKRAINE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2425, 1, N'country.ARE', N'UNITED ARAB EMIRATES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2426, 1, N'country.GBR', N'UNITED KINGDOM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2427, 1, N'country.USA', N'UNITED STATES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2428, 1, N'country.URY', N'URUGUAY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2429, 1, N'country.UZB', N'UZBEKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2430, 1, N'country.VUT', N'VANUATU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2431, 1, N'country.VEN', N'VENEZUELA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2432, 1, N'country.VNM', N'VIET NAM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2433, 1, N'country.ZMB', N'ZAMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2434, 1, N'country.ZWE', N'ZIMBABWE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2435, 1, N'country.AFG', N'AFGHANISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2436, 1, N'country.ABW', N'ARUBA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2440, 1, N'TRAVEL02.SURNAME', N'LAST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2447, 1, N'TRAVEL02.BIRTH_DATE', N'DATE OF BIRTH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2448, 1, N'TRAVEL02.BIRTH_TOOLTIP', N'Date of Birth of Mastercard cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2449, 1, N'TRAVEL02.EMAIL', N'EMAIL ADDRESS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2451, 1, N'NATIONALITY', N'NATIONALITY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2452, 1, N'COMBO_PLACEHOLDER', N'Select your option')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2453, 1, N'TRAVEL02.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2454, 1, N'TRAVEL02.disclaimer.1', N'By providing your Personal Information in this form and clicking on the Next button below, you agree and confirm your consent to the collection, use, sharing and internationaltransfer of your Personal Information by American International Group, Inc. ("AIG"), or any of itssubsidiaries and affiliates, and their service providers, in connection with the provision ofinsurance certificates and as otherwise set out in their privacy policies below. If you provide AIG with Personal Information about another person, you confirm that you have informed that person ofhow AIG will use it and that you are authorized to provide it.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2455, 1, N'TRAVEL02.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2456, 1, N'TRAVEL02.SPOUSE_CHECK', N'ARE YOU TRAVELING WITH YOUR SPOUSE?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2457, 1, N'TRAVEL02.SPOUSE_NAME', N'SPOUSE NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2458, 1, N'TRAVEL02.SPOUSE_SURNAME', N'SPOUSE LAST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2459, 1, N'TRAVEL02.SPOUSE_BIRTH_DATE', N'SPOUSE DATE OF BIRTH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2460, 1, N'TRAVEL02.SPOUSE_BIRTH_TOOLTIP', N'Date of Birth of Mastercard cardholder´s spouse')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2461, 1, N'TRAVEL02.CHILD_CHECK', N'ARE YOU TRAVELING WITH YOUR DEPENDENT CHILD(REN)?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2462, 1, N'TRAVEL02.CHILD_NAME', N'DEPENDENT CHILD NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2463, 1, N'TRAVEL02.CHILD_SURNAME', N'DEPENDENT CHILD LAST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2464, 1, N'TRAVEL02.CHILD_BIRTH_DATE', N'DEPENDENT CHILD DATE OF BIRTH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2465, 1, N'TRAVEL02.CHILD_BIRTH_TOOLTIP', N'Date of Birth of Mastercard cardholder´s dependent child')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2466, 1, N'TRAVEL02.ADD_CHILD', N'ADD DEPENDENT CHILD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2467, 1, N'TRAVEL02.REMOVE_CHILD', N'REMOVE DEPENDENT CHILD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2468, 1, N'travel03.letter', N'TRAVEL LETTER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2469, 1, N'travel03.trip_information', N'Trip Information:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2470, 1, N'TRAVEL03.DESTINY', N'DESTINATION *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2471, 1, N'TRAVEL03.TRIP', N'CHOOSE THE TYPE OF YOUR TRIP')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2472, 1, N'ONE_TRIP', N'ONE-WAY TRIP')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2473, 1, N'ROUND_TRIP', N'ROUND TRIP')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2474, 1, N'TRAVEL03.PURCHASE_DATE', N'PURCHASE DATE OF THE TRIP')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2475, 1, N'TRAVEL03.DEPARTURE_DATE', N'DEPARTURE DATE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2476, 1, N'TRAVEL03.RETURN_DATE', N'RETURN DATE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2477, 1, N'travel03.disclaimer.1', N'By providing your Personal Information in this form and clicking on the Next button below, you agree and confirm your consent to the collection, use, sharing and internationaltransfer of your Personal Information by American International Group, Inc. ("AIG"), or any of itssubsidiaries and affiliates, and their service providers, in connection with the provision ofinsurance certificates and as otherwise set out in their privacy policies below. If you provide AIG with Personal Information about another person, you confirm that you have informed that person ofhow AIG will use it and that you are authorized to provide it.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2478, 1, N'TRAVEL03.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2479, 1, N'TRAVEL03.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2480, 1, N'travel.letter', N'TRAVEL LETTER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2481, 1, N'dados_familia', N'Family Details')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2482, 1, N'child_first_name', N'DEPENDENT CHILD FIRST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2483, 1, N'child_birthdate', N'DEPENDENT CHILD DATE OF BIRTH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2484, 1, N'child_last_name', N'DEPENDENT CHILD LAST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2485, 1, N'child_nationality', N'DEPENDENT CHILD NATIONALITY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2486, 1, N'child_passport', N'DEPENDENT CHILD PASSPORT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2487, 1, N'spouse_first_name', N'SPOUSE FIRST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2488, 1, N'spouse_last_name', N'SPOUSE LAST NAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2489, 1, N'spouse_birthdate', N'SPOUSE DATE OF BIRTH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2490, 1, N'spouse_nationality', N'SPOUSE NATIONALITY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2491, 1, N'spouse_passport', N'SPOUSE PASSPORT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2492, 1, N'trip_details', N'TRIP DETAILS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2493, 1, N'destination', N'DESTINATION')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2494, 1, N'purchaseDate', N'PURCHASE DATE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2495, 1, N'departureDate', N'DEPARTURE DATE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2496, 1, N'ReturnDate', N'RETURN DATE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2497, 1, N'travel.disclaimer.1', N'By providing your Personal Information in this form and clicking on the Next button below, you agree and confirm your consent to the collection, use, sharing and internationaltransfer of your Personal Information by American International Group, Inc. ("AIG"), or any of itssubsidiaries and affiliates, and their service providers, in connection with the provision ofinsurance certificates and as otherwise set out in their privacy policies below. If you provide AIG with Personal Information about another person, you confirm that you have informed that person ofhow AIG will use it and that you are authorized to provide it.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2498, 1, N'travel.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2499, 1, N'travel.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2500, 1, N'TRAVEL.GENERATE_AND_PRINT', N'GENERATE AND PRINT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2501, 1, N'TRAVEL.GENERATE_AND_SEND', N'GENERATE AND SEND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2502, 1, N'f_exis_registered', N'You are already registered. Do you want to issue a Travel Letter?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2503, 1, N'link_registered', N'Go to Travel Letter')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2517, 1, N'TRAVEL02.lastName_tooltip', N'Last name of Mastercard cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2523, 1, N'ERR_CARDHOLDER_MORE_18', N'Travel Letter cannot be issue due to age limits described in policy.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2524, 1, N'TRAVEL02.spouse_name_tooltip', N'Mastercard Cardholder´s Spouse First Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2525, 1, N'TRAVEL02.spouse_surname_tooltip', N'Mastercard cardholder´s Spouse Last Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2526, 1, N'TRAVEL02.child_name_tooltip', N'Mastercard Cardholder´s dependent child Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2527, 1, N'TRAVEL02.child_surname_tooltip', N'Mastercard Cardholder´s dependent child Last Name')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2528, 1, N'ERR_CHILD_LESS_23', N'Travel Letter cannot be issue due to age limits described in policy.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2530, 1, N'ERR_TV_DEPARTURE_AFTER_PURCHASE', N'The Departure Date must be after the Purchase Date.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2531, 1, N'ERR_TV_RETURN_AFTER_DEPARTURE', N'The Return Date must be the same as the Departure Date or later than the Departure Date.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2532, 1, N'ERR_INVALID_COUNT_DAYS', N'The Return Date cannot be more than 180 days from the Departure Date.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2533, 1, N'birthdate', N'DATE OF BIRTH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2535, 1, N'attachment_travel_file_name_spouse', N'TravelInsurance_Spouse')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2542, 1, N'attachment_travel_file_name_child', N'TravelInsurance_Child_')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (2874, 1, N'ERR_TV_DEPARTURE_AFTER_REGISTRATION', N'The Departure Date must be after the Registration Date.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3076, 1, N'country.BRB', N'BARBADOS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3077, 2, N'country.ABW', N'아루바')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3078, 2, N'country.AFG', N'아프가니스탄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3079, 2, N'country.AGO', N'앙골라')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3080, 2, N'country.ALB', N'알바니아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3081, 2, N'country.AND', N'안도라')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3082, 2, N'country.ARE', N'아랍에미리트')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3083, 2, N'country.ARG', N'아르헨티나')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3084, 2, N'country.ARM', N'아르메니아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3085, 2, N'country.ATG', N'앤티가바부다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3086, 2, N'country.AUS', N'호주')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3087, 2, N'country.AUT', N'오스트리아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3088, 2, N'country.AZE', N'아제르바이잔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3089, 2, N'country.BDI', N'부룬디')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3090, 2, N'country.BEL', N'벨기에')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3091, 2, N'country.BEN', N'베냉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3092, 2, N'country.BFA', N'부르키나파소')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3093, 2, N'country.BGD', N'방글라데시')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3094, 2, N'country.BGR', N'불가리아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3095, 2, N'country.BHR', N'바레인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3096, 2, N'country.BHS', N'바하마')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3097, 2, N'country.BIH', N'보스니아 헤르체고비나')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3098, 2, N'country.BLR', N'벨라루스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3099, 2, N'country.BLZ', N'벨리즈')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3100, 2, N'country.BOL', N'볼리비아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3101, 2, N'country.BRA', N'브라질')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3102, 2, N'country.BRB', N'바베이도스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3103, 2, N'country.BRN', N'브루나이 다루살람')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3104, 2, N'country.BTN', N'부탄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3105, 2, N'country.BWA', N'보츠와나')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3106, 2, N'country.CAF', N'중앙아프리카공화국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3107, 2, N'country.CAN', N'캐나다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3108, 2, N'country.CAR', N'카라카스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3109, 2, N'country.CHE', N'스위스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3110, 2, N'country.CHL', N'칠레')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3111, 2, N'country.CHN', N'중국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3112, 2, N'country.CIV', N'코트디부아르(아이보리코스트)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3113, 2, N'country.CMR', N'카메룬')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3114, 2, N'country.COG', N'콩고')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3115, 2, N'country.COL', N'콜롬비아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3116, 2, N'country.COM', N'코모로')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3118, 2, N'country.CPV', N'카보베르데')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3119, 2, N'country.CRI', N'코스타리카')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3120, 2, N'country.CUB', N'쿠바')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3121, 2, N'country.CUR', N'퀴라소')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3122, 2, N'country.CYP', N'키프로스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3123, 2, N'country.CZE', N'체코')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3124, 2, N'country.DEU', N'독일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3125, 2, N'country.DJI', N'지부티')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3126, 2, N'country.DMA', N'도미니카')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3127, 2, N'country.DNK', N'덴마크')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3128, 2, N'country.DOM', N'도미니카 공화국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3129, 2, N'country.DZA', N'알제리')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3130, 2, N'country.ECU', N'에콰도르')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3131, 2, N'country.EGY', N'이집트')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3132, 2, N'country.ERI', N'에리트레아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3133, 2, N'country.ESP', N'스페인')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3134, 2, N'country.EST', N'에스토니아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3135, 2, N'country.ETH', N'에티오피아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3136, 2, N'country.FIN', N'핀란드')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3137, 2, N'country.FJI', N'피지')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3138, 2, N'country.FRA', N'프랑스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3139, 2, N'country.FSM', N'미크로네시아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3140, 2, N'country.GAB', N'가봉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3141, 2, N'country.GBR', N'영국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3142, 2, N'country.GEO', N'조지아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3143, 2, N'country.GHA', N'가나')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3144, 2, N'country.GIN', N'기니')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3145, 2, N'country.GMB', N'감비아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3146, 2, N'country.GNB', N'기니비사우')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3147, 2, N'country.GNQ', N'적도 기니')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3148, 2, N'country.GRC', N'그리스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3149, 2, N'country.GRD', N'그레나다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3150, 2, N'country.GTM', N'과테말라')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3151, 2, N'country.GUY', N'가이아나')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3152, 2, N'country.HKG', N'홍콩')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3153, 2, N'country.HND', N'온두라스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3154, 2, N'country.HRV', N'크로아티아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3155, 2, N'country.HTI', N'아이티')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3156, 2, N'country.HUN', N'헝가리')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3157, 2, N'country.IDN', N'인도네시아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3158, 2, N'country.IND', N'인도')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3159, 2, N'country.IRL', N'아일랜드')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3160, 2, N'country.IRN', N'이란')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3161, 2, N'country.IRQ', N'이라크')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3162, 2, N'country.ISL', N'아이슬란드')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3163, 2, N'country.ISR', N'이스라엘')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3164, 2, N'country.ITA', N'이탈리아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3165, 2, N'country.JAM', N'자메이카')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3166, 2, N'country.JOR', N'요르단')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3167, 2, N'country.JPN', N'일본')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3168, 2, N'country.KAZ', N'카자흐스탄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3169, 2, N'country.KEN', N'케냐')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3170, 2, N'country.KGZ', N'키르기스스탄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3171, 2, N'country.KHM', N'캄보디아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3172, 2, N'country.KIR', N'키리바시')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3173, 2, N'country.KNA', N'세인트키츠 네비스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3174, 2, N'country.KOR', N'한국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3175, 2, N'country.KWT', N'쿠웨이트')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3176, 2, N'country.LAO', N'라오스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3177, 2, N'country.LBN', N'레바논')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3178, 2, N'country.LBR', N'라이베리아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3179, 2, N'country.LBY', N'리비아 아랍 자마히리야')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3180, 2, N'country.LCA', N'세인트루시아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3181, 2, N'country.LIE', N'리히텐슈타인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3182, 2, N'country.LKA', N'스리랑카')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3183, 2, N'country.LSO', N'레소토')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3184, 2, N'country.LTU', N'리투아니아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3185, 2, N'country.LUX', N'룩셈부르크')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3186, 2, N'country.LVA', N'라트비아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3187, 2, N'country.MAC', N'마카오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3188, 2, N'country.MAR', N'모로코')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3189, 2, N'country.MCO', N'모나코')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3190, 2, N'country.MDA', N'몰도바 공화국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3191, 2, N'country.MDG', N'마다가스카르')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3192, 2, N'country.MDV', N'몰디브')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3193, 2, N'country.MEX', N'멕시코')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3194, 2, N'country.MHL', N'마셜 제도')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3195, 2, N'country.MIC', N'미크로네시아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3196, 2, N'country.MKD', N'마케도니아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3197, 2, N'country.MLI', N'말리')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3198, 2, N'country.MLT', N'몰타')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3199, 2, N'country.MNG', N'몽골')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3200, 2, N'country.MOZ', N'모잠비크')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3201, 2, N'country.MRT', N'모리타니')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3202, 2, N'country.MSR', N'몬세라트')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3203, 2, N'country.MUS', N'모리셔스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3204, 2, N'country.MWI', N'말라위')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3205, 2, N'country.MYS', N'말레이시아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3206, 2, N'country.NAM', N'나미비아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3207, 2, N'country.NER', N'니제르')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3208, 2, N'country.NGA', N'나이지리아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3209, 2, N'country.NIC', N'니카라과')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3210, 2, N'country.NLD', N'네덜란드')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3211, 2, N'country.NOR', N'노르웨이')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3212, 2, N'country.NPL', N'네팔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3213, 2, N'country.NRU', N'나우루')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3214, 2, N'country.NZL', N'뉴질랜드')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3215, 2, N'country.OMN', N'오만')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3216, 2, N'country.PAK', N'파키스탄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3217, 2, N'country.PAN', N'파나마')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3218, 2, N'country.PER', N'페루')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3219, 2, N'country.PHL', N'필리핀')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3220, 2, N'country.PLW', N'팔라우')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3221, 2, N'country.PNG', N'파푸아 뉴기니')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3222, 2, N'country.POL', N'폴란드')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3223, 2, N'country.PRK', N'북한')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3224, 2, N'country.PRT', N'포르투갈')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3225, 2, N'country.PRY', N'파라과이')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3226, 2, N'country.PSE', N'팔레스타인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3227, 2, N'country.QAT', N'카타르')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3228, 2, N'country.ROM', N'루마니아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3229, 2, N'country.RUS', N'러시아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3230, 2, N'country.RWA', N'르완다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3231, 2, N'country.SAF', N'남아프리카')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3232, 2, N'country.SAU', N'사우디아라비아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3233, 2, N'country.SDN', N'수단')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3234, 2, N'country.SEN', N'세네갈')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3235, 2, N'country.SGP', N'싱가포르')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3236, 2, N'country.SLB', N'솔로몬 제도')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3237, 2, N'country.SLE', N'시에라리온')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3238, 2, N'country.SLV', N'엘살바도르')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3239, 2, N'country.SMR', N'산마리노')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3240, 2, N'country.SOM', N'소말리아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3241, 2, N'country.SRB', N'세르비아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3242, 2, N'country.STP', N'상투메 프린시페')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3243, 2, N'country.SUR', N'수리남')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3244, 2, N'country.SVK', N'슬로바키아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3245, 2, N'country.SVN', N'슬로베니아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3246, 2, N'country.SWE', N'스웨덴')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3247, 2, N'country.SWZ', N'스와질랜드')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3248, 2, N'country.SYC', N'세이셸')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3249, 2, N'country.SYR', N'시리아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3250, 2, N'country.TCD', N'차드')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3251, 2, N'country.TGO', N'토고')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3252, 2, N'country.THA', N'태국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3253, 2, N'country.TIN', N'티니언 섬')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3254, 2, N'country.TJK', N'타지키스탄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3255, 2, N'country.TKM', N'투르크메니스탄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3256, 2, N'country.TON', N'통가')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3257, 2, N'country.TTO', N'트리니다드 토바고')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3258, 2, N'country.TUN', N'튀니지')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3259, 2, N'country.TUR', N'튀르키예')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3260, 2, N'country.TUV', N'투발루')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3261, 2, N'country.TZA', N'탄자니아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3262, 2, N'country.UGA', N'우간다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3263, 2, N'country.UKR', N'우크라이나')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3264, 2, N'country.URY', N'우루과이')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3265, 2, N'country.USA', N'미국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3266, 2, N'country.UZB', N'우즈베키스탄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3267, 2, N'country.VAT', N'교황청(바티칸 시국)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3268, 2, N'country.VCT', N'세인트 빈센트 그레나딘')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3269, 2, N'country.VEN', N'베네수엘라')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3270, 2, N'country.VNM', N'베트남')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3271, 2, N'country.VUT', N'바누아투')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3272, 2, N'country.WSM', N'사모아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3273, 2, N'country.ZAR', N'콩고민주공화국')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3274, 2, N'country.ZMB', N'잠비아')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3275, 2, N'country.ZWE', N'짐바브웨')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3276, 3, N'country.ABW', N'อารูบา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3277, 3, N'country.AFG', N'อัฟกานิสถาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3278, 3, N'country.AGO', N'แองโกลา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3279, 3, N'country.ALB', N'แอลเบเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3280, 3, N'country.AND', N'อันดอร์รา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3281, 3, N'country.ARE', N'สหรัฐอาหรับเอมิเรตส์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3282, 3, N'country.ARG', N'อาร์เจนตินา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3283, 3, N'country.ARM', N'อาร์มีเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3284, 3, N'country.ATG', N'แอนติกาและบาร์บูดา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3285, 3, N'country.AUS', N'ออสเตรเลีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3286, 3, N'country.AUT', N'ออสเตรีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3287, 3, N'country.AZE', N'อาเซอร์ไบจาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3288, 3, N'country.BDI', N'บุรุนดี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3289, 3, N'country.BEL', N'เบลเยียม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3290, 3, N'country.BEN', N'เบนิน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3291, 3, N'country.BFA', N'บูร์กินาฟาโซ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3292, 3, N'country.BGD', N'บังกลาเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3293, 3, N'country.BGR', N'บัลแกเรีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3294, 3, N'country.BHR', N'บาห์เรน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3295, 3, N'country.BHS', N'บาฮามาส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3296, 3, N'country.BIH', N'บอสเนียและเฮอร์เซโกวีนา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3297, 3, N'country.BLR', N'เบลารุส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3298, 3, N'country.BLZ', N'เบลีซ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3299, 3, N'country.BOL', N'โบลิเวีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3300, 3, N'country.BRA', N'บราซิล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3301, 3, N'country.BRB', N'บาร์เบโดส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3302, 3, N'country.BRN', N'บรูไนดารุสซาลาม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3303, 3, N'country.BTN', N'ภูฏาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3304, 3, N'country.BWA', N'บอตสวานา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3305, 3, N'country.CAF', N'สาธารณรัฐแอฟริกากลาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3306, 3, N'country.CAN', N'แคนาดา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3307, 3, N'country.CAR', N'การากัส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3308, 3, N'country.CHE', N'สวิตเซอร์แลนด์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3309, 3, N'country.CHL', N'ชิลี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3310, 3, N'country.CHN', N'จีน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3311, 3, N'country.CIV', N'โกตดิวัวร์ (ไอวอรีโคสต์)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3312, 3, N'country.CMR', N'แคเมอรูน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3313, 3, N'country.COG', N'คองโก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3314, 3, N'country.COL', N'โคลอมเบีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3315, 3, N'country.COM', N'คอโมโรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3316, 3, N'country.CPV', N'เคปเวิร์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3317, 3, N'country.CRI', N'คอสตาริกา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3318, 3, N'country.CUB', N'คิวบา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3319, 3, N'country.CUR', N'กูราเซา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3320, 3, N'country.CYP', N'ไซปรัส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3321, 3, N'country.CZE', N'สาธารณรัฐเช็ก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3322, 3, N'country.DEU', N'เยอรมนี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3323, 3, N'country.DJI', N'จิบูตี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3324, 3, N'country.DMA', N'โดมินิกา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3325, 3, N'country.DNK', N'เดนมาร์ก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3326, 3, N'country.DOM', N'สาธารณรัฐโดมินิกัน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3327, 3, N'country.DZA', N'แอลจีเรีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3328, 3, N'country.ECU', N'เอกวาดอร์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3329, 3, N'country.EGY', N'อียิปต์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3330, 3, N'country.ERI', N'เอริเทรีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3331, 3, N'country.ESP', N'สเปน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3332, 3, N'country.EST', N'เอสโตเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3333, 3, N'country.ETH', N'เอธิโอเปีย')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3334, 3, N'country.FIN', N'ฟินแลนด์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3335, 3, N'country.FJI', N'ฟิจิ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3336, 3, N'country.FRA', N'ฝรั่งเศส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3337, 3, N'country.FSM', N'ไมโครนีเซีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3338, 3, N'country.GAB', N'กาบอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3339, 3, N'country.GBR', N'สหราชอาณาจักร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3340, 3, N'country.GEO', N'จอร์เจีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3341, 3, N'country.GHA', N'กานา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3342, 3, N'country.GIN', N'กินี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3343, 3, N'country.GMB', N'แกมเบีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3344, 3, N'country.GNB', N'กินี-บิสเซา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3345, 3, N'country.GNQ', N'อิเควทอเรียลกินี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3346, 3, N'country.GRC', N'กรีซ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3347, 3, N'country.GRD', N'เกรเนดา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3348, 3, N'country.GTM', N'กัวเตมาลา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3349, 3, N'country.GUY', N'กายอานา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3350, 3, N'country.HKG', N'ฮ่องกง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3351, 3, N'country.HND', N'ฮอนดูรัส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3352, 3, N'country.HRV', N'โครเอเชีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3353, 3, N'country.HTI', N'เฮติ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3354, 3, N'country.HUN', N'ฮังการี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3355, 3, N'country.IDN', N'อินโดนีเซีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3356, 3, N'country.IND', N'อินเดีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3357, 3, N'country.IRL', N'ไอร์แลนด์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3358, 3, N'country.IRN', N'สาธารณรัฐอิสลามแห่งอิหร่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3359, 3, N'country.IRQ', N'อิรัก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3360, 3, N'country.ISL', N'ไอซ์แลนด์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3361, 3, N'country.ISR', N'อิสราเอล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3362, 3, N'country.ITA', N'อิตาลี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3363, 3, N'country.JAM', N'จาเมกา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3364, 3, N'country.JOR', N'จอร์แดน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3365, 3, N'country.JPN', N'ญี่ปุ่น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3366, 3, N'country.KAZ', N'คาซัคสถาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3367, 3, N'country.KEN', N'เคนยา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3368, 3, N'country.KGZ', N'คีร์กีซสถาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3369, 3, N'country.KHM', N'กัมพูชา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3370, 3, N'country.KIR', N'คิริบาส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3371, 3, N'country.KNA', N'เซนต์คิตส์และเนวิส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3372, 3, N'country.KOR', N'เกาหลี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3373, 3, N'country.KWT', N'คูเวต')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3374, 3, N'country.LAO', N'สาธารณรัฐประชาธิปไตยประชาชนลาว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3375, 3, N'country.LBN', N'เลบานอน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3376, 3, N'country.LBR', N'ไลบีเรีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3377, 3, N'country.LBY', N'สาธารณรัฐสังคมนิยมประชาชนอาหรับลิเบีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3378, 3, N'country.LCA', N'เซนต์ลูเซีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3379, 3, N'country.LIE', N'ลิกเตนสไตน์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3380, 3, N'country.LKA', N'ศรีลังกา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3381, 3, N'country.LSO', N'เลโซโท')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3382, 3, N'country.LTU', N'ลิทัวเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3383, 3, N'country.LUX', N'ลักเซมเบิร์ก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3384, 3, N'country.LVA', N'ลัตเวีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3385, 3, N'country.MAC', N'มาเก๊า')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3386, 3, N'country.MAR', N'โมร็อกโก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3387, 3, N'country.MCO', N'โมนาโค')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3388, 3, N'country.MDA', N'สาธารณรัฐมอลโดวา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3389, 3, N'country.MDG', N'มาดากัสการ์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3390, 3, N'country.MDV', N'มัลดีฟส์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3391, 3, N'country.MEX', N'เม็กซิโก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3392, 3, N'country.MHL', N'หมู่เกาะมาร์แชลล์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3393, 3, N'country.MIC', N'ไมโครนีเซีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3394, 3, N'country.MKD', N'มาซิโดเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3395, 3, N'country.MLI', N'มาลี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3396, 3, N'country.MLT', N'มอลตา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3397, 3, N'country.MNG', N'มองโกเลีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3398, 3, N'country.MOZ', N'โมซัมบิก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3399, 3, N'country.MRT', N'มอริเตเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3400, 3, N'country.MSR', N'มอนต์เซอร์รัต')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3401, 3, N'country.MUS', N'มอริเชียส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3402, 3, N'country.MWI', N'มาลาวี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3403, 3, N'country.MYS', N'มาเลเซีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3404, 3, N'country.NAM', N'นามิเบีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3405, 3, N'country.NER', N'ไนเจอร์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3406, 3, N'country.NGA', N'ไนจีเรีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3407, 3, N'country.NIC', N'นิการากัว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3408, 3, N'country.NLD', N'เนเธอร์แลนด์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3409, 3, N'country.NOR', N'นอร์เวย์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3410, 3, N'country.NPL', N'เนปาล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3411, 3, N'country.NRU', N'นาอูรู')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3412, 3, N'country.NZL', N'นิวซีแลนด์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3413, 3, N'country.OMN', N'โอมาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3414, 3, N'country.PAK', N'ปากีสถาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3415, 3, N'country.PAN', N'ปานามา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3416, 3, N'country.PER', N'เปรู')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3417, 3, N'country.PHL', N'ฟิลิปปินส์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3418, 3, N'country.PLW', N'ปาเลา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3419, 3, N'country.PNG', N'ปาปัวนิวกินี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3420, 3, N'country.POL', N'โปแลนด์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3421, 3, N'country.PRK', N'สาธารณรัฐประชาธิปไตยประชาชนเกาหลี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3422, 3, N'country.PRT', N'โปรตุเกส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3423, 3, N'country.PRY', N'ปารากวัย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3424, 3, N'country.PSE', N'ปาเลสไตน์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3425, 3, N'country.QAT', N'กาตาร์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3426, 3, N'country.ROM', N'โรมาเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3427, 3, N'country.RUS', N'รัสเซีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3428, 3, N'country.RWA', N'รวันดา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3429, 3, N'country.SAF', N'แอฟริกาใต้')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3430, 3, N'country.SAU', N'ซาอุดีอาระเบีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3431, 3, N'country.SDN', N'ซูดาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3432, 3, N'country.SEN', N'เซเนกัล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3433, 3, N'country.SGP', N'สิงคโปร์')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3434, 3, N'country.SLB', N'หมู่เกาะโซโลมอน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3435, 3, N'country.SLE', N'เซียร์ราลีโอน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3436, 3, N'country.SLV', N'เอลซัลวาดอร์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3437, 3, N'country.SMR', N'ซานมารีโน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3438, 3, N'country.SOM', N'โซมาเลีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3439, 3, N'country.SRB', N'เซอร์เบีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3440, 3, N'country.STP', N'สาธารณรัฐประชาธิปไตยเซาตูเมและปรินซิปี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3441, 3, N'country.SUR', N'ซูรินาม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3442, 3, N'country.SVK', N'สโลวาเกีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3443, 3, N'country.SVN', N'สโลวีเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3444, 3, N'country.SWE', N'สวีเดน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3445, 3, N'country.SWZ', N'สวาซิแลนด์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3446, 3, N'country.SYC', N'เซเชลส์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3447, 3, N'country.SYR', N'สาธารณรัฐอาหรับซีเรีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3448, 3, N'country.TCD', N'ชาด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3449, 3, N'country.TGO', N'โตโก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3450, 3, N'country.THA', N'ไทย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3451, 3, N'country.TIN', N'ติเนียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3452, 3, N'country.TJK', N'ทาจิกิสถาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3453, 3, N'country.TKM', N'เติร์กเมนิสถาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3454, 3, N'country.TON', N'ตองกา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3455, 3, N'country.TTO', N'ตรินิแดดและโตเบโก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3456, 3, N'country.TUN', N'ตูนิเซีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3457, 3, N'country.TUR', N'ตุรกี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3458, 3, N'country.TUV', N'ตูวาลู')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3459, 3, N'country.TZA', N'แทนซาเนีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3460, 3, N'country.UGA', N'ยูกันดา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3461, 3, N'country.UKR', N'ยูเครน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3462, 3, N'country.URY', N'อุรุกวัย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3463, 3, N'country.USA', N'สหรัฐอเมริกา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3464, 3, N'country.UZB', N'อุซเบกิสถาน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3465, 3, N'country.VAT', N'อาณาจักรอันศักดิ์สิทธิ์ (นครรัฐวาติกัน)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3466, 3, N'country.VCT', N'เซนต์ วินเซนต์และเกรนาดีนส์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3467, 3, N'country.VEN', N'เวเนซุเอลา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3468, 3, N'country.VNM', N'เวียดนาม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3469, 3, N'country.VUT', N'วานูอาตู')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3470, 3, N'country.WSM', N'ซามัว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3471, 3, N'country.ZAR', N'สาธารณรัฐประชาธิปไตยคองโก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3472, 3, N'country.ZMB', N'แซมเบีย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3473, 3, N'country.ZWE', N'ซิมบับเว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3474, 4, N'country.ABW', N'阿魯巴')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3475, 4, N'country.AFG', N'阿富汗')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3476, 4, N'country.AGO', N'安哥拉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3477, 4, N'country.ALB', N'阿爾巴尼亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3478, 4, N'country.AND', N'安道爾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3479, 4, N'country.ARE', N'阿拉伯聯合酋長國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3480, 4, N'country.ARG', N'阿根廷')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3481, 4, N'country.ARM', N'亞美尼亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3482, 4, N'country.ATG', N'安提瓜和巴布達')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3483, 4, N'country.AUS', N'澳洲')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3484, 4, N'country.AUT', N'奧地利')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3485, 4, N'country.AZE', N'阿塞拜疆')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3486, 4, N'country.BDI', N'布隆迪')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3487, 4, N'country.BEL', N'比利時')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3488, 4, N'country.BEN', N'貝寧')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3489, 4, N'country.BFA', N'布基納法索')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3490, 4, N'country.BGD', N'孟加拉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3491, 4, N'country.BGR', N'保加利亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3492, 4, N'country.BHR', N'巴林')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3493, 4, N'country.BHS', N'巴拿馬')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3494, 4, N'country.BIH', N'波斯尼亞和黑塞哥維那')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3495, 4, N'country.BLR', N'白俄羅斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3496, 4, N'country.BLZ', N'伯利茲')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3497, 4, N'country.BOL', N'玻利維亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3498, 4, N'country.BRA', N'巴西')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3499, 4, N'country.BRB', N'巴巴多斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3500, 4, N'country.BRN', N'汶萊達魯薩蘭國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3501, 4, N'country.BTN', N'不丹')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3502, 4, N'country.BWA', N'博茨瓦納')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3503, 4, N'country.CAF', N'中非共和國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3504, 4, N'country.CAN', N'加拿大')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3505, 4, N'country.CAR', N'加拉加斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3506, 4, N'country.CHE', N'瑞士')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3507, 4, N'country.CHL', N'智利')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3508, 4, N'country.CHN', N'中國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3509, 4, N'country.CIV', N'科特迪瓦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3510, 4, N'country.CMR', N'喀麥隆')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3511, 4, N'country.COG', N'剛果')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3512, 4, N'country.COL', N'哥倫比亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3513, 4, N'country.COM', N'科摩羅')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3514, 4, N'country.CPV', N'維德角')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3515, 4, N'country.CRI', N'哥斯達黎加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3516, 4, N'country.CUB', N'古巴')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3517, 4, N'country.CUR', N'庫拉索')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3518, 4, N'country.CYP', N'塞浦路斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3519, 4, N'country.CZE', N'捷克共和國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3520, 4, N'country.DEU', N'德國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3521, 4, N'country.DJI', N'吉布提')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3522, 4, N'country.DMA', N'多米尼克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3523, 4, N'country.DNK', N'丹麥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3524, 4, N'country.DOM', N'多米尼加共和國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3525, 4, N'country.DZA', N'阿爾及利亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3526, 4, N'country.ECU', N'厄瓜多爾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3527, 4, N'country.EGY', N'埃及')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3528, 4, N'country.ERI', N'厄立特里亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3529, 4, N'country.ESP', N'西班牙')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3530, 4, N'country.EST', N'愛沙尼亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3531, 4, N'country.ETH', N'埃塞俄比亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3532, 4, N'country.FIN', N'芬蘭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3533, 4, N'country.FJI', N'斐濟')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3534, 4, N'country.FRA', N'法國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3535, 4, N'country.FSM', N'密克羅尼西亞島群')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3536, 4, N'country.GAB', N'加蓬')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3537, 4, N'country.GBR', N'英國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3538, 4, N'country.GEO', N'格魯吉亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3539, 4, N'country.GHA', N'加納')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3540, 4, N'country.GIN', N'畿內亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3541, 4, N'country.GMB', N'岡比亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3542, 4, N'country.GNB', N'畿內亞比紹')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3543, 4, N'country.GNQ', N'赤道畿內亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3544, 4, N'country.GRC', N'希臘')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3545, 4, N'country.GRD', N'格林納達')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3546, 4, N'country.GTM', N'危地馬拉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3547, 4, N'country.GUY', N'圭亞那')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3548, 4, N'country.HKG', N'香港')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3549, 4, N'country.HND', N'洪都拉斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3550, 4, N'country.HRV', N'克羅地亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3551, 4, N'country.HTI', N'海地')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3552, 4, N'country.HUN', N'匈牙利')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3553, 4, N'country.IDN', N'印尼')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3554, 4, N'country.IND', N'印度')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3555, 4, N'country.IRL', N'愛爾蘭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3556, 4, N'country.IRN', N'伊朗伊斯蘭共和國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3557, 4, N'country.IRQ', N'伊拉克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3558, 4, N'country.ISL', N'冰島')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3559, 4, N'country.ISR', N'以色列')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3560, 4, N'country.ITA', N'意大利')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3561, 4, N'country.JAM', N'牙買加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3562, 4, N'country.JOR', N'約旦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3563, 4, N'country.JPN', N'日本')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3564, 4, N'country.KAZ', N'哈薩克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3565, 4, N'country.KEN', N'肯亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3566, 4, N'country.KGZ', N'吉爾吉斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3567, 4, N'country.KHM', N'柬埔寨')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3568, 4, N'country.KIR', N'基里巴斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3569, 4, N'country.KNA', N'聖基茨和尼維斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3570, 4, N'country.KOR', N'韓國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3571, 4, N'country.KWT', N'科威特')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3572, 4, N'country.LAO', N'老撾人民民主共和國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3573, 4, N'country.LBN', N'黎巴嫩')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3574, 4, N'country.LBR', N'利比里亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3575, 4, N'country.LBY', N'大阿拉伯利比亞人民社會主義民眾國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3576, 4, N'country.LCA', N'聖盧西亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3577, 4, N'country.LIE', N'列支敦士登')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3578, 4, N'country.LKA', N'斯里蘭卡')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3579, 4, N'country.LSO', N'賴索托')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3580, 4, N'country.LTU', N'立陶宛')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3581, 4, N'country.LUX', N'盧森堡')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3582, 4, N'country.LVA', N'拉脫維亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3583, 4, N'country.MAC', N'澳門')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3584, 4, N'country.MAR', N'摩洛哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3585, 4, N'country.MCO', N'摩納哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3586, 4, N'country.MDA', N'摩爾多瓦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3587, 4, N'country.MDG', N'馬達加斯加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3588, 4, N'country.MDV', N'馬爾代夫')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3589, 4, N'country.MEX', N'墨西哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3590, 4, N'country.MHL', N'馬紹爾群島')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3591, 4, N'country.MIC', N'密克羅尼西亞島群')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3592, 4, N'country.MKD', N'馬其頓')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3593, 4, N'country.MLI', N'馬里')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3594, 4, N'country.MLT', N'馬耳他')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3595, 4, N'country.MNG', N'蒙古國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3596, 4, N'country.MOZ', N'莫桑比克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3597, 4, N'country.MRT', N'毛里塔尼亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3598, 4, N'country.MSR', N'蒙特塞拉特')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3599, 4, N'country.MUS', N'毛里裘斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3600, 4, N'country.MWI', N'馬拉維')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3601, 4, N'country.MYS', N'馬來西亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3602, 4, N'country.NAM', N'納米比亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3603, 4, N'country.NER', N'尼日爾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3604, 4, N'country.NGA', N'尼日利亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3605, 4, N'country.NIC', N'尼加拉瓜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3606, 4, N'country.NLD', N'荷蘭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3607, 4, N'country.NOR', N'挪威')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3608, 4, N'country.NPL', N'尼泊爾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3609, 4, N'country.NRU', N'瑙魯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3610, 4, N'country.NZL', N'新西蘭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3611, 4, N'country.OMN', N'阿曼')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3612, 4, N'country.PAK', N'巴基斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3613, 4, N'country.PAN', N'巴拿馬')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3614, 4, N'country.PER', N'秘魯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3615, 4, N'country.PHL', N'菲律賓')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3616, 4, N'country.PLW', N'帛琉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3617, 4, N'country.PNG', N'巴布亞新畿內亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3618, 4, N'country.POL', N'波蘭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3619, 4, N'country.PRK', N'朝鮮民主主義人民共和國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3620, 4, N'country.PRT', N'葡萄牙')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3621, 4, N'country.PRY', N'巴拉圭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3622, 4, N'country.PSE', N'巴勒斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3623, 4, N'country.QAT', N'卡塔爾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3624, 4, N'country.ROM', N'羅馬尼亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3625, 4, N'country.RUS', N'俄羅斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3626, 4, N'country.RWA', N'盧旺達')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3627, 4, N'country.SAF', N'南非')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3628, 4, N'country.SAU', N'沙地阿拉伯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3629, 4, N'country.SDN', N'蘇丹')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3630, 4, N'country.SEN', N'塞內加爾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3631, 4, N'country.SGP', N'新加坡')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3632, 4, N'country.SLB', N'所羅門群島')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3633, 4, N'country.SLE', N'塞拉利昂')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3634, 4, N'country.SLV', N'薩爾瓦多')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3635, 4, N'country.SMR', N'聖馬力諾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3636, 4, N'country.SOM', N'索馬里')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3637, 4, N'country.SRB', N'塞爾維亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3638, 4, N'country.STP', N'聖多美和普林西比')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3639, 4, N'country.SUR', N'蘇里南')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3640, 4, N'country.SVK', N'斯洛伐克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3641, 4, N'country.SVN', N'斯洛文尼亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3642, 4, N'country.SWE', N'瑞典')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3643, 4, N'country.SWZ', N'斯威士蘭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3644, 4, N'country.SYC', N'塞舌爾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3645, 4, N'country.SYR', N'阿拉伯敘利亞共和國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3646, 4, N'country.TCD', N'乍得')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3647, 4, N'country.TGO', N'多哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3648, 4, N'country.THA', N'泰國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3649, 4, N'country.TIN', N'天寧島')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3650, 4, N'country.TJK', N'塔吉克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3651, 4, N'country.TKM', N'土庫曼')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3652, 4, N'country.TON', N'湯加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3653, 4, N'country.TTO', N'千里達及多巴哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3654, 4, N'country.TUN', N'突尼西亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3655, 4, N'country.TUR', N'土耳其')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3656, 4, N'country.TUV', N'圖瓦盧')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3657, 4, N'country.TZA', N'坦桑尼亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3658, 4, N'country.UGA', N'烏干達')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3659, 4, N'country.UKR', N'烏克蘭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3660, 4, N'country.URY', N'烏拉圭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3661, 4, N'country.USA', N'美國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3662, 4, N'country.UZB', N'烏茲別克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3663, 4, N'country.VAT', N'聖座（梵蒂岡城國）')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3664, 4, N'country.VCT', N'聖文森特和格林納丁斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3665, 4, N'country.VEN', N'委內瑞拉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3666, 4, N'country.VNM', N'越南')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3667, 4, N'country.VUT', N'瓦努阿圖')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3668, 4, N'country.WSM', N'薩摩亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3669, 4, N'country.ZAR', N'剛果民主共和國')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3670, 4, N'country.ZMB', N'贊比亞')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3671, 4, N'country.ZWE', N'津巴布韋')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3672, 5, N'country.ABW', N'阿鲁巴')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3673, 5, N'country.AFG', N'阿富汗')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3674, 5, N'country.AGO', N'安哥拉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3675, 5, N'country.ALB', N'阿尔巴尼亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3676, 5, N'country.AND', N'安道尔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3677, 5, N'country.ARE', N'阿拉伯联合酋长国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3678, 5, N'country.ARG', N'阿根廷')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3679, 5, N'country.ARM', N'亚美尼亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3680, 5, N'country.ATG', N'安提瓜和巴布达')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3681, 5, N'country.AUS', N'澳大利亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3682, 5, N'country.AUT', N'奥地利')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3683, 5, N'country.AZE', N'阿塞拜疆')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3684, 5, N'country.BDI', N'布隆迪')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3685, 5, N'country.BEL', N'比利时')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3686, 5, N'country.BEN', N'贝宁')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3687, 5, N'country.BFA', N'布基纳法索')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3688, 5, N'country.BGD', N'孟加拉国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3689, 5, N'country.BGR', N'保加利亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3690, 5, N'country.BHR', N'巴林')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3691, 5, N'country.BHS', N'巴哈马')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3692, 5, N'country.BIH', N'波斯尼亚和黑塞哥维那')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3693, 5, N'country.BLR', N'白俄罗斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3694, 5, N'country.BLZ', N'伯利兹')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3695, 5, N'country.BOL', N'玻利维亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3696, 5, N'country.BRA', N'巴西')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3697, 5, N'country.BRB', N'巴巴多斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3698, 5, N'country.BRN', N'文莱达鲁萨兰国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3699, 5, N'country.BTN', N'不丹')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3700, 5, N'country.BWA', N'博茨瓦纳')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3701, 5, N'country.CAF', N'中非共和国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3702, 5, N'country.CAN', N'加拿大')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3703, 5, N'country.CAR', N'加拉加斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3704, 5, N'country.CHE', N'瑞士')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3705, 5, N'country.CHL', N'智利')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3706, 5, N'country.CHN', N'中国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3707, 5, N'country.CIV', N'科特迪瓦（象牙海岸）')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3708, 5, N'country.CMR', N'喀麦隆')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3709, 5, N'country.COG', N'刚果共和国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3710, 5, N'country.COL', N'哥伦比亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3711, 5, N'country.COM', N'科摩罗')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3712, 5, N'country.CPV', N'佛得角')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3713, 5, N'country.CRI', N'哥斯达黎加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3714, 5, N'country.CUB', N'古巴')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3715, 5, N'country.CUR', N'库拉索')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3716, 5, N'country.CYP', N'塞浦路斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3717, 5, N'country.CZE', N'捷克共和国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3718, 5, N'country.DEU', N'德国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3719, 5, N'country.DJI', N'吉布提')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3720, 5, N'country.DMA', N'多米尼加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3721, 5, N'country.DNK', N'丹麦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3722, 5, N'country.DOM', N'多米尼加共和国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3723, 5, N'country.DZA', N'阿尔及利亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3724, 5, N'country.ECU', N'厄瓜多尔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3725, 5, N'country.EGY', N'埃及')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3726, 5, N'country.ERI', N'厄立特里亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3727, 5, N'country.ESP', N'西班牙')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3728, 5, N'country.EST', N'爱沙尼亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3729, 5, N'country.ETH', N'埃塞俄比亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3730, 5, N'country.FIN', N'芬兰')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3731, 5, N'country.FJI', N'斐济')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3732, 5, N'country.FRA', N'法国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3733, 5, N'country.FSM', N'密克罗尼西亚')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3734, 5, N'country.GAB', N'加蓬')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3735, 5, N'country.GBR', N'英国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3736, 5, N'country.GEO', N'格鲁吉亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3737, 5, N'country.GHA', N'加纳')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3738, 5, N'country.GIN', N'几内亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3739, 5, N'country.GMB', N'冈比亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3740, 5, N'country.GNB', N'几内亚比绍')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3741, 5, N'country.GNQ', N'赤道几内亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3742, 5, N'country.GRC', N'希腊')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3743, 5, N'country.GRD', N'格林纳达')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3744, 5, N'country.GTM', N'危地马拉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3745, 5, N'country.GUY', N'圭亚那')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3746, 5, N'country.HKG', N'香港')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3747, 5, N'country.HND', N'洪都拉斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3748, 5, N'country.HRV', N'克罗地亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3749, 5, N'country.HTI', N'海地')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3750, 5, N'country.HUN', N'匈牙利')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3751, 5, N'country.IDN', N'印度尼西亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3752, 5, N'country.IND', N'印度')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3753, 5, N'country.IRL', N'爱尔兰')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3754, 5, N'country.IRN', N'伊朗')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3755, 5, N'country.IRQ', N'伊拉克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3756, 5, N'country.ISL', N'冰岛')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3757, 5, N'country.ISR', N'以色列')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3758, 5, N'country.ITA', N'意大利')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3759, 5, N'country.JAM', N'牙买加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3760, 5, N'country.JOR', N'约旦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3761, 5, N'country.JPN', N'日本')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3762, 5, N'country.KAZ', N'哈萨克斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3763, 5, N'country.KEN', N'肯尼亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3764, 5, N'country.KGZ', N'吉尔吉斯斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3765, 5, N'country.KHM', N'柬埔寨')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3766, 5, N'country.KIR', N'基里巴斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3767, 5, N'country.KNA', N'圣基茨和尼维斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3768, 5, N'country.KOR', N'韩国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3769, 5, N'country.KWT', N'科威特')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3770, 5, N'country.LAO', N'老挝人民民主共和国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3771, 5, N'country.LBN', N'黎巴嫩')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3772, 5, N'country.LBR', N'利比里亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3773, 5, N'country.LBY', N'阿拉伯利比亚民众国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3774, 5, N'country.LCA', N'圣卢西亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3775, 5, N'country.LIE', N'列支敦士登')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3776, 5, N'country.LKA', N'斯里兰卡')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3777, 5, N'country.LSO', N'莱索托')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3778, 5, N'country.LTU', N'立陶宛')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3779, 5, N'country.LUX', N'卢森堡')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3780, 5, N'country.LVA', N'拉脱维亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3781, 5, N'country.MAC', N'澳门')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3782, 5, N'country.MAR', N'摩洛哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3783, 5, N'country.MCO', N'摩纳哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3784, 5, N'country.MDA', N'摩尔多瓦共和国 ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3785, 5, N'country.MDG', N'马达加斯加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3786, 5, N'country.MDV', N'马尔代夫')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3787, 5, N'country.MEX', N'墨西哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3788, 5, N'country.MHL', N'马绍尔群岛')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3789, 5, N'country.MIC', N'密克罗尼西亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3790, 5, N'country.MKD', N'马其顿')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3791, 5, N'country.MLI', N'马里')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3792, 5, N'country.MLT', N'马耳他')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3793, 5, N'country.MNG', N'蒙古国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3794, 5, N'country.MOZ', N'莫桑比克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3795, 5, N'country.MRT', N'毛里塔尼亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3796, 5, N'country.MSR', N'蒙特塞拉特')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3797, 5, N'country.MUS', N'毛里求斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3798, 5, N'country.MWI', N'马拉维')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3799, 5, N'country.MYS', N'马来西亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3800, 5, N'country.NAM', N'纳米比亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3801, 5, N'country.NER', N'尼日尔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3802, 5, N'country.NGA', N'尼日利亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3803, 5, N'country.NIC', N'尼加拉瓜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3804, 5, N'country.NLD', N'荷兰')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3805, 5, N'country.NOR', N'挪威')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3806, 5, N'country.NPL', N'尼泊尔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3807, 5, N'country.NRU', N'瑙鲁')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3808, 5, N'country.NZL', N'新西兰')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3809, 5, N'country.OMN', N'阿曼')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3810, 5, N'country.PAK', N'巴基斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3811, 5, N'country.PAN', N'巴拿马')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3812, 5, N'country.PER', N'秘鲁')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3813, 5, N'country.PHL', N'菲律宾')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3814, 5, N'country.PLW', N'帕劳')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3815, 5, N'country.PNG', N'巴布亚新几内亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3816, 5, N'country.POL', N'波兰')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3817, 5, N'country.PRK', N'朝鲜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3818, 5, N'country.PRT', N'葡萄牙')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3819, 5, N'country.PRY', N'巴拉圭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3820, 5, N'country.PSE', N'巴勒斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3821, 5, N'country.QAT', N'卡塔尔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3822, 5, N'country.ROM', N'罗马尼亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3823, 5, N'country.RUS', N'俄罗斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3824, 5, N'country.RWA', N'卢旺达')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3825, 5, N'country.SAF', N'南非')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3826, 5, N'country.SAU', N'沙特阿拉伯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3827, 5, N'country.SDN', N'苏丹')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3828, 5, N'country.SEN', N'塞内加尔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3829, 5, N'country.SGP', N'新加坡')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3830, 5, N'country.SLB', N'所罗门群岛')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3831, 5, N'country.SLE', N'塞拉利昂')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3832, 5, N'country.SLV', N'萨尔瓦多')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3833, 5, N'country.SMR', N'圣马力诺')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3834, 5, N'country.SOM', N'索马里')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3835, 5, N'country.SRB', N'塞尔维亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3836, 5, N'country.STP', N'圣多美和普林西比')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3837, 5, N'country.SUR', N'苏里南')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3838, 5, N'country.SVK', N'斯洛伐克')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3839, 5, N'country.SVN', N'斯洛文尼亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3840, 5, N'country.SWE', N'瑞典')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3841, 5, N'country.SWZ', N'斯威士兰')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3842, 5, N'country.SYC', N'塞舌尔')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3843, 5, N'country.SYR', N'阿拉伯叙利亚共和国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3844, 5, N'country.TCD', N'乍得')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3845, 5, N'country.TGO', N'多哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3846, 5, N'country.THA', N'泰国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3847, 5, N'country.TIN', N'天宁岛')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3848, 5, N'country.TJK', N'塔吉克斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3849, 5, N'country.TKM', N'土库曼斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3850, 5, N'country.TON', N'汤加')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3851, 5, N'country.TTO', N'特立尼达和多巴哥')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3852, 5, N'country.TUN', N'突尼斯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3853, 5, N'country.TUR', N'土耳其')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3854, 5, N'country.TUV', N'图瓦卢')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3855, 5, N'country.TZA', N'坦桑尼亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3856, 5, N'country.UGA', N'乌干达')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3857, 5, N'country.UKR', N'乌克兰')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3858, 5, N'country.URY', N'乌拉圭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3859, 5, N'country.USA', N'美国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3860, 5, N'country.UZB', N'乌兹别克斯坦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3861, 5, N'country.VAT', N'罗马教廷（梵蒂冈）')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3862, 5, N'country.VCT', N'圣文森特和格林纳丁斯 ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3863, 5, N'country.VEN', N'委内瑞拉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3864, 5, N'country.VNM', N'越南')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3865, 5, N'country.VUT', N'瓦努阿图')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3866, 5, N'country.WSM', N'萨摩亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3867, 5, N'country.ZAR', N'刚果民主共和国')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3868, 5, N'country.ZMB', N'赞比亚')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3869, 5, N'country.ZWE', N'津巴布韦')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3870, 6, N'country.ABW', N'ARUBA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3871, 6, N'country.AFG', N'AFGANISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3872, 6, N'country.AGO', N'ANGOLA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3873, 6, N'country.ALB', N'ALBANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3874, 6, N'country.AND', N'ANDORRA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3875, 6, N'country.ARE', N'UNI EMIRAT ARAB')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3876, 6, N'country.ARG', N'ARGENTINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3877, 6, N'country.ARM', N'ARMENIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3878, 6, N'country.ATG', N'ANTIGUA DAN BARBUDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3879, 6, N'country.AUS', N'AUSTRALIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3880, 6, N'country.AUT', N'AUSTRIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3881, 6, N'country.AZE', N'AZERBAIJAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3882, 6, N'country.BDI', N'BURUNDI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3883, 6, N'country.BEL', N'BELGIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3884, 6, N'country.BEN', N'BENIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3885, 6, N'country.BFA', N'BURKINA FASO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3886, 6, N'country.BGD', N'BANGLADESH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3887, 6, N'country.BGR', N'BULGARIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3888, 6, N'country.BHR', N'BAHRAIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3889, 6, N'country.BHS', N'BAHAMAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3890, 6, N'country.BIH', N'BOSNIA DAN HERZEGOWINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3891, 6, N'country.BLR', N'BELARUSIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3892, 6, N'country.BLZ', N'BELIZE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3893, 6, N'country.BOL', N'BOLIVIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3894, 6, N'country.BRA', N'BRAZIL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3895, 6, N'country.BRB', N'BARBADOS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3896, 6, N'country.BRN', N'BRUNEI DARUSSALAM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3897, 6, N'country.BTN', N'BHUTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3898, 6, N'country.BWA', N'BOTSWANA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3899, 6, N'country.CAF', N'REPUBLIK AFRIKA TENGAH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3900, 6, N'country.CAN', N'KANADA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3901, 6, N'country.CAR', N'CARACAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3902, 6, N'country.CHE', N'SWISS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3903, 6, N'country.CHL', N'CHILI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3904, 6, N'country.CHN', N'CINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3905, 6, N'country.CIV', N'PANTAI GADING')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3906, 6, N'country.CMR', N'KAMERUN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3907, 6, N'country.COG', N'KONGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3908, 6, N'country.COL', N'KOLOMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3909, 6, N'country.COM', N'KOMORO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3910, 6, N'country.CPV', N'TANJUNG VERDE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3911, 6, N'country.CRI', N'KOSTA RIKA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3912, 6, N'country.CUB', N'KUBA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3913, 6, N'country.CUR', N'CURACAO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3914, 6, N'country.CYP', N'SIPRUS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3915, 6, N'country.CZE', N'REPUBLIK CEKO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3916, 6, N'country.DEU', N'JERMAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3917, 6, N'country.DJI', N'DJIBOUTI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3918, 6, N'country.DMA', N'DOMINIKA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3919, 6, N'country.DNK', N'DENMARK')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3920, 6, N'country.DOM', N'REPUBLIK DOMINIKA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3921, 6, N'country.DZA', N'ALGERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3922, 6, N'country.ECU', N'EKUADOR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3923, 6, N'country.EGY', N'MESIR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3924, 6, N'country.ERI', N'ERITREA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3925, 6, N'country.ESP', N'SPANYOL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3926, 6, N'country.EST', N'ESTONIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3927, 6, N'country.ETH', N'ETIOPIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3928, 6, N'country.FIN', N'FINLANDIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3929, 6, N'country.FJI', N'FIJI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3930, 6, N'country.FRA', N'PRANCIS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3931, 6, N'country.FSM', N'MIKRONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3932, 6, N'country.GAB', N'GABON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3933, 6, N'country.GBR', N'INGGRIS RAYA')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3934, 6, N'country.GEO', N'GEORGIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3935, 6, N'country.GHA', N'GHANA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3936, 6, N'country.GIN', N'GUINEA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3937, 6, N'country.GMB', N'GAMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3938, 6, N'country.GNB', N'GUINEA-BISSAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3939, 6, N'country.GNQ', N'GUINEA KHATULISTIWA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3940, 6, N'country.GRC', N'YUNANI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3941, 6, N'country.GRD', N'GRENADA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3942, 6, N'country.GTM', N'GUATEMALA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3943, 6, N'country.GUY', N'GUYANA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3944, 6, N'country.HKG', N'HONG KONG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3945, 6, N'country.HND', N'HONDURAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3946, 6, N'country.HRV', N'KROASIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3947, 6, N'country.HTI', N'HAITI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3948, 6, N'country.HUN', N'HUNGARIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3949, 6, N'country.IDN', N'INDONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3950, 6, N'country.IND', N'INDIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3951, 6, N'country.IRL', N'IRLANDIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3952, 6, N'country.IRN', N'IRAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3953, 6, N'country.IRQ', N'IRAK')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3954, 6, N'country.ISL', N'ISLANDIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3955, 6, N'country.ISR', N'ISRAEL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3956, 6, N'country.ITA', N'ITALIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3957, 6, N'country.JAM', N'JAMAIKA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3958, 6, N'country.JOR', N'YORDANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3959, 6, N'country.JPN', N'JEPANG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3960, 6, N'country.KAZ', N'KAZAKHSTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3961, 6, N'country.KEN', N'KENYA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3962, 6, N'country.KGZ', N'KIRGIZSTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3963, 6, N'country.KHM', N'KAMBOJA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3964, 6, N'country.KIR', N'KIRIBATI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3965, 6, N'country.KNA', N'FEDERASI SAINT KITTS DAN NEVIS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3966, 6, N'country.KOR', N'KOREA SELATAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3967, 6, N'country.KWT', N'KUWAIT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3968, 6, N'country.LAO', N'LAOS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3969, 6, N'country.LBN', N'LIBANON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3970, 6, N'country.LBR', N'LIBERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3971, 6, N'country.LBY', N'LIBYA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3972, 6, N'country.LCA', N'SAINT LUCIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3973, 6, N'country.LIE', N'LIECHTENSTEIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3974, 6, N'country.LKA', N'SRI LANKA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3975, 6, N'country.LSO', N'LESOTHO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3976, 6, N'country.LTU', N'LITUANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3977, 6, N'country.LUX', N'LUKSEMBURG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3978, 6, N'country.LVA', N'LATVIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3979, 6, N'country.MAC', N'MAKAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3980, 6, N'country.MAR', N'MAROKO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3981, 6, N'country.MCO', N'MONAKO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3982, 6, N'country.MDA', N'MOLDOVA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3983, 6, N'country.MDG', N'MADAGASKAR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3984, 6, N'country.MDV', N'MALADEWA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3985, 6, N'country.MEX', N'MEKSIKO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3986, 6, N'country.MHL', N'KEPULAUAN MARSHALL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3987, 6, N'country.MIC', N'MIKRONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3988, 6, N'country.MKD', N'MAKEDONIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3989, 6, N'country.MLI', N'MALI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3990, 6, N'country.MLT', N'MALTA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3991, 6, N'country.MNG', N'MONGOLIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3992, 6, N'country.MOZ', N'MOZAMBIK')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3993, 6, N'country.MRT', N'MAURITANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3994, 6, N'country.MSR', N'MONTSERRAT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3995, 6, N'country.MUS', N'MAURITIUS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3996, 6, N'country.MWI', N'MALAWI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3997, 6, N'country.MYS', N'MALAYSIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3998, 6, N'country.NAM', N'NAMIBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (3999, 6, N'country.NER', N'NIGER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4000, 6, N'country.NGA', N'NIGERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4001, 6, N'country.NIC', N'NIKARAGUA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4002, 6, N'country.NLD', N'BELANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4003, 6, N'country.NOR', N'NORWEGIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4004, 6, N'country.NPL', N'NEPAL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4005, 6, N'country.NRU', N'NAURU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4006, 6, N'country.NZL', N'SELANDIA BARU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4007, 6, N'country.OMN', N'OMAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4008, 6, N'country.PAK', N'PAKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4009, 6, N'country.PAN', N'PANAMA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4010, 6, N'country.PER', N'PERU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4011, 6, N'country.PHL', N'FILIPINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4012, 6, N'country.PLW', N'PALAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4013, 6, N'country.PNG', N'PAPUA NUGINI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4014, 6, N'country.POL', N'POLANDIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4015, 6, N'country.PRK', N'KOREA UTARA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4016, 6, N'country.PRT', N'PORTUGIS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4017, 6, N'country.PRY', N'PARAGUAY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4018, 6, N'country.PSE', N'PALESTINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4019, 6, N'country.QAT', N'QATAR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4020, 6, N'country.ROM', N'RUMANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4021, 6, N'country.RUS', N'RUSIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4022, 6, N'country.RWA', N'RWANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4023, 6, N'country.SAF', N'AFRIKA SELATAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4024, 6, N'country.SAU', N'ARAB SAUDI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4025, 6, N'country.SDN', N'SUDAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4026, 6, N'country.SEN', N'SENEGAL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4027, 6, N'country.SGP', N'SINGAPURA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4028, 6, N'country.SLB', N'KEPULAUAN SOLOMON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4029, 6, N'country.SLE', N'SIERRA LEONE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4030, 6, N'country.SLV', N'EL SALVADOR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4031, 6, N'country.SMR', N'SAN MARINO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4032, 6, N'country.SOM', N'SOMALIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4033, 6, N'country.SRB', N'SERBIA')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4034, 6, N'country.STP', N'SAO TOME DAN PRINCIPE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4035, 6, N'country.SUR', N'SURINAME')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4036, 6, N'country.SVK', N'SLOVAKIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4037, 6, N'country.SVN', N'SLOVENIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4038, 6, N'country.SWE', N'SWEDIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4039, 6, N'country.SWZ', N'KERAJAAN ESWATINI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4040, 6, N'country.SYC', N'SEYCHELLES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4041, 6, N'country.SYR', N'SURIAH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4042, 6, N'country.TCD', N'CHAD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4043, 6, N'country.TGO', N'TOGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4044, 6, N'country.THA', N'THAILAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4045, 6, N'country.TIN', N'TINIAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4046, 6, N'country.TJK', N'TAJIKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4047, 6, N'country.TKM', N'TURKMENISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4048, 6, N'country.TON', N'TONGA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4049, 6, N'country.TTO', N'TRINIDAD DAN TOBAGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4050, 6, N'country.TUN', N'TUNISIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4051, 6, N'country.TUR', N'TURKI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4052, 6, N'country.TUV', N'TUVALU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4053, 6, N'country.TZA', N'TANZANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4054, 6, N'country.UGA', N'UGANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4055, 6, N'country.UKR', N'UKRAINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4056, 6, N'country.URY', N'URUGUAY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4057, 6, N'country.USA', N'AMERIKA SERIKAT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4058, 6, N'country.UZB', N'UZBEKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4059, 6, N'country.VAT', N'VATIKAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4060, 6, N'country.VCT', N'ST. VINCENT DAN THE GRENADINES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4061, 6, N'country.VEN', N'VENEZUELA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4062, 6, N'country.VNM', N'VIETNAM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4063, 6, N'country.VUT', N'VANUATU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4064, 6, N'country.WSM', N'SAMOA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4065, 6, N'country.ZAR', N'KONGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4066, 6, N'country.ZMB', N'ZAMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4067, 6, N'country.ZWE', N'ZIMBABWE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4068, 7, N'country.ABW', N'ARUBA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4069, 7, N'country.AFG', N'AFGHANISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4070, 7, N'country.AGO', N'ANGOLA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4071, 7, N'country.ALB', N'ALBANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4072, 7, N'country.AND', N'ANDORRA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4073, 7, N'country.ARE', N'CÁC TIỂU VƯƠNG QUỐC Ả RẬP THỐNG NHẤT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4074, 7, N'country.ARG', N'ARGENTINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4075, 7, N'country.ARM', N'ARMENIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4076, 7, N'country.ATG', N'ANTIGUA VÀ BARBUDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4077, 7, N'country.AUS', N'AUSTRALIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4078, 7, N'country.AUT', N'ÁO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4079, 7, N'country.AZE', N'AZERBAIJAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4080, 7, N'country.BDI', N'BURUNDI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4081, 7, N'country.BEL', N'BỈ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4082, 7, N'country.BEN', N'BENIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4083, 7, N'country.BFA', N'BURKINA FASO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4084, 7, N'country.BGD', N'BANGLADESH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4085, 7, N'country.BGR', N'BULGARIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4086, 7, N'country.BHR', N'BAHRAIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4087, 7, N'country.BHS', N'BAHAMAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4088, 7, N'country.BIH', N'BOSNIA VÀ HERZEGOWINA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4089, 7, N'country.BLR', N'BELARUS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4090, 7, N'country.BLZ', N'BELIZE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4091, 7, N'country.BOL', N'BOLIVIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4092, 7, N'country.BRA', N'BRAZIL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4093, 7, N'country.BRB', N'BARBADOS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4094, 7, N'country.BRN', N'BRUNEI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4095, 7, N'country.BTN', N'BHUTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4096, 7, N'country.BWA', N'BOTSWANA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4097, 7, N'country.CAF', N'CỘNG HÒA TRUNG PHI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4098, 7, N'country.CAN', N'CANADA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4099, 7, N'country.CAR', N'CARACAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4100, 7, N'country.CHE', N'THỤY SĨ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4101, 7, N'country.CHL', N'CHILE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4102, 7, N'country.CHN', N'TRUNG QUỐC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4103, 7, N'country.CIV', N'BỜ BIỂN NGÀ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4104, 7, N'country.CMR', N'CAMEROON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4105, 7, N'country.COG', N'CONGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4106, 7, N'country.COL', N'COLOMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4107, 7, N'country.COM', N'COMOROS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4108, 7, N'country.CPV', N'CAPE VERDE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4109, 7, N'country.CRI', N'COSTA RICA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4110, 7, N'country.CUB', N'CUBA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4111, 7, N'country.CUR', N'CURACAO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4112, 7, N'country.CYP', N'SÍP')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4113, 7, N'country.CZE', N'CỘNG HÒA SÉC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4114, 7, N'country.DEU', N'ĐỨC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4115, 7, N'country.DJI', N'DJIBOUTI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4116, 7, N'country.DMA', N'DOMINICA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4117, 7, N'country.DNK', N'ĐAN MẠCH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4118, 7, N'country.DOM', N'CỘNG HÒA DOMINICA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4119, 7, N'country.DZA', N'ALGERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4120, 7, N'country.ECU', N'ECUADOR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4121, 7, N'country.EGY', N'HY LẠP')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4122, 7, N'country.ERI', N'ERITREA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4123, 7, N'country.ESP', N'TÂY BAN NHA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4124, 7, N'country.EST', N'ESTONIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4125, 7, N'country.ETH', N'ETHIOPIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4126, 7, N'country.FIN', N'PHẦN LAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4127, 7, N'country.FJI', N'FIJI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4128, 7, N'country.FRA', N'PHÁP')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4129, 7, N'country.FSM', N'MICRONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4130, 7, N'country.GAB', N'GABON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4131, 7, N'country.GBR', N'VƯƠNG QUỐC ANH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4132, 7, N'country.GEO', N'GEORGIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4133, 7, N'country.GHA', N'GHANA')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4134, 7, N'country.GIN', N'GUINEA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4135, 7, N'country.GMB', N'GAMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4136, 7, N'country.GNB', N'GUINEA-BISSAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4137, 7, N'country.GNQ', N'GUINEA XÍCH ĐẠO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4138, 7, N'country.GRC', N'HY LẠP')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4139, 7, N'country.GRD', N'GRENADA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4140, 7, N'country.GTM', N'GUATEMALA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4141, 7, N'country.GUY', N'GUYANA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4142, 7, N'country.HKG', N'HONG KONG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4143, 7, N'country.HND', N'HONDURAS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4144, 7, N'country.HRV', N'CROATIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4145, 7, N'country.HTI', N'HAITI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4146, 7, N'country.HUN', N'HUNGARY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4147, 7, N'country.IDN', N'INDONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4148, 7, N'country.IND', N'ẤN ĐỘ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4149, 7, N'country.IRL', N'IRELAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4150, 7, N'country.IRN', N'CỘNG HÒA HỒI GIÁO IRAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4151, 7, N'country.IRQ', N'IRAQ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4152, 7, N'country.ISL', N'ICELAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4153, 7, N'country.ISR', N'ISRAEL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4154, 7, N'country.ITA', N'ITALY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4155, 7, N'country.JAM', N'JAMAICA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4156, 7, N'country.JOR', N'JORDAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4157, 7, N'country.JPN', N'NHẬT BẢN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4158, 7, N'country.KAZ', N'KAZAKSTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4159, 7, N'country.KEN', N'KENYA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4160, 7, N'country.KGZ', N'KYRGYZSTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4161, 7, N'country.KHM', N'CAMBODIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4162, 7, N'country.KIR', N'KIRIBATI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4163, 7, N'country.KNA', N'SAINT KITTS VÀ NEVIS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4164, 7, N'country.KOR', N'HÀN QUỐC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4165, 7, N'country.KWT', N'KUWAIT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4166, 7, N'country.LAO', N'CỘNG HÒA DÂN CHỦ NHÂN DÂN LÀO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4167, 7, N'country.LBN', N'LEBANON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4168, 7, N'country.LBR', N'LIBERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4169, 7, N'country.LBY', N'NHÀ NƯỚC LIBYA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4170, 7, N'country.LCA', N'SAINT LUCIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4171, 7, N'country.LIE', N'LIECHTENSTEIN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4172, 7, N'country.LKA', N'SRI LANKA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4173, 7, N'country.LSO', N'LESOTHO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4174, 7, N'country.LTU', N'LITHUANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4175, 7, N'country.LUX', N'LUXEMBOURG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4176, 7, N'country.LVA', N'LATVIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4177, 7, N'country.MAC', N'MACAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4178, 7, N'country.MAR', N'MOROCCO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4179, 7, N'country.MCO', N'MONACO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4180, 7, N'country.MDA', N'CỘNG HÒA MOLDOVA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4181, 7, N'country.MDG', N'MADAGASCAR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4182, 7, N'country.MDV', N'MALDIVES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4183, 7, N'country.MEX', N'MEXICO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4184, 7, N'country.MHL', N'QUẦN ĐẢO MARSHALL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4185, 7, N'country.MIC', N'MICRONESIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4186, 7, N'country.MKD', N'MACEDONIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4187, 7, N'country.MLI', N'MALI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4188, 7, N'country.MLT', N'MALTA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4189, 7, N'country.MNG', N'MÔNG CỔ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4190, 7, N'country.MOZ', N'MOZAMBIQUE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4191, 7, N'country.MRT', N'MAURITANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4192, 7, N'country.MSR', N'MONTSERRAT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4193, 7, N'country.MUS', N'MAURITIUS')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4194, 7, N'country.MWI', N'MALAWI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4195, 7, N'country.MYS', N'MALAYSIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4196, 7, N'country.NAM', N'NAMIBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4197, 7, N'country.NER', N'NIGER')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4198, 7, N'country.NGA', N'NIGERIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4199, 7, N'country.NIC', N'NICARAGUA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4200, 7, N'country.NLD', N'HÀ LAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4201, 7, N'country.NOR', N'NA UY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4202, 7, N'country.NPL', N'NEPAL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4203, 7, N'country.NRU', N'NAURU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4204, 7, N'country.NZL', N'NEW ZEALAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4205, 7, N'country.OMN', N'OMAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4206, 7, N'country.PAK', N'PAKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4207, 7, N'country.PAN', N'PANAMA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4208, 7, N'country.PER', N'PERU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4209, 7, N'country.PHL', N'PHILLIPINES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4210, 7, N'country.PLW', N'PALAU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4211, 7, N'country.PNG', N'PAPUA NEW GUINEA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4212, 7, N'country.POL', N'BA LAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4213, 7, N'country.PRK', N'CỘNG HÒA DÂN CHỦ NHÂN DÂN TRIỀU TIÊN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4214, 7, N'country.PRT', N'BỒ ĐÀO NHA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4215, 7, N'country.PRY', N'PARAGUAY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4216, 7, N'country.PSE', N'PALESTINE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4217, 7, N'country.QAT', N'QATAR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4218, 7, N'country.ROM', N'ROMANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4219, 7, N'country.RUS', N'NGA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4220, 7, N'country.RWA', N'RWANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4221, 7, N'country.SAF', N'NAM PHI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4222, 7, N'country.SAU', N'Ả RẬP XÊ ÚT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4223, 7, N'country.SDN', N'SUDAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4224, 7, N'country.SEN', N'SENEGAL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4225, 7, N'country.SGP', N'SINGAPORE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4226, 7, N'country.SLB', N'QUẦN ĐẢO SOLOMON')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4227, 7, N'country.SLE', N'SIERRA LEONE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4228, 7, N'country.SLV', N'EL SALVADOR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4229, 7, N'country.SMR', N'SAN MARINO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4230, 7, N'country.SOM', N'SOMALIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4231, 7, N'country.SRB', N'SERBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4232, 7, N'country.STP', N'SAO TOME VÀ PRINCIPE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4233, 7, N'country.SUR', N'SURINAM')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4234, 7, N'country.SVK', N'SLOVAKIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4235, 7, N'country.SVN', N'SLOVENIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4236, 7, N'country.SWE', N'THỤY ĐIỂN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4237, 7, N'country.SWZ', N'SWAZILAND')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4238, 7, N'country.SYC', N'SEYCHELLES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4239, 7, N'country.SYR', N'CỘNG HÒA Ả RẬP SYRIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4240, 7, N'country.TCD', N'CHAD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4241, 7, N'country.TGO', N'TOGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4242, 7, N'country.THA', N'THÁI LAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4243, 7, N'country.TIN', N'TINIAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4244, 7, N'country.TJK', N'TAJIKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4245, 7, N'country.TKM', N'TURKMENISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4246, 7, N'country.TON', N'TONGA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4247, 7, N'country.TTO', N'TRINIDAD & TOBAGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4248, 7, N'country.TUN', N'TUNISIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4249, 7, N'country.TUR', N'THỔ NHĨ KỲ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4250, 7, N'country.TUV', N'TUVALU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4251, 7, N'country.TZA', N'TANZANIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4252, 7, N'country.UGA', N'UGANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4253, 7, N'country.UKR', N'UKRAINE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4254, 7, N'country.URY', N'URUGUAY')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4255, 7, N'country.USA', N'HOA KỲ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4256, 7, N'country.UZB', N'UZBEKISTAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4257, 7, N'country.VAT', N'TÒA THÁNH (THÀNH VATICAN)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4258, 7, N'country.VCT', N'ST. VINCENT VÀ THE GRENADINES')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4259, 7, N'country.VEN', N'VENEZUELA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4260, 7, N'country.VNM', N'VIỆT NAM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4261, 7, N'country.VUT', N'VANUATU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4262, 7, N'country.WSM', N'SAMOA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4263, 7, N'country.ZAR', N'CỘNG HÒA DÂN CHỦ CONGO')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4264, 7, N'country.ZMB', N'ZAMBIA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4265, 7, N'country.ZWE', N'ZIMBABWE')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4267, 2, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4268, 3, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4269, 4, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4271, 2, N'amount_100', N'USD 100')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4272, 3, N'amount_100', N'100 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4273, 4, N'amount_100', N'100 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4274, 5, N'amount_100', N'663 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4275, 6, N'amount_100', N'USD100')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4276, 7, N'amount_100', N'100 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4278, 2, N'amount_100perday', N'일일 USD 100')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4279, 3, N'amount_100perday', N'100 ดอลลาร์สหรัฐต่อวัน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4280, 4, N'amount_100perday', N'每日 100 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4281, 5, N'amount_100perday', N'每日663 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4282, 6, N'amount_100perday', N'USD100 per hari')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4283, 7, N'amount_100perday', N'100 USD mỗi ngày')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4285, 2, N'amount_250', N'USD 250')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4286, 3, N'amount_250', N'250 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4287, 4, N'amount_250', N'250 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4288, 5, N'amount_250', N'1,660 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4289, 6, N'amount_250', N'USD250')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4290, 7, N'amount_250', N'250 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4292, 2, N'amount_500', N'USD 500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4293, 3, N'amount_500', N'500 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4294, 4, N'amount_500', N'500 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4295, 5, N'amount_500', N'3,315 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4296, 6, N'amount_500', N'USD500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4297, 7, N'amount_500', N'500 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4299, 2, N'amount_included', N'포함')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4300, 3, N'amount_included', N'รวม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4301, 4, N'amount_included', N'包括')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4302, 5, N'amount_included', N'包括')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4303, 6, N'amount_included', N'Sudah termasuk')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4304, 7, N'amount_included', N'Đã bao gồm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4306, 2, N'amount_uptousd100k', N'최대 USD 100,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4307, 3, N'amount_uptousd100k', N'สูงถึง 100,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4308, 4, N'amount_uptousd100k', N'最高达 100,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4309, 5, N'amount_uptousd100k', N'最高663,000 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4310, 6, N'amount_uptousd100k', N'Hingga USD100.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4311, 7, N'amount_uptousd100k', N'Lên tới 100.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4313, 2, N'amount_uptousd1k', N'최대 USD 1,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4314, 3, N'amount_uptousd1k', N'สูงถึง 1,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4315, 4, N'amount_uptousd1k', N'最高达 1,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4316, 5, N'amount_uptousd1k', N'最高6,300 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4317, 6, N'amount_uptousd1k', N'Hingga USD1.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4318, 7, N'amount_uptousd1k', N'Lên tới 1.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4320, 2, N'amount_uptousd2_5k', N'최대 USD 2,500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4321, 3, N'amount_uptousd2_5k', N'สูงถึง 2,500 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4322, 4, N'amount_uptousd2_5k', N'最高达 2,500 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4323, 5, N'amount_uptousd2_5k', N'最高16,575 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4324, 6, N'amount_uptousd2_5k', N'Hingga USD2.500')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4325, 7, N'amount_uptousd2_5k', N'Lên tới 2.500 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4327, 2, N'amount_uptousd250k', N'최대 USD 250,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4328, 3, N'amount_uptousd250k', N'สูงถึง 250,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4329, 4, N'amount_uptousd250k', N'最高达 250,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4330, 5, N'amount_uptousd250k', N'最高1,657,500 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4331, 6, N'amount_uptousd250k', N'Hingga USD250.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4332, 7, N'amount_uptousd250k', N'Lên tới 250.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4334, 2, N'amount_uptousd500k', N'최대 USD 500,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4335, 3, N'amount_uptousd500k', N'สูงถึง 500,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4336, 4, N'amount_uptousd500k', N'最高达 500,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4337, 5, N'amount_uptousd500k', N'最高3,315,000 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4338, 6, N'amount_uptousd500k', N'Hingga USD500.000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4339, 7, N'amount_uptousd500k', N'Lên tới 500.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4341, 2, N'amount_uptousd5k', N'최대 USD 5,000')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4342, 3, N'amount_uptousd5k', N'สูงถึง 5,000 ดอลลาร์สหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4343, 4, N'amount_uptousd5k', N'最高达 5,000 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4344, 5, N'amount_uptousd5k', N'最高33,150 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4345, 6, N'amount_uptousd5k', N'Hingga USD5.000')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4346, 7, N'amount_uptousd5k', N'Lên tới 5.000 USD')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4348, 2, N'attachment_file_name', N'TravelInsurance.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4349, 3, N'attachment_file_name', N'TravelInsurance.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4350, 4, N'attachment_file_name', N'TravelInsurance.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4351, 5, N'attachment_file_name', N'TravelInsurance.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4352, 6, N'attachment_file_name', N'TravelInsurance.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4353, 7, N'attachment_file_name', N'TravelInsurance.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4355, 2, N'back', N'뒤로')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4356, 3, N'back', N'ย้อนกลับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4357, 4, N'back', N'返回')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4358, 5, N'back', N'返回')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4359, 6, N'back', N'Kembali')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4360, 7, N'back', N'Trở về')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4362, 2, N'ben_assistance_department', N'해외 응급 지원 서비스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4363, 3, N'ben_assistance_department', N'บริการให้ความช่วยเหลือฉุกเฉินในต่างประเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4364, 4, N'ben_assistance_department', N'海外緊急援助服務')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4365, 5, N'ben_assistance_department', N'海外紧急援助服务')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4366, 6, N'ben_assistance_department', N'Layanan Bantuan Darurat Luar Negeri')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4367, 7, N'ben_assistance_department', N'Dịch vụ Hỗ trợ khẩn cấp ở nước ngoài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4369, 2, N'ben_common_carrier', N'일반 수화물 지연')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4370, 3, N'ben_common_carrier', N'ความล่าช้าในการขนถ่ายกระเป๋าเดินทางของผู้ประกอบการขนส่ง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4371, 4, N'ben_common_carrier', N'公共運輸工具行李延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4372, 5, N'ben_common_carrier', N'公共承运人行李延误')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4373, 6, N'ben_common_carrier', N'Keterlambatan Bagasi Angkutan Umum')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4374, 7, N'ben_common_carrier', N'Hành lý đến trễ do các hãng vận tải công cộng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4376, 2, N'ben_common_carrier_description', N'4시간 초과 지연의 경우')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4377, 3, N'ben_common_carrier_description', N'สำหรับความล่าช้าเกินกว่า 4 ชั่วโมง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4378, 4, N'ben_common_carrier_description', N'超過 4 小時的延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4379, 5, N'ben_common_carrier_description', N'延误超过4小时')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4380, 6, N'ben_common_carrier_description', N'Apabila terlambat lebih dari 4 jam')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4381, 7, N'ben_common_carrier_description', N'Khi trễ quá 4 tiếng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4383, 2, N'ben_daily_hospital', N'일일 실손 의료 보험 (현금)')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4384, 3, N'ben_daily_hospital', N'ผลประโยชน์รายวันสำหรับการเข้าพักในโรงพยาบาล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4385, 4, N'ben_daily_hospital', N'每日住院現金保險賠償')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4386, 5, N'ben_daily_hospital', N'住院每日现金保障')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4387, 6, N'ben_daily_hospital', N'Manfaat Tunai Rawat Inap Harian')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4388, 7, N'ben_daily_hospital', N'Quyền lợi tiền nằm viện hằng ngày')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4390, 2, N'ben_daily_hospital_description', N'최소 3일, 최대 15일.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4391, 3, N'ben_daily_hospital_description', N'ต่ำสุด 3 วัน สูงสุด 15 วัน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4392, 4, N'ben_daily_hospital_description', N'最短 3 天，最长 15 天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4393, 5, N'ben_daily_hospital_description', N'最短 3 天，最長 15 天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4394, 6, N'ben_daily_hospital_description', N'Minimum 3 hari, maksimum 15 hari.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4395, 7, N'ben_daily_hospital_description', N'Tối thiểu 3 ngày, tối đa 15 ngày.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4397, 2, N'ben_emergency', N'응급 의무 후송')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4398, 3, N'ben_emergency', N'การเคลื่อนย้ายทางการแพทย์ฉุกเฉิน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4399, 4, N'ben_emergency', N'緊急醫療後送')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4400, 5, N'ben_emergency', N'海外 緊急醫療運送/遺體送返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4401, 6, N'ben_emergency', N'Evakuasi Medis Darurat Luar Negeri')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4402, 7, N'ben_emergency', N'Sơ tán y tế khẩn cấp ở nước ngoài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4404, 2, N'ben_emergency_repatriation', N'해외 응급 의무 후송/유해 송환')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4405, 3, N'ben_emergency_repatriation', N'การเคลื่อนย้ายทางการแพทย์ฉุกเฉิน/ การส่งศพกลับประเทศภูมิลำเนาในต่างประเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4406, 4, N'ben_emergency_repatriation', N'海外紧急医疗运送/遗体送返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4407, 5, N'ben_emergency_repatriation', N'身故遗体送返 / 遗体遣返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4408, 6, N'ben_emergency_repatriation', N'Evakuasi Medis Darurat / Pemulangan Jenazah Luar Negeri')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4409, 7, N'ben_emergency_repatriation', N'Sơ tán y tế khẩn cấp ở nước ngoài/Hồi hương thi hài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4411, 2, N'ben_medical', N'상해 또는 질병으로 인한 해외 의료 비용 부상 또는 질병으로 인한 의료비')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4412, 3, N'ben_medical', N'ค่าใช้จ่ายทางการแพทย์ในต่างประเทศ เนื่องมาจากการบาดเจ็บหรือการเจ็บป่วย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4413, 4, N'ben_medical', N'因受伤或疾病而产生的海外医疗费用')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4414, 5, N'ben_medical', N'因受傷或疾病而產生的海外醫療費用')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4415, 6, N'ben_medical', N'Biaya Medis Luar Negeri akibat Cedera atau Sakit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4416, 7, N'ben_medical', N'Chi phí y tế ở nước ngoài do bị thương hoặc đau ốm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4418, 2, N'ben_missed_connection', N'연결편 결항')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4419, 3, N'ben_missed_connection', N'การพลาดการต่อเที่ยวบิน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4420, 4, N'ben_missed_connection', N'錯過轉乘班機')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4421, 5, N'ben_missed_connection', N'错过转机')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4422, 6, N'ben_missed_connection', N'Gagal Transit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4423, 7, N'ben_missed_connection', N'Mất liên lạc')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4425, 2, N'ben_overseas_quarantine', N'해외 격리 지원금')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4426, 3, N'ben_overseas_quarantine', N'เงินช่วยเหลือสำหรับการกักตัวในต่างประเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4427, 4, N'ben_overseas_quarantine', N'海外檢疫津貼')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4428, 5, N'ben_overseas_quarantine', N'海外隔离津贴')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4429, 6, N'ben_overseas_quarantine', N'Tunjangan Karantina Luar Negeri')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4430, 7, N'ben_overseas_quarantine', N'Trợ cấp cách ly ở nước ngoài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4432, 2, N'ben_overseas_quarantine_description', N'최대 14일.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4433, 3, N'ben_overseas_quarantine_description', N'สูงสุด 14 วัน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4434, 4, N'ben_overseas_quarantine_description', N'最长 14 天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4435, 5, N'ben_overseas_quarantine_description', N'最长14天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4436, 6, N'ben_overseas_quarantine_description', N'Maksimum 14 hari.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4437, 7, N'ben_overseas_quarantine_description', N'Tối đa 14 ngày.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4439, 2, N'ben_personal_baggage', N'노트북 컴퓨터 등 개인 수하물')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4440, 3, N'ben_personal_baggage', N'กระเป๋าเดินทางส่วนตัว รวมถึงคอมพิวเตอร์แล็ปท๊อป')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4441, 4, N'ben_personal_baggage', N'包括手提電腦在內的個人行李')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4442, 5, N'ben_personal_baggage', N'个人行李，包括笔记本电脑')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4443, 6, N'ben_personal_baggage', N'Bagasi Pribadi Termasuk Laptop')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4444, 7, N'ben_personal_baggage', N'Hành lý cá nhân bao gồm máy tính xách tay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4446, 2, N'ben_personal_baggage_description', N'단일 품목 최대 한도 KRW 718,750 조건')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4447, 3, N'ben_personal_baggage_description', N'อยู่ภายใต้ขีดจำกัดสูงสุดของรายการเดียวที่ 625 เหรียญสหรัฐ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4448, 4, N'ben_personal_baggage_description', N'單件物品上限為 625 美元')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4449, 5, N'ben_personal_baggage_description', N'单件遺失物品最高限额为4,145 人民币')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4450, 6, N'ben_personal_baggage_description', N'Dikenai batas maksimum USD625 per barang.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4451, 7, N'ben_personal_baggage_description', N'Theo giới hạn tối đa của một món đồ là 625 USD.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4453, 2, N'ben_repatriation', N'유해 본국 송환')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4454, 3, N'ben_repatriation', N'การส่งศพกลับประเทศภูมิลำเนา')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4455, 4, N'ben_repatriation', N'遺體遣返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4456, 5, N'ben_repatriation', N'遺體送返')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4457, 6, N'ben_repatriation', N'Repatriasi Jenazah')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4458, 7, N'ben_repatriation', N'Hồi hương thi hài')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4460, 2, N'ben_trip_cancellation', N'여행 취소')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4461, 3, N'ben_trip_cancellation', N'การยกเลิกการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4462, 4, N'ben_trip_cancellation', N'行程取消')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4463, 5, N'ben_trip_cancellation', N'旅行取消')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4464, 6, N'ben_trip_cancellation', N'Pembatalan Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4465, 7, N'ben_trip_cancellation', N'Huỷ chuyến đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4467, 2, N'ben_trip_curtailment', N'여행 단축')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4468, 3, N'ben_trip_curtailment', N'การลดจำนวนวันเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4469, 4, N'ben_trip_curtailment', N'行程縮減')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4470, 5, N'ben_trip_curtailment', N'旅行缩减')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4471, 6, N'ben_trip_curtailment', N'Pengurangan Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4472, 7, N'ben_trip_curtailment', N'Rút ngắn chuyến đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4474, 2, N'ben_trip_delay', N'비행 지연')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4475, 3, N'ben_trip_delay', N'เที่ยวบินล่าช้า')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4476, 4, N'ben_trip_delay', N'航班延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4477, 5, N'ben_trip_delay', N'旅行延误')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4478, 6, N'ben_trip_delay', N'Penundaan Penerbangan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4479, 7, N'ben_trip_delay', N'Trễ chuyến bay')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4481, 2, N'ben_trip_delay_description', N'4시간 초과 지연의 경우')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4482, 3, N'ben_trip_delay_description', N'สำหรับความล่าช้าเกินกว่า 4 ชั่วโมง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4483, 4, N'ben_trip_delay_description', N'超過 4 小時的延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4484, 5, N'ben_trip_delay_description', N'延误超过4小时')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4485, 6, N'ben_trip_delay_description', N'Apabila ditunda lebih dari 4 jam.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4486, 7, N'ben_trip_delay_description', N'Khi trễ quá 4 tiếng.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4488, 2, N'ben_trip_postponement', N'여행 연기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4489, 3, N'ben_trip_postponement', N'การเลื่อนการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4490, 4, N'ben_trip_postponement', N'行程延誤')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4491, 5, N'ben_trip_postponement', N'旅行延期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4492, 6, N'ben_trip_postponement', N'Penangguhan Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4493, 7, N'ben_trip_postponement', N'Hoãn chuyến đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4495, 2, N'bin', N'마스터 카드의 첫 10자리 번호')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4496, 3, N'bin', N'หมายเลข 10 หลักแรกของมาสเตอร์การ์ดของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4499, 6, N'bin', N'SEPULUH DIGIT PERTAMA MASTERCARD ANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4500, 7, N'bin', N'MƯỜI CHỮ SỐ ĐẦU TIÊN TRÊN MASTERCARD CỦA BẠN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4502, 2, N'bin_info', N'결제 카드의 첫 10자리 번호')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4503, 3, N'bin_info', N'หมายเลข 10 หลักแรกของบัตรชำระเงินของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4504, 4, N'bin_info', N'支付卡的前 10 位數字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4505, 5, N'bin_info', N'支付卡的前 10 位数字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4506, 6, N'bin_info', N'10 digit pertama kartu pembayaran Anda')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4507, 7, N'bin_info', N'10 chữ số đầu tiên trên thẻ thanh toán của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4509, 2, N'breadcrumbs_cardholder', N'개인 정보')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4510, 3, N'breadcrumbs_cardholder', N'ข้อมูลส่วนตัว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4511, 4, N'breadcrumbs_cardholder', N'個人資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4512, 5, N'breadcrumbs_cardholder', N'个人资料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4513, 6, N'breadcrumbs_cardholder', N'Informasi Pribadi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4514, 7, N'breadcrumbs_cardholder', N'Thông tin cá nhân')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4516, 2, N'breadcrumbs_review', N'검토 및 동의')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4517, 3, N'breadcrumbs_review', N'ทบทวนและยอมรับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4518, 4, N'breadcrumbs_review', N'閱讀並接受')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4519, 5, N'breadcrumbs_review', N'阅读并接受')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4520, 6, N'breadcrumbs_review', N'Tinjau dan Setujui')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4521, 7, N'breadcrumbs_review', N'Xem xét và chấp nhận')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4523, 2, N'cat_assistance_department', N'지원 서비스')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4524, 3, N'cat_assistance_department', N'บริการให้ความช่วยเหลือฉุกเฉินในต่างประเทศ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4525, 4, N'cat_assistance_department', N'援助部門服務')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4526, 5, N'cat_assistance_department', N'援助部门服务')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4527, 6, N'cat_assistance_department', N'Layanan Bagian Bantuan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4528, 7, N'cat_assistance_department', N'Dịch vụ phòng ban hỗ trợ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4530, 2, N'cat_baggage', N'수하물 보호')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4531, 3, N'cat_baggage', N'ความคุ้มครองกระเป๋าสัมภาระ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4532, 4, N'cat_baggage', N'行李保護')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4533, 5, N'cat_baggage', N'行李保障')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4534, 6, N'cat_baggage', N'Perlindungan Bagasi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4535, 7, N'cat_baggage', N'Bảo vệ hành lý')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4537, 2, N'cat_travel_medical', N'여행자 의료 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4538, 3, N'cat_travel_medical', N'สิทธิประโยชน์ทางการแพทย์สำหรับการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4539, 4, N'cat_travel_medical', N'旅遊醫療保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4540, 5, N'cat_travel_medical', N'旅游医疗保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4541, 6, N'cat_travel_medical', N'Manfaat Medis Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4542, 7, N'cat_travel_medical', N'Quyền lợi y tế du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4544, 2, N'cat_trip_inconvenience', N'여행 애로 사항 보호')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4545, 3, N'cat_trip_inconvenience', N'การคุ้มครองความไม่สะดวกในการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4546, 4, N'cat_trip_inconvenience', N'旅程不便保護')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4547, 5, N'cat_trip_inconvenience', N'旅行意外无忧保障')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4548, 6, N'cat_trip_inconvenience', N'Perlindungan dari Ketidaknyamanan Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4549, 7, N'cat_trip_inconvenience', N'Bảo vệ khỏi sự bất tiện của chuyến đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4551, 2, N'close', N'닫기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4552, 3, N'close', N'ปิด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4553, 4, N'close', N'關閉')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4554, 6, N'close', N'Tutup')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4555, 7, N'close', N'Đóng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4557, 2, N'confirm_msgOne', N'인적 사항을 확인하시고 가입 완료를 클릭해 여행자 보험에 가입하십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4558, 3, N'confirm_msgOne', N'โปรดตรวจสอบข้อมูลส่วนตัวของท่านและคลิก “ลงทะเบียน” เพื่อลงทะเบียนประกันภัยการเดินทางของท่าน.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4559, 4, N'confirm_msgOne', N'請檢查您的個人資料，並點擊「完成註冊」以註冊您的旅遊保險.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4560, 5, N'confirm_msgOne', N'请检查您的个人资料，并点击 “完成注册”以注册您的旅游保险.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4561, 6, N'confirm_msgOne', N'Periksa kembali data pribadi Anda, lalu klik “Selesaikan Pendaftaran” untuk mendaftarkan Asuransi Perjalanan Anda.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4562, 7, N'confirm_msgOne', N'Vui lòng kiểm tra thông tin cá nhân và nhấp vào “Hoàn thành đăng ký” để đăng ký Bảo hiểm Du lịch của bạn.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4564, 2, N'confirm_msgTwo', N'이메일을 통해 가입 확인을 진행하시게 됩니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4565, 3, N'confirm_msgTwo', N'จะยืนยันการลงทะเบียนประกันภัยการเดินทางกับท่านทางอีเมล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4566, 4, N'confirm_msgTwo', N'我們將通過電子郵件確認註冊。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4567, 5, N'confirm_msgTwo', N'我们将通过电子邮件确认注册。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4568, 6, N'confirm_msgTwo', N'Pendaftaran akan dikonfirmasikan kepada Anda melalui email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4569, 7, N'confirm_msgTwo', N'Xác nhận đăng ký sẽ được gửi cho bạn qua email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4571, 2, N'confirmationMail_regards', N'따뜻한 안부')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4572, 3, N'confirmationMail_regards', N'ขอแสดงความนับถือ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4573, 4, N'confirmationMail_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4574, 5, N'confirmationMail_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4575, 6, N'confirmationMail_regards', N'Salam takzim')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4576, 7, N'confirmationMail_regards', N'Trân trọng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4578, 2, N'coverage_amount', N'보장 금액')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4579, 3, N'coverage_amount', N'วงเงินคุ้มครอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4580, 4, N'coverage_amount', N'承保金额')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4581, 5, N'coverage_amount', N'承保金額')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4582, 6, N'coverage_amount', N'Jumlah Pertanggungan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4583, 7, N'coverage_amount', N'Số tiền bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4585, 2, N'coverage_categories', N'보장 카테고리')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4586, 3, N'coverage_categories', N'หมวดความคุ้มครอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4587, 4, N'coverage_categories', N'承保项目')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4588, 5, N'coverage_categories', N'承保項目')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4589, 6, N'coverage_categories', N'Kategori Pertanggungan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4590, 7, N'coverage_categories', N'Danh mục bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4592, 2, N'coverage_description', N'보장 특이사항')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4593, 3, N'coverage_description', N'รายละเอียดความคุ้มครอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4594, 4, N'coverage_description', N'承保项目细节')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4595, 5, N'coverage_description', N'承保項目細節')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4596, 6, N'coverage_description', N'Spesifikasi Pertanggungan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4597, 7, N'coverage_description', N'Đặc điểm bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4599, 2, N'coverage_name', N'보장 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4600, 3, N'coverage_name', N'ชื่อความคุ้มครอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4601, 4, N'coverage_name', N'承保项目名称')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4602, 5, N'coverage_name', N'承保項目名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4603, 6, N'coverage_name', N'Nama Pertanggungan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4604, 7, N'coverage_name', N'Tên bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4606, 2, N'dados', N'카드소유주 상세 내역')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4607, 3, N'dados', N'ข้อมูลของผู้ถือบัตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4610, 6, N'dados', N'Data Pemegang Kartu')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4611, 7, N'dados', N'Thông tin chủ thẻ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4613, 2, N'dados_bilhete', N'증명서 상세 내역')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4614, 3, N'dados_bilhete', N'รายละเอียดของหนังสือรับรอง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4615, 4, N'dados_bilhete', N'證明文件詳細資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4616, 5, N'dados_bilhete', N'证明文件详细资料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4617, 6, N'dados_bilhete', N'Data Sertifikat')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4618, 7, N'dados_bilhete', N'Thông tin chứng nhận')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4620, 2, N'dear', N'귀하')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4621, 3, N'dear', N'เรียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4622, 4, N'dear', N'親愛的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4623, 5, N'dear', N'亲爱的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4624, 6, N'dear', N'Yang terhormat')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4625, 7, N'dear', N'Kính gửi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4627, 2, N'description', N'아래 사항을 입력하십시오. 귀하께서 보험을 청구하실 경우, 귀하께서 여행자 보험에서 보장되는 카드 소유주인 것을 확인하는 용도로 아래 정보를 사용할 것입니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4628, 3, N'description', N'โปรดใส่รายละเอียดของท่านด้านล่าง เราจะใช้รายละเอียดเหล่านี้ในการระบุตัวตนของท่านในฐานะผู้ถือบัตรที่ได้รับความคุ้มครองโดยประกันภัยการเดินทางในกรณีที่ท่านเรียกร้องค่าสินไหมทดแทน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4629, 4, N'description', N'請在下方輸入您的詳細資料。如果您提出索賠，我們將使用這些資料確認您是受旅遊保險承保的持卡人。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4630, 5, N'description', N'请在下方输入您的详细资料。如果您提出索赔，我们将使用这些资料确认您是受旅游保险承保的持卡人。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4631, 6, N'description', N'Masukkan data Anda di bawah ini. Kami akan menggunakan data ini untuk mengidentifikasi Anda sebagai pemegang kartu yang ditanggung oleh Asuransi Perjalanan apabila Anda kelak mengajukan klaim.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4632, 7, N'description', N'Vui lòng nhập thông tin chi tiết của bạn ở bên dưới. Chúng tôi sẽ sử dụng thông tin này để xác định bạn là chủ thẻ được hưởng Bảo hiểm Du lịch trong trường hợp bạn yêu cầu bảo hiểm.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4634, 2, N'edit', N'편집')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4635, 3, N'edit', N'แก้ไข')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4636, 4, N'edit', N'編輯')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4637, 5, N'edit', N'编辑')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4638, 6, N'edit', N'Edit')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4639, 7, N'edit', N'Chỉnh sửa')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4641, 2, N'effective_date', N'유효일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4642, 3, N'effective_date', N'วันที่มีผลใช้บังคับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4643, 4, N'effective_date', N'有效日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4644, 5, N'effective_date', N'有效日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4645, 6, N'effective_date', N'Tanggal Berlaku')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4646, 7, N'effective_date', N'Ngày có hiệu lực')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4648, 2, N'email', N'이메일 주소')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4649, 3, N'email', N'ที่อยู่อีเมล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4650, 4, N'email', N'電子郵件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4651, 5, N'email', N'电子邮件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4652, 6, N'email', N'EMAIL ALAMAT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4653, 7, N'email', N'ĐỊA CHỈ EMAIL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4655, 6, N'en', N'Bahasa Inggris')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4656, 7, N'en', N'Tiếng Anh')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4658, 2, N'ERR_CARDHOLDER_MORE_14', N'14세 이상이어야 합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4659, 3, N'ERR_CARDHOLDER_MORE_14', N'ต้องมีอายุมากกว่า 14 ปี')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4660, 4, N'ERR_CARDHOLDER_MORE_14', N'必須年滿 14 歲')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4661, 5, N'ERR_CARDHOLDER_MORE_14', N'必须年满 14 岁')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4662, 6, N'ERR_CARDHOLDER_MORE_14', N'Harus berusia di atas 14 tahun')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4663, 7, N'ERR_CARDHOLDER_MORE_14', N'Phải trên 14 tuổi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4665, 2, N'ERR_FIELD_LENGTH_10', N'반드시 열자리여야 합니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4666, 3, N'ERR_FIELD_LENGTH_10', N'ตัวเลขจะต้องมีสิบหลัก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4667, 4, N'ERR_FIELD_LENGTH_10', N'必須填寫 10 位數字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4668, 5, N'ERR_FIELD_LENGTH_10', N'必须填写 10 位数字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4669, 6, N'ERR_FIELD_LENGTH_10', N'Digit harus berjumlah sepuluh')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4670, 7, N'ERR_FIELD_LENGTH_10', N'Phải có đủ 10 chữ số')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4672, 2, N'ERR_FIELD_REQUIRED', N'필수 영역')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4673, 3, N'ERR_FIELD_REQUIRED', N'ช่องที่จำเป็นต้องกรอกข้อมูล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4674, 4, N'ERR_FIELD_REQUIRED', N'必填欄')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4675, 5, N'ERR_FIELD_REQUIRED', N'必填栏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4676, 6, N'ERR_FIELD_REQUIRED', N'Wajib Diisi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4677, 7, N'ERR_FIELD_REQUIRED', N'Trường bắt buộc')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4679, 2, N'ERR_INVALID_DATE', N'잘못된 날짜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4680, 3, N'ERR_INVALID_DATE', N'วันที่ไม่ถูกต้อง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4681, 4, N'ERR_INVALID_DATE', N'失效日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4682, 5, N'ERR_INVALID_DATE', N'失效日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4683, 6, N'ERR_INVALID_DATE', N'Tanggal tidak valid')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4684, 7, N'ERR_INVALID_DATE', N'Ngày không hợp lệ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4686, 2, N'ERR_INVALID_EMAIL', N'유효한 이메일 주소를 입력하십시오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4687, 3, N'ERR_INVALID_EMAIL', N'โปรดใส่ที่อยู่อีเมลที่ถูกต้อง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4688, 4, N'ERR_INVALID_EMAIL', N'请输入有效的电子邮件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4689, 5, N'ERR_INVALID_EMAIL', N'請輸入有效的電子郵件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4690, 6, N'ERR_INVALID_EMAIL', N'Masukkan alamat email yang valid')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4691, 7, N'ERR_INVALID_EMAIL', N'Vui lòng nhập một địa chỉ email hợp lệ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4693, 2, N'EXIT', N'나가기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4694, 3, N'EXIT', N'ออก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4695, 4, N'EXIT', N'退出')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4696, 5, N'EXIT', N'退出')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4697, 6, N'EXIT', N'Keluar')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4698, 7, N'EXIT', N'Thoát')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4700, 2, N'exit_message', N'정말로 가입 절차를 종료하시겠습니까?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4701, 3, N'exit_message', N'ท่านแน่ใจหรือไม่ว่าไม่ต้องการที่จะดำเนินการลงทะเบียนต่อ')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4702, 4, N'exit_message', N'您確定要終止註冊流程嗎？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4703, 5, N'exit_message', N'您确定要终止注册流程吗？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4704, 6, N'exit_message', N'Apakah Anda yakin tidak ingin melanjutkan proses pendaftaran?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4705, 7, N'exit_message', N'Bạn có chắc rằng mình không muốn tiếp tục quá trình đăng ký không?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4707, 2, N'expire_date', N'만료일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4708, 3, N'expire_date', N'วันหมดอายุ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4709, 4, N'expire_date', N'到期日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4710, 5, N'expire_date', N'到期日期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4711, 6, N'expire_date', N'Tanggal Berakhir')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4712, 7, N'expire_date', N'Ngày hết hạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4714, 2, N'faq_file_label', N'FAQ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4715, 3, N'faq_file_label', N'คำถามที่พบบ่อย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4716, 4, N'faq_file_label', N'常見問題')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4717, 5, N'faq_file_label', N'常见问题')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4718, 6, N'faq_file_label', N'Tanya Jawab')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4719, 7, N'faq_file_label', N'Câu hỏi thường gặp')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4721, 2, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4722, 3, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4723, 4, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4724, 5, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4725, 6, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4726, 7, N'faq_file_name', N'FAQ.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4728, 2, N'first_name', N'이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4729, 3, N'first_name', N'ชื่อ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4730, 4, N'first_name', N'名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4731, 5, N'first_name', N'名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4732, 6, N'first_name', N'NAMA DEPAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4733, 7, N'first_name', N'TÊN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4735, 2, N'first_name_info', N'마스터카드 소유주의 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4736, 3, N'first_name_info', N'ชื่อของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4737, 4, N'first_name_info', N'萬事達卡持卡人的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4738, 5, N'first_name_info', N'万事达卡持卡人的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4739, 6, N'first_name_info', N'Nama depan pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4740, 7, N'first_name_info', N'Tên của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4742, 2, N'footer_content', N'서비스 조항은 사용 가능 여부 및 해당 법적 제한을 따릅니다. 보험 보장은 승인된 AIG 보험사의 회원사 또는 네트워크 파트너에서 인수됩니다. 본 보험에 해당하는 전체 조항은 마스터카드 아시아 태평양지부 파일에 있는 마스터 정책에 포함되어 있습니다 . 본 문서와 마스터 정책 또는 기타 보장에 대해 해당되는 마스터카드 계약 사이에 차이가 있다면, 마스터 정책 또는 기타 보장에 대해 해당되는 마스터 계약이 우위를 점합니다. 보험 회사는 카드소유주 보장 프로그램 활용과 관련한 모든 청구, 발언, 문의, 논쟁을 결정하고 응대하는 최종 결정권을 가지고 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4743, 3, N'footer_content', N'การให้บริการอยู่ภายใต้เงื่อนไขของความพร้อมในการให้บริการและข้อจำกัดทางกฎหมายที่มีผลใช้บังคับ ความคุ้มครองของประกันภัยนี้ได้ถูกรับประกันภัยโดยบริษัทสมาชิกที่ผ่านการอนุมัติของบริษัทประกันภัย AIG หรือหุ้นส่วนในเครือข่าย ข้อกำหนดฉบับเต็มที่เกี่ยวข้องกับแผนการประกันภัยเหล่านี้ได้แสดงไว้ในกรมธรรม์ประกันภัยหลักในแฟ้มข้อมูลของบริษัท Mastercard Asia/Pacific Pte. Ltd. หากมีข้อแตกต่างใด ๆ ระหว่างเอกสารฉบับนี้และกรมธรรม์ประกันภัยหลัก หรือสัญญาของ Mastercard ที่มีผลใช้บังคับสำหรับสิทธิประโยชน์อื่น ๆ แล้ว กรมธรรม์ประกันภัยหลักหรือสัญญาของ Mastercard ที่มีผลใช้บังคับสำหรับสิทธิประโยชน์อื่นจะมีอำนาจเหนือกว่า บริษัทประกันภัยมีอำนาจเด็ดขาดในการตัดสินและตอบสนองต่อการเรียกร้องค่าสินไหมทดแทน การแสดงความเห็น ข้อสงสัย ข้อโต้แย้งใด ๆ ที่เกี่ยวข้องกับการใช้โปรแกรมสิทธิประโยชน์ของผู้ถือบัตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4744, 4, N'footer_content', N'服務提供受可用性和適用法律限制約束。保險由 AIG 保險公司或網絡合作夥伴的認可成員公司承保。與保險計劃相關的完整條款由 Mastercard Asia/Pacific Pte. Ltd 的總保單歸檔。如果本文件與總保單或適用的萬事達卡其他福利合約之間存在任何差異，應以總保單或適用的萬事達卡其他福利合約為準。保險公司對任何與持卡人保險福利計劃使用有關的索賠、評論、查詢、爭議擁有最終決定權。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4745, 5, N'footer_content', N'服务提供受可用性和适用法律限制约束。保险由 AIG 保险公司或网络合作伙伴的认可成员公司承保。与保险计划相关的完整条款由 Mastercard Asia/Pacific Pte. Ltd 的总保单归档。如果本文件与总保单或适用的万事达卡其他福利合约之间存在任何差异，应以总保单或适用的万事达卡其他福利合约为准。保险公司对任何与持卡人保险福利计划使用有关的索赔、评论、查询、争议拥有最终决定权。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4746, 6, N'footer_content', N'Penyediaan layanan disesuaikan dengan ketersediaan, juga batasan hukum yang berlaku. Asuransi ditanggung oleh berbagai Perusahaan Anggota dari Perusahaan Asuransi AIG atau Mitra Jaringan yang sah. Ketentuan lengkap terkait naskah asuransi ini tercantum dalam Polis Induk yang telah disusun oleh Mastercard Asia/Pacific Pte. Ltd. Apabila terdapat ketidaksesuaian antara dokumen ini dengan Polis Utama atau dengan kontrak Mastercard yang berlaku untuk berbagai manfaat lain, maka Polis Utama atau kontrak Mastercard yang berlaku untuk manfaat-manfaat lain tersebut akan diutamakan. Perusahaan Asuransi AIG memegang wewenang final untuk membuat ketetapan dan tanggapan terhadap klaim, komentar, pertanyaan, maupun perselisihan terkait program manfaat pemegang kartu.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4747, 7, N'footer_content', N'Việc cung cấp các dịch vụ tùy thuộc vào tính khả dụng và các hạn chế pháp lý hiện hành. Phạm vi bảo hiểm được bảo lãnh bởi các Công ty Thành viên được chấp thuận của Công ty Bảo hiểm AIG hoặc Đối tác mạng lưới. Các điều khoản hoàn chỉnh liên quan đến những gói bảo hiểm này có trong (các) Hợp đồng Chính trên hồ sơ của Mastercard Asia/Pacific Pte. Ltd. Nếu có bất kỳ sự khác biệt nào giữa tài liệu này và (các) Hợp đồng Chính hoặc hợp đồng Mastercard hiện hành cho các lợi ích khác, (các) Hợp đồng Chính hoặc hợp đồng Mastercard hiện hành cho các lợi ích khác sẽ có hiệu lực chi phối. Công ty Bảo hiểm có thẩm quyền cuối cùng để xác định và trả lời các khiếu nại, nhận xét, thắc mắc, tranh chấp; liên quan đến việc sử dụng chương trình quyền lợi của chủ thẻ.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4749, 2, N'footer_title', N'2023 AIG. 무단 전재 및 복제 금지. 본 웹사이트에서 제공하는 모든 서비스는 해당하는 마스터 카드 소유자를 위해 AIG에서 제공하고 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4750, 3, N'footer_title', N'2023 AIG สงวนลิขสิทธิ์ การบริการทั้งหมดที่เสนอผ่านเว็บไซต์นี้ได้จัดหาโดย AIG สำหรับผู้ถือบัตรมาสเตอร์การ์ดที่มีคุณสมบัติเหมาะสมในการรับสิทธิ์เท่านั้น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4751, 4, N'footer_title', N'2023 AIG.版權所有。本網站的所有服務均由 AIG 為合資格的萬事達卡持卡人提供。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4752, 5, N'footer_title', N'2023 AIG. 版权所有。本网站的所有服务均由 AIG 为合资格的万事达卡持卡人提供。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4753, 6, N'footer_title', N'2023 AIG. Hak cipta dilindungi undang-undang. Semua layanan yang ditawarkan melalui situs web ini disediakan oleh AIG kepada para Pemegang Kartu Mastercard yang memenuhi syarat.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4754, 7, N'footer_title', N'2023 AIG. Đã đăng ký bản quyền. Tất cả các dịch vụ qua trang web này đều được AIG cung cấp cho các Chủ thẻ Mastercard đủ điều kiện.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4756, 2, N'footnote_32358', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4757, 3, N'footnote_32358', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4758, 4, N'footnote_32358', N'<b>請注意：子限制適用於受上述旅遊保險受保人的配偶、子女。 </b><br/> 配偶及子女的分項賠付限額相當於旅遊保險承保金額全額的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4759, 5, N'footnote_32358', N'<b>请注意：子限制适用于受上述旅游保险受保人的配偶、子女。 </b><br/> 配偶及子女的分项赔付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4760, 6, N'footnote_32358', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4761, 7, N'footnote_32358', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4763, 2, N'footnote_32360', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4764, 3, N'footnote_32360', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4765, 4, N'footnote_32360', N'<b>請注意：子限制適用於受上述旅遊保險受保人的配偶、子女。 </b><br/> 配偶及子女的分項賠付限額相當於旅遊保險承保金額全額的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4766, 5, N'footnote_32360', N'<b>请注意：子限制适用于受上述旅游保险受保人的配偶、子女。 </b><br/> 配偶及子女的分项赔付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4767, 6, N'footnote_32360', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4768, 7, N'footnote_32360', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4770, 2, N'footnote_32362', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4771, 3, N'footnote_32362', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4772, 4, N'footnote_32362', N'<b>請注意：子限制適用於受上述旅遊保險受保人的配偶、子女。 </b><br/> 配偶及子女的分項賠付限額相當於旅遊保險承保金額全額的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4773, 5, N'footnote_32362', N'<b>请注意：子限制适用于受上述旅游保险受保人的配偶、子女。 </b><br/> 配偶及子女的分项赔付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4774, 6, N'footnote_32362', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4775, 7, N'footnote_32362', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4777, 2, N'footnote_32364', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4778, 3, N'footnote_32364', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4779, 4, N'footnote_32364', N'<b>請注意：子限制適用於受上述旅遊保險受保人的配偶、子女。 </b><br/> 配偶及子女的分項賠付限額相當於旅遊保險承保金額全額的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4780, 5, N'footnote_32364', N'<b>请注意：子限制适用于受上述旅游保险受保人的配偶、子女。 </b><br/> 配偶及子女的分项赔付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4781, 6, N'footnote_32364', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4782, 7, N'footnote_32364', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4784, 2, N'footnote_32366', N'<b>점을 양지하시기 바랍니다 모든 상기 명시된 여행자 보험 보장 혜택은 배우자 및 자녀에도 하위 한도가 적용됩니다. </b><br/> 배우자및자녀에 대한 하위 한도는 위에 나열된 모든 혜택의 50%에 해당합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4785, 3, N'footnote_32366', N'<b>โปรดทราบ: เป็นไปตามเงื่อนไขการจำกัดความรับผิดสำหรับคู่สมรสและบุตรสำหรับสิทธิประโยชน์ความคุ้มครองประกันภัยการเดินทางทุกรายการที่ได้ระบุไว้ด้านบน </b><br/>การจำกัดความรับผิดสำหรับคู่สมรสและเด็กๆ เทียบเท่ากับ 50% ของผลประโยชน์ทั้งหมดของความคุ้มครองสำหรับการประกันภัยการเดินทาง.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4786, 4, N'footnote_32366', N'<b>請注意：子限制適用於受上述旅遊保險受保人的配偶、子女。 </b><br/> 配偶及子女的分項賠付限額相當於旅遊保險承保金額全額的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4787, 5, N'footnote_32366', N'<b>请注意：子限制适用于受上述旅游保险受保人的配偶、子女。 </b><br/> 配偶及子女的分项赔付限额相当于所有旅游保险金的50%。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4788, 6, N'footnote_32366', N'<b>Catatan: Sub-limit berlaku untuk Suami/Istri dan Anak pada semua manfaat Pertanggungan Asuransi Perjalanan yang tertera di atas. </b><br/> Sub-limit untuk Suami/Istri dan Anak setara dengan 50% dari semua manfaat Pertanggungan Asuransi Perjalanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4789, 7, N'footnote_32366', N'<b>Xin lưu ý: Các mức giới hạn phụ áp dụng cho Vợ/chồng và Con cái đối với tất cả các quyền lợi Bảo hiểm Du lịch được liệt kê ở trên. </b><br/> Giới hạn phụ dành cho Vợ/chồng và Con tương đương với 50% của tất cả các quyền lợi Bảo hiểm Du lịch.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4791, 2, N'generate_send', N'생성 및 보내기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4792, 3, N'generate_send', N'สร้างและส่ง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4793, 4, N'generate_send', N'編製和發送')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4794, 5, N'generate_send', N'生成并发送')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4795, 6, N'generate_send', N'BUAT DAN KIRIM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4796, 7, N'generate_send', N'TẠO VÀ GỬI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4798, 2, N'ipid_file_label', N'보장 내역 요약')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4799, 3, N'ipid_file_label', N'สรุปข้อมูลสิทธิประโยชน์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4800, 4, N'ipid_file_label', N'保險福利摘要')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4801, 6, N'ipid_file_label', N'Ringkasan Manfaat')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4802, 7, N'ipid_file_label', N'Tóm tắt quyền lợi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4804, 2, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4805, 3, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4806, 4, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4807, 6, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4808, 7, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4809, 2, N'ko', N'한국어')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4811, 2, N'last_name', N'성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4812, 3, N'last_name', N'นามสกุล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4813, 4, N'last_name', N'姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4814, 5, N'last_name', N'姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4815, 6, N'last_name', N'NAMA BELAKANG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4816, 7, N'last_name', N'HỌ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4818, 2, N'last_name_info', N'마스터카드 소유주의 성')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4819, 3, N'last_name_info', N'นามสกุลของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4820, 4, N'last_name_info', N'萬事達卡持卡人的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4821, 5, N'last_name_info', N'万事达卡持卡人的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4822, 6, N'last_name_info', N'Nama belakang pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4823, 7, N'last_name_info', N'Họ của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4825, 2, N'mail_10_digits', N'마스터 카드의 첫 10자리 번호:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4826, 3, N'mail_10_digits', N'หมายเลข 10 หลักแรกของมาสเตอร์การ์ดของท่าน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4827, 4, N'mail_10_digits', N'萬事達卡的前 10 位數字：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4828, 5, N'mail_10_digits', N'万事达的前 10 位数字：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4829, 6, N'mail_10_digits', N'10 digit pertama Mastercard:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4830, 7, N'mail_10_digits', N'10 chữ số đầu tiên trên thẻ Mastercard:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4832, 2, N'mail_attached', N'본 이메일 첨부파일로 약관 및 보험 상품 정보 서류를 받아보시게 됩니다. 안전한 곳에 보관해주십시오. 청구 시점에 본 서류가 필요할 수 있기에, 추후 사용을 위해 본 문서를 다운로드 및 저장하실 수도 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4833, 3, N'mail_attached', N'เอกสารที่แนบมาพร้อมกับอีเมลฉบับนี้เป็นสำเนาของข้อตกลงและเงื่อนไขและเอกสารข้อมูลผลิตภัณฑ์ประกันภัย โปรดเก็บรักษาเอกสารเหล่านี้ไว้ในสถานที่ที่ปลอดภัย ท่านอาจจะพิจารณาดาวน์โหลดและบันทึกเอกสารเหล่านี้เก็บไว้เพื่อใช้ในอนาคตเนื่องจากท่านอาจจำเป็นต้องใช้เอกสารเหล่านี้ในกรณีของการเรียกร้องค่าสินไหมทดแทน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4834, 4, N'mail_attached', N'本電子郵件附有條款和細則和保險產品資料文件的副本。請將這些文件存放在安全的地方。您可以考慮下載和保存這些文件以備不時之需，因為索賠時您可能需要這些文件。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4835, 5, N'mail_attached', N'本电子邮件附有条款和条件和保险产品资料文件的副本。请将这些文件存放在安全的地方。您可以考虑下载和保存这些文件以备不时之需，因为索赔时您可能需要这些文件。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4836, 6, N'mail_attached', N'Salinan syarat & ketentuan serta Dokumen Informasi Produk Asuransi terlampir pada email ini. Harap simpan dokumen-dokumen ini di tempat yang aman. Anda dapat mengunduh dan menyimpan berbagai dokumen ini untuk digunakan kembali apabila dibutuhkan saat mengajukan klaim.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4837, 7, N'mail_attached', N'Đính kèm với email này là một bản sao của các điều khoản & điều kiện, cùng Tài liệu Thông tin sản phẩm bảo hiểm. Hãy giữ các tài liệu này ở nơi an toàn. Bạn có thể cân nhắc việc tải xuống và lưu các tài liệu này để sử dụng về sau vì đây sẽ là những tài liệu bạn có thể cần đến trong trường hợp yêu cầu bảo hiểm.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4839, 2, N'mail_automatic', N'본 메시지는 자동으로 생성되었습니다. 본 메시지에 답장하지 마시기 바랍니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4840, 3, N'mail_automatic', N'ข้อความนี้ได้สร้างขึ้นโดยอัตโนมัติ – โปรดอย่าตอบกลับข้อความนี้')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4841, 4, N'mail_automatic', N'此訊息為自動生成訊息，請不要回覆')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4842, 5, N'mail_automatic', N'此讯息为自动生成讯息，请不要回覆')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4843, 6, N'mail_automatic', N'Ini adalah pesan otomatis – Anda tidak perlu membalas pesan ini')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4844, 7, N'mail_automatic', N'Đây là thư do hệ thống tạo tự động – Vui lòng không trả lời thư này')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4846, 2, N'mail_confirmation', N'여행자 보험 가입 및 개시 확인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4847, 3, N'mail_confirmation', N'การยืนยันการลงทะเบียนและเปิดใช้ประกันภัยการเดินทางของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4848, 4, N'mail_confirmation', N'確認註冊和激活您的旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4849, 5, N'mail_confirmation', N'确认注册和激活您的旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4850, 6, N'mail_confirmation', N'Konfirmasi pendaftaran dan pengaktifan Asuransi Perjalanan Anda')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4851, 7, N'mail_confirmation', N'Xác nhận đăng ký và kích hoạt Bảo hiểm Du lịch của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4853, 2, N'mail_confirmation_number', N'가입 확정 번호:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4854, 3, N'mail_confirmation_number', N'หมายเลขการยืนยันการลงทะเบียน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4855, 4, N'mail_confirmation_number', N'註冊確認號碼：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4856, 6, N'mail_confirmation_number', N'Nomor konfirmasi pendaftaran:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4857, 7, N'mail_confirmation_number', N'Mã xác nhận đăng ký:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4859, 2, N'mail_contact', N'AIG에 연락하기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4860, 3, N'mail_contact', N'การติดต่อกับ AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4861, 4, N'mail_contact', N'聯繫 AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4862, 5, N'mail_contact', N'联系 AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4863, 6, N'mail_contact', N'Hubungi AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4864, 7, N'mail_contact', N'Liên hệ AIG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4866, 2, N'mail_contact_2', N'보험 보장과 관련한 문의 사항이 있으시거나 청구를 제출해야 할 경우 AIG에 연락하실 수도 있습니다. 연락 정보 및 청구 진행는 본 이메일에 첨부된 약관을 확인해주십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4867, 3, N'mail_contact_2', N'ท่านสามารถติดต่อกับ AIG หากท่านมีคำถามใด ๆ เกี่ยวกับความคุ้มครองของประกันภัยหรือหากท่านจำเป็นต้องยื่นเอกสารเพื่อเรียกร้องค่าสินไหมทดแทน โปรดอ้างถึงข้อตกลงและเงื่อนไขที่ได้แนบมาพร้อมกับอีเมลฉบับนี้สำหรับข้อมูลการติดต่อและขั้นตอนการเรียกร้องค่าสินไหมทดแทน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4868, 4, N'mail_contact_2', N'如果您對承保範圍有任何疑問或需要提交索賠，可以聯繫 AIG。請參閱本電子郵件附件中的條款和細則，了解聯繫方式和索賠程序。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4869, 5, N'mail_contact_2', N'如果您对承保范围有任何疑问或需要提交索赔，可以联系 AIG。请参阅本电子邮件附件中的条款和条件，了解联系方式和索赔程序。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4870, 6, N'mail_contact_2', N'Silakan hubungi AIG jika Anda memiliki pertanyaan seputar pertanggungan asuransi atau untuk mengajukan klaim. Untuk detail narahubung dan prosedur klaim, baca syarat dan ketentuan yang terlampir pada email ini.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4871, 7, N'mail_contact_2', N'Bạn có thể liên hệ AIG nếu có bất kỳ câu hỏi nào về phạm vi bảo hiểm hoặc nếu cần yêu cầu bảo hiểm. Vui lòng tham khảo các điều khoản và điều kiện đính kèm theo email này để biết thông tin liên hệ và quá trình yêu cầu bảo hiểm.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4873, 2, N'mail_coverage_benefits', N'포함된 보장 내역:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4874, 3, N'mail_coverage_benefits', N'ความคุ้มครองที่ครอบคลุม:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4875, 4, N'mail_coverage_benefits', N'承保範圍：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4876, 5, N'mail_coverage_benefits', N'承保范围：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4877, 6, N'mail_coverage_benefits', N'Pertanggungan Mencakup:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4878, 7, N'mail_coverage_benefits', N'Phạm vi bảo hiểm bao gồm:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4880, 2, N'mail_dear', N'귀하')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4881, 3, N'mail_dear', N'เรียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4882, 4, N'mail_dear', N'親愛的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4883, 5, N'mail_dear', N'亲爱的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4884, 6, N'mail_dear', N'Yang terhormat')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4885, 7, N'mail_dear', N'Kính gửi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4887, 2, N'mail_details', N'가입 상세 내역:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4888, 3, N'mail_details', N'รายละเอียดการลงทะเบียน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4889, 4, N'mail_details', N'註冊詳情：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4890, 5, N'mail_details', N'注册详情：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4891, 6, N'mail_details', N'DETAIL PENDAFTARAN:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4892, 7, N'mail_details', N'THÔNG TIN ĐĂNG KÝ:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4894, 2, N'mail_due_condition', N'아래 링크를 클릭해 마스터카드에서 제공하는 무료 여행자 보험을 12개월 동안 추가로 이용하실 수 있는지 확인해주십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4895, 3, N'mail_due_condition', N'โปรดคลิกที่ลิ้งก์ด้านล่างเพื่อตรวจสอบว่าท่านยังคงมีคุณสมบัติเหมาะสมที่จะต่ออายุประกันภัยการเดินทางเพิ่มไปอีก 12 เดือนโดยไม่คิดค่าใช้จ่ายของท่าน ซึ่งจัดหาโดย Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4896, 4, N'mail_due_condition', N'單擊下面鏈接以檢查您是否仍有資格續保萬事達卡提供的免費旅遊保險，為期 12 個月。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4897, 5, N'mail_due_condition', N'单击下面链接以检查您是否仍有资格续保万事达卡提供的免费旅游保险，为期 12 个月。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4898, 6, N'mail_due_condition', N'Klik tautan di bawah ini untuk mengetahui apakah Anda masih memenuhi syarat untuk memperpanjang Asuransi Perjalanan gratis Anda, disiapkan oleh Mastercard, untuk 12 bulan berikutnya.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4899, 7, N'mail_due_condition', N'Nhấp vào liên kết sau để xem bạn còn đủ điều kiện gia hạn Bảo hiểm Du lịch miễn phí do Mastercard cung cấp thêm 12 tháng hay không.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4901, 2, N'mail_due_expires', N'해외 여행 의료 보장 내역을 포함한 귀하의 무료 여행자 보험이 다음 일자 내에 만료됩니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4902, 3, N'mail_due_expires', N'ประกันภัยการเดินทางโดยไม่คิดค่าใช้จ่ายของท่าน ซึ่งครอบคลุมผลประโยชน์ในการรักษาพยาบาลระหว่างการเดินทางในต่างประเทศจะหมดอายุใน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4903, 4, N'mail_due_expires', N'您的免費旅遊保險（包括海外旅遊醫療保險福利）即將在以下日期到期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4904, 5, N'mail_due_expires', N'您的免费旅游保险（包括海外旅游医疗保险福利）即将在以下日期到期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4905, 6, N'mail_due_expires', N'Asuransi Perjalanan gratis Anda, termasuk Manfaat Medis Perjalanan Luar Negeri, akan berakhir dalam')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4906, 7, N'mail_due_expires', N'Bảo hiểm Du lịch miễn phí của bạn bao gồm các quyền lợi Y tế du lịch ở nước ngoài sẽ hết hạn trong')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4908, 2, N'mail_due_expires_2', N'일 - 정확한 만료일이 본 이메일 하단에 표기되어 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4909, 3, N'mail_due_expires_2', N'วัน – วันหมดอายุที่ถูกต้องแม่นยำได้ระบุไว้ที่ส่วนท้ายของอีเมลฉบับนี้')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4910, 4, N'mail_due_expires_2', N'天 —— 確切的到期日期顯示在這封電子郵件的最底部。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4911, 5, N'mail_due_expires_2', N'天 —— 确切的到期日期显示在这封电子邮件的最底部。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4912, 6, N'mail_due_expires_2', N'hari – tepatnya pada tanggal yang tertera di bagian bawah email ini.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4913, 7, N'mail_due_expires_2', N'ngày – ngày hết hạn chính xác được nêu rõ ở cuối email này.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4915, 2, N'mail_due_extend', N'갱신 옵션 확인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4916, 3, N'mail_due_extend', N'ตรวจสอบทางเลือกในการต่ออายุ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4917, 4, N'mail_due_extend', N'查看續保選項')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4918, 5, N'mail_due_extend', N'查看续保选项')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4919, 6, N'mail_due_extend', N'Periksa opsi perpanjangan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4920, 7, N'mail_due_extend', N'Xem các tùy chọn gia hạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4922, 2, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4923, 3, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4924, 4, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4925, 5, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4926, 6, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4927, 7, N'mail_due_extend_link', N'https://www.mastercard.si/sl-si/personal/find-a-card/IPAregistration.html')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4929, 2, N'mail_due_information', N'마스터카드에서 제공하는 무료 여행자보험은 가입 후 12개월 동안 유효합니다. 다시 한 번 12개월 갱신을 원하신다면, 간단하고 안전한 3단계 온라인 재가입 절차를 통해 무료 보험에 재가입하실 수 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4930, 3, N'mail_due_information', N'ประกันภัยการเดินทางโดยไม่คิดค่าใช้จ่ายของท่าน ซึ่งได้จัดหาโดย Mastercard มีผลใช้บังคับเป็นเวลา 12 เดือนนับจากวันลงทะเบียน ในการขอต่ออายุความคุ้มครองของท่านเพิ่มไปอีก 12 เดือน ท่านจะต้องลงทะเบียนใหม่อีกครั้งเพื่อขอใช้ประกันภัยโดยไม่คิดค่าใช้จ่ายผ่านขั้นตอนการลงทะเบียนใหม่ทางออนไลน์ที่ง่ายและปลอดภัยเพียง 3 ขั้นตอนเท่านั้น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4931, 4, N'mail_due_information', N'由萬事達卡提供的免費旅行保險在註冊後 12 個月內有效。為了將您的保險再續保 12 個月，您需要通過簡單且安全的 3 步在線重新註冊程序重新註冊免費保險。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4932, 5, N'mail_due_information', N'由万事达卡提供的免费旅行保险在注册后 12 个月内有效。为了将您的保险再续保 12 个月，您需要通过简单且安全的 3 步在线重新注册程序重新注册免费保险。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4933, 6, N'mail_due_information', N'Asuransi Perjalanan gratis Anda, disiapkan oleh Mastercard, berlaku 12 bulan sejak pendaftaran. Guna memperpanjang pertanggungan Anda untuk 12 bulan berikutnya, dapatkan asuransi gratis melalui prosedur pendaftaran ulang secara daring, hanya dalam 3 langkah mudah dan aman.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4934, 7, N'mail_due_information', N'Bảo hiểm Du lịch miễn phí của bạn do Mastercard cung cấp có hiệu lực trong 12 tháng kể từ khi đăng ký. Để gia hạn bảo hiểm của bạn thêm 12 tháng nữa, bạn sẽ cần đăng ký lại bảo hiểm miễn phí thông qua quy trình đăng ký lại trực tuyến gồm 3 bước bảo mật và đơn giản.')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4936, 2, N'mail_due_options', N'갱신 옵션')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4937, 3, N'mail_due_options', N'ทางเลือกในการต่ออายุ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4938, 4, N'mail_due_options', N'續保選項')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4939, 5, N'mail_due_options', N'续保选项')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4940, 6, N'mail_due_options', N'OPSI PERPANJANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4941, 7, N'mail_due_options', N'CÁC TÙY CHỌN GIA HẠN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4943, 2, N'mail_due_regards', N'귀하의 안녕을 기원하며 이만 줄이겠습니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4944, 3, N'mail_due_regards', N'ขอแสดงความนับถือ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4945, 4, N'mail_due_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4946, 5, N'mail_due_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4947, 6, N'mail_due_regards', N'Salam takzim')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4948, 7, N'mail_due_regards', N'Trân trọng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4950, 2, N'mail_due_title', N'보험 만료 안내 - 갱신을 위해 귀하께서 해당하는지 다시 한 번 확인해주시기 바랍니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4951, 3, N'mail_due_title', N'ข้อความเตือนการหมดอายุของประกันภัย – โปรดตรวจสอบคุณสมบัติสำหรับการต่ออายุ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4952, 4, N'mail_due_title', N'保險到期提醒 —— 請檢查續保資格')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4953, 5, N'mail_due_title', N'保险到期提醒 —— 请检查续保资格')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4954, 6, N'mail_due_title', N'Asuransi Anda hampir berakhir – Cek apakah Anda memenuhi syarat untuk memperpanjangnya')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4955, 7, N'mail_due_title', N'Thư nhắc hết hạn bảo hiểm – Vui lòng xem điều kiện gia hạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4957, 2, N'mail_effective', N'유효일:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4958, 3, N'mail_effective', N'วันที่มีผลใช้บังคับ:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4959, 4, N'mail_effective', N'有效日期:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4960, 5, N'mail_effective', N'有效日期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4961, 6, N'mail_effective', N'Tanggal Berlaku:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4962, 7, N'mail_effective', N'Ngày có hiệu lực:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4964, 2, N'mail_expire', N'만료일:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4965, 3, N'mail_expire', N'วันหมดอายุ:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4966, 4, N'mail_expire', N'到期日期:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4967, 5, N'mail_expire', N'到期日期：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4968, 6, N'mail_expire', N'Tanggal Berakhir:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4969, 7, N'mail_expire', N'Ngày hết hạn:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4971, 2, N'mail_footer', N'AIG 아시아 태평양지부 유한 회사 는 싱가포르에 설립되어 주소를 두고 있습니다. 등록된 법인 주소는 78 Shenton Way, #09-16, Singapore 079120입니다. 법인의 직계 및 최상위 모기업은 각각 싱가포르에 설립된 AIG APAC Holdings 유한 회사 및 미국에 설립된 주식회사 American International Group (“AIG”) 입니다. 본 웹사이트의 목적은 해당하는 마스터카드 소유주가 마스터카드 아시아/태평양지부 유한 회사에서 제공하고 AIG 아시아 태평양 보험 유한 회사에서 인수된 무료 보험 보장을 활성화시키는 것입니다 .')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4972, 3, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. ได้ก่อตั้งเป็นบริษัทตามกฎหมายและตั้งอยู่ในสิงคโปร์ ที่อยู่ของสำนักงานจดทะเบียนคือ 78 Shenton Way, #09-16, Singapore 079120 บริษัทแม่ของบริษัทคือ AIG APAC Holdings Pte. Ltd (ได้ก่อตั้งเป็นบริษัทตามกฎหมาย ในประเทศสิงคโปร์) และกลุ่มบริษัท American International Group, Inc. (“AIG”) (ได้ก่อตั้งเป็นบริษัทตามกฎหมายในประเทศสหรัฐ อเมริกา) ตามลำดับ วัตถุประสงค์ของเว็บไซต์นี้คือ เพื่อทำให้ผู้ถือบัตรมาสเตอร์การ์ดที่มีสิทธิ์สามารถเปิดใช้ความคุ้มครองจากประกันภัยโดยไม่คิดค่าใช้จ่ายซึ่งจัดหาโดยบริษัท Mastercard Asia/Pacific Pte. Ltd. และรับประกันภัยโดยบริษัท AIG Asia Pacific Insurance Pte. Ltd.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4973, 4, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. 在新加坡註冊成立。 其註冊辦事處的地址為 78 Shenton Way, #09-16, Singapore 079120。 該公司的直接和最終母公司分別是 AIG APAC Holdings Pte.Ltd. （在新加坡註冊成立）和 American International Group, Inc.（“AIG”）（在美國註冊成立） 。 本網站讓合資格的萬事達卡持卡人激活由Mastercard Asia/Pacific Pte. Ltd. 提供的、並由 AIG Asia Pacific Insurance Pte. Ltd. 承保的免費保險。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4974, 5, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. 在新加坡注册成立。其注册办事处的地址为 78 Shenton Way, #09-16, Singapore 079120。该公司的直接和最终母公司分别是 AIG APAC Holdings Pte.Ltd.（在新加坡注册成立）和 American International Group, Inc.（“AIG”）（在美国注册成立）。本网站让合资格的万事达卡持卡人激活由 Mastercard Asia/Pacific Pte. Ltd. 提供的、并由 AIG Asia Pacific Insurance Pte. Ltd. 承保的免费保险。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4975, 6, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. berbadan hukum dan berkedudukan di Singapura. Alamat kantornya yang terdaftar adalah 78 Shenton Way, #09-16, Singapore 079120. Induk langsung dan utama Perusahaan ini adalah AIG APAC Holdings Pte. Ltd. (berbadan hukum di Singapura) dan American International Group, Inc. (“AIG”) (berbadan hukum di Amerika Serikat). Situs web ini bertujuan agar para pemegang kartu Mastercard yang memenuhi syarat dapat mengaktifkan pertanggungan asuransi gratis mereka, disiapkan oleh Mastercard Asia/Pacific Pte. Ltd. dan ditanggung oleh AIG Asia Pacific Insurance Pte. Ltd.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4976, 7, N'mail_footer', N'AIG Asia Pacific Insurance Pte. Ltd. được thành lập và có trụ sở tại Singapore. Địa chỉ đăng ký văn phòng là 78 Shenton Way, #09-16, Singapore 079120. Công ty mẹ trực tiếp của Công ty là AIG APAC Holdings Pte. Ltd. (được thành lập tại Singapore), còn công ty mẹ tối cao là American International Group, Inc. (“AIG”) (được thành lập tại Hoa Kỳ). Mục đích của trang web này là cho phép các chủ thẻ Mastercard đủ điều kiện kích hoạt bảo hiểm miễn phí do Mastercard Asia/Pacific Pte. Ltd. cung cấp và được bảo lãnh bởi AIG Asia Pacific Insurance Pte. Ltd.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4978, 2, N'mail_insurance', N'보험 서류')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4979, 3, N'mail_insurance', N'เอกสารประกันภัย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4980, 4, N'mail_insurance', N'保險文件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4981, 5, N'mail_insurance', N'保险文件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4982, 6, N'mail_insurance', N'Dokumentasi asuransi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4983, 7, N'mail_insurance', N'Tài liệu bảo hiểm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4985, 2, N'mail_insured', N'보험명:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4986, 3, N'mail_insured', N'ชื่อผู้เอาประกันภัย:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4987, 4, N'mail_insured', N'受保人姓名：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4988, 5, N'mail_insured', N'受保人姓名：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4989, 6, N'mail_insured', N'Nama Tertanggung:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4990, 7, N'mail_insured', N'Tên người được bảo hiểm:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4992, 2, N'mail_package_name', N'패키지명')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4993, 3, N'mail_package_name', N'ชื่อแพ็กเกจ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4994, 4, N'mail_package_name', N'保險計劃名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4995, 5, N'mail_package_name', N'保险计划名称')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4996, 6, N'mail_package_name', N'Nama Paket')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4997, 7, N'mail_package_name', N'Tên gói')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (4999, 2, N'mail_regards', N'귀하의 안녕을 기원하며 이만 줄이겠습니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5000, 3, N'mail_regards', N'ขอแสดงความนับถือ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5001, 4, N'mail_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5002, 5, N'mail_regards', N'此致，')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5003, 6, N'mail_regards', N'Salam takzim')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5004, 7, N'mail_regards', N'Trân trọng')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5006, 2, N'mail_thanks', N'해외 여행자 의료 보험을 포함해 마스터카드에서 제공하는 여행자 보험을 개시해주셔서 감사합니다. <br>가입은 다음 10자리로 시작하는 마스터카드 결제 카드로 완료되었습니다:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5007, 3, N'mail_thanks', N'ขอขอบคุณอย่างยิ่งที่ได้เปิดใช้ประกันภัยการเดินทางของท่านที่จัดหาโดย Mastercard ซึ่งรวมถึงสิทธิประโยชน์ทางการแพทย์สำหรับการเดินทางในต่างประเทศ. <br>การลงทะเบียนได้ดำเนินการเสร็จสิ้นแล้วด้วยบัตรมาสเตอร์การ์ดที่ใช้ชำระเงินซึ่งมีหมายเลข 10 หลักต่อไปนี้:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5008, 4, N'mail_thanks', N'感謝您激活由萬事達卡提供的包含海外旅遊醫療保險的旅遊保險。使用以以下 10 位數字開頭的萬事達卡支付卡完成註冊:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5009, 5, N'mail_thanks', N'感谢您激活由万事达卡提供的包含海外旅游医疗保险的旅游保险。<br>使用以以下 10 位数字开头的万事达卡支付卡完成注册：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5010, 6, N'mail_thanks', N'Terima kasih telah mengaktifkan Asuransi Perjalanan yang disiapkan oleh Mastercard dan mencakup Manfaat Medis Perjalanan Luar Negeri. <br>Pendaftaran telah diselesaikan menggunakan kartu pembayaran Mastercard dengan 10 digit awal berikut:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5011, 7, N'mail_thanks', N'Cảm ơn bạn đã kích hoạt Bảo hiểm Du lịch của mình, đây là bảo hiểm do Mastercard cung cấp, bao gồm các Quyền lợi Y tế du lịch ở nước ngoài. <br>Việc đăng ký đã hoàn tất với thẻ thanh toán Mastercard bắt đầu bằng 10 chữ số sau:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5013, 2, N'next', N'다음')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5014, 3, N'next', N'ถัดไป')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5015, 4, N'next', N'下一步')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5016, 5, N'next', N'下一步')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5017, 6, N'next', N'Lanjut')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5018, 7, N'next', N'Tiếp theo')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5020, 2, N'no', N'아니오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5021, 3, N'no', N'ไม่ใช่')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5022, 4, N'no', N'不是')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5023, 5, N'no', N'不是')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5024, 6, N'no', N'Tidak')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5025, 7, N'no', N'Không')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5027, 2, N'package_name', N'패키지명')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5028, 3, N'package_name', N'ชื่อแพ็กเกจ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5029, 4, N'package_name', N'保險計劃名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5030, 5, N'package_name', N'保险计划名称')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5031, 6, N'package_name', N'Nama Paket')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5032, 7, N'package_name', N'Tên gói')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5034, 2, N'package_name_32358', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5035, 3, N'package_name_32358', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5036, 4, N'package_name_32358', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5037, 5, N'package_name_32358', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5038, 6, N'package_name_32358', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5039, 7, N'package_name_32358', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5041, 2, N'package_name_32360', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5042, 3, N'package_name_32360', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5043, 4, N'package_name_32360', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5044, 5, N'package_name_32360', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5045, 6, N'package_name_32360', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5046, 7, N'package_name_32360', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5048, 2, N'package_name_32362', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5049, 3, N'package_name_32362', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5050, 4, N'package_name_32362', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5051, 5, N'package_name_32362', N'旅游保险')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5052, 6, N'package_name_32362', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5053, 7, N'package_name_32362', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5055, 2, N'package_name_32364', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5056, 3, N'package_name_32364', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5057, 4, N'package_name_32364', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5058, 5, N'package_name_32364', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5059, 6, N'package_name_32364', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5060, 7, N'package_name_32364', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5062, 2, N'package_name_32366', N'여행자 보험')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5063, 3, N'package_name_32366', N'ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5064, 4, N'package_name_32366', N'旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5065, 5, N'package_name_32366', N'旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5066, 6, N'package_name_32366', N'Asuransi Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5067, 7, N'package_name_32366', N'Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5069, 2, N'package_view_details', N'클릭해서 더 보기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5070, 3, N'package_view_details', N'คลิกเพื่ออ่านรายละเอียดเพิ่มเติม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5071, 4, N'package_view_details', N'点击了解更多详情')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5072, 5, N'package_view_details', N'点击了解更多详情')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5073, 6, N'package_view_details', N'Klik untuk detail lainnya')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5074, 7, N'package_view_details', N'Nhấp để xem thêm chi tiết')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5076, 2, N'passport', N'여권')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5077, 3, N'passport', N'หนังสือเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5080, 6, N'passport', N'Paspor')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5081, 7, N'passport', N'Hộ chiếu')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5083, 2, N'placeholder_bin', N'결제 카드 열 자리')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5084, 3, N'placeholder_bin', N'หมายเลข 10 หลักของบัตรชำระเงินของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5085, 4, N'placeholder_bin', N'支付卡的 10 位數字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5086, 5, N'placeholder_bin', N'支付卡的 10 位数字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5087, 6, N'placeholder_bin', N'10 digit kartu pembayaran Anda')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5088, 7, N'placeholder_bin', N'10 chữ số trên thẻ thanh toán của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5090, 2, N'placeholder_firstName', N'이름을 입력하십시오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5091, 3, N'placeholder_firstName', N'ใส่ชื่อของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5092, 4, N'placeholder_firstName', N'輸入您的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5093, 5, N'placeholder_firstName', N'输入您的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5094, 6, N'placeholder_firstName', N'Masukkan nama depan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5095, 7, N'placeholder_firstName', N'Nhập tên của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5097, 2, N'placeholder_lastName', N'성을 입력하십시오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5098, 3, N'placeholder_lastName', N'ใส่นามสกุลของท่าน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5099, 4, N'placeholder_lastName', N'輸入您的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5100, 5, N'placeholder_lastName', N'输入您的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5101, 6, N'placeholder_lastName', N'Masukkan nama belakang')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5102, 7, N'placeholder_lastName', N'Nhập họ của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5104, 2, N'product_summary', N'제품 요약')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5105, 3, N'product_summary', N'สรุปข้อมูลผลิตภัณฑ์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5106, 4, N'product_summary', N'產品摘要')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5107, 5, N'product_summary', N'产品摘要')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5108, 6, N'product_summary', N'Ringkasan Produk')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5109, 7, N'product_summary', N'Tóm tắt sản phẩm')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5111, 2, N'required', N'필수')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5112, 3, N'required', N'จำเป็น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5113, 4, N'required', N'必填')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5114, 5, N'required', N'必填')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5115, 6, N'required', N'Wajib diisi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5116, 7, N'required', N'Bắt buộc')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5118, 2, N'select', N'선택')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5119, 3, N'select', N'เลือก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5120, 4, N'select', N'選擇')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5121, 5, N'select', N'选择')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5122, 6, N'select', N'Pilih')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5123, 7, N'select', N'Chọn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5125, 2, N'terms', N'아래 문서를 주의 깊게 읽어주십시오. 본 문서의 약관에 동의하신다면, 상자에 체크 표시를 해 약관에 동의해주시고 다음 단계로 계속하기 위해 다음을 클릭해주십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5126, 3, N'terms', N'โปรดอ่านเอกสารด้านล่างอย่างละเอียดถี่ถ้วน หากท่านยอมรับข้อตกลงและเงื่อนไขในเอกสารเหล่านี้ โปรดทำเครื่องหมายถูกในกล่องเพื่อยอมรับข้อตกลงและเงื่อนไข และจากนั้นให้คลิก “ทำต่อไป” เพื่อดำเนินการในขั้นตอนถัดไป')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5127, 4, N'terms', N'請仔細閱讀以下文件；如果您同意文件中的條款和細則，請勾選方框以接受條款和細則，然後單擊「下一步」繼續。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5128, 5, N'terms', N'请仔细阅读以下文件；如果您同意文件中的条款和条件，请勾选方框以接受条款和条件，然后单击“下一步”继续。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5129, 6, N'terms', N'Baca dokumen-dokumen di bawah ini dengan cermat; apabila Anda menerima semua syarat dan ketentuan di dalamnya, silakan centang kotak sebagai tanda persetujuan, lalu klik “Lanjut” untuk menuju langkah berikutnya.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5130, 7, N'terms', N'Vui lòng đọc kỹ các tài liệu dưới đây; nếu bạn đồng ý với các điều khoản và điều kiện trong các tài liệu này, vui lòng đánh dấu vào ô chấp nhận các điều khoản và điều kiện rồi nhấp vào “Tiếp theo” để chuyển sang bước tiếp theo.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5132, 2, N'terms_and_conditions_file_label', N'약관')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5133, 3, N'terms_and_conditions_file_label', N'ข้อตกลงและเงื่อนไข')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5134, 4, N'terms_and_conditions_file_label', N'條款和細則')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5135, 5, N'terms_and_conditions_file_label', N'条款和条件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5136, 6, N'terms_and_conditions_file_label', N'Syarat dan ketentuan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5137, 7, N'terms_and_conditions_file_label', N'Điều khoản và điều kiện')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5139, 2, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5140, 3, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5141, 4, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5142, 5, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5143, 6, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5144, 7, N'terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5146, 2, N'terms_check', N'약관을 읽고 이해하며 상기 내용에 동의합니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5147, 3, N'terms_check', N'ข้าพเจ้าได้อ่าน เข้าใจ และยอมรับข้อตกลงและเงื่อนไข')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5148, 4, N'terms_check', N'我已閱讀、理解並接受條款和細則')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5149, 5, N'terms_check', N'我已阅读、理解并接受条款和条件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5150, 6, N'terms_check', N'Saya telah membaca, memahami, dan menerima semua syarat dan ketentuan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5151, 7, N'terms_check', N'Tôi đã đọc, hiểu và chấp nhận các điều khoản và điều kiện')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5153, 2, N'terms_header', N'마스터카드 아시아 태평양지부 유한 회사 는 해당하는 마스터카드 소유주를 위한 무료 여행자 보험을 마련했습니다. 본 페이지에서 귀하께서는 보험 약관에 어떤 보장이 포함되는지 확인하실 수 있으며, 간단하고 안전한 3단계 가입 절차를 통해 보장을 가입 및 활성화하실 수 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5154, 3, N'terms_header', N'บริษัท Mastercard Asia/Pacific Pte. Ltd. ได้จัดให้มีสิทธิประโยชน์ด้านประกันภัยการเดินทางโดยไม่คิดค่าใช้จ่ายสำหรับผู้ถือบัตรมาสเตอร์การ์ดที่มีสิทธิ์ ในหน้านี้ ท่านสามารถพบข้อมูลว่ามีผลประโยชน์ใดบ้างที่ได้รวมอยู่ในกรมธรรม์ประกันภัย ลงทะเบียนและเปิดใช้ความคุ้มครองผ่านกระบวนการลงทะเบียนที่ง่ายและปลอดภัยเพียง 3 ขั้นตอนเท่านั้น.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5155, 4, N'terms_header', N'Mastercard Asia/Pacific Pte.為合資格萬事達卡持卡人提供免費旅遊保險福利。在本頁面，您可以了解保單涵蓋的保險福利，並輕鬆地通過安全的 3 步流程完成保險註冊和激活。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5156, 5, N'terms_header', N'Mastercard Asia/Pacific Pte.为合资格万事达卡持卡人提供免费旅游保险福利。在本页面，您可以了解保单涵盖的保险福利，并轻松地通过安全的 3 步流程完成保险注册和激活。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5157, 6, N'terms_header', N'Mastercard Asia/Pacific Pte. Ltd. mempersembahkan manfaat Asuransi Perjalanan gratis kepada para pemegang kartu Mastercard yang memenuhi syarat. Di halaman ini, Anda dapat mempelajari berbagai manfaat yang tercakup dalam polis asuransi, serta mendaftar dan mengaktifkan pertanggungan melalui 3 langkah mudah dan aman.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5158, 7, N'terms_header', N'Mastercard Asia/Pacific Pte. Ltd. đã cung cấp các quyền lợi Bảo hiểm Du lịch miễn phí cho các chủ thẻ Mastercard đủ điều kiện. Trên trang này, bạn có thể tìm hiểu những quyền lợi nằm trong hợp đồng bảo hiểm, đăng ký và kích hoạt bảo hiểm thông qua quy trình đăng ký 3 bước đơn giản và an toàn.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5160, 2, N'terms_title', N'여행자 보험 활성화하기 위해 가입하기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5161, 3, N'terms_title', N'ลงทะเบียนเพื่อเปิดใช้ประกันภัยการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5162, 4, N'terms_title', N'註冊以激活您的旅遊保險')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5163, 5, N'terms_title', N'注册以激活您的旅游保险')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5164, 6, N'terms_title', N'Silakan mendaftar untuk mengaktifkan Asuransi Perjalanan Anda')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5165, 7, N'terms_title', N'Đăng ký để kích hoạt Bảo hiểm Du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5166, 3, N'th', N'ไทย')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5168, 2, N'title', N'귀하의 개인 정보:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5169, 3, N'title', N'รายละเอียดส่วนตัวของท่าน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5170, 4, N'title', N'您的個人資料：')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5171, 5, N'title', N'您的个人信息：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5172, 6, N'title', N'Detail pribadi Anda:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5173, 7, N'title', N'Thông tin cá nhân của bạn:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5175, 2, N'verifique', N'가입 확인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5176, 3, N'verifique', N'ยืนยันการลงทะเบียน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5177, 4, N'verifique', N'確認註冊：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5178, 5, N'verifique', N'确认注册：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5179, 6, N'verifique', N'Konfirmasi pendaftaran:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5180, 7, N'verifique', N'Xác nhận đăng ký:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5182, 2, N'welcome', N'여행자 보험 여행은 여기에서 시작됩니다!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5183, 3, N'welcome', N'เริ่มต้นกระบวนการประกันภัยการเดินทางของท่านได้ที่นี่!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5184, 4, N'welcome', N'在此展開您的旅遊保險之旅！')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5185, 5, N'welcome', N'由此开始旅游保险的注册流程！')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5186, 6, N'welcome', N'Perjalanan Asuransi Perjalanan Anda dimulai di sini!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5187, 7, N'welcome', N'Hành trình Bảo hiểm Du lịch của bạn bắt đầu từ đây!')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5189, 2, N'yes', N'예')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5190, 3, N'yes', N'ใช่')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5191, 4, N'yes', N'是')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5192, 5, N'yes', N'是')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5193, 6, N'yes', N'Ya')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5194, 7, N'yes', N'Có')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5195, 4, N'zh-hk', N'繁體中文')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5197, 2, N'mail_sent', N'귀하께서는 마스터카드에서 제공하는 여행자 보험에 성공적으로 가입하셨습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5198, 3, N'mail_sent', N'ท่านได้ลงทะเบียนประกันภัยการเดินทางของท่านซึ่งได้จัดหาโดย Mastercard สำเร็จเรียบร้อยแล้ว.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5199, 4, N'mail_sent', N'您已成功註冊 萬事達卡提供的旅遊保險。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5200, 5, N'mail_sent', N'您已成功注册万事达卡提供的旅游保险。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5201, 6, N'mail_sent', N'Anda telah berhasil mendaftarkan untuk Asuransi Perjalanan Anda, disiapkan oleh Mastercard.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5202, 7, N'mail_sent', N'Bạn đã đăng ký thành công Bảo hiểm Du lịch do Mastercard cung cấp.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5204, 2, N'mail_sent_msg', N'여행자 보험 가입 및 상세 내역은 귀하께서 이메일로 확인하실 수 있습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5205, 3, N'mail_sent_msg', N'โดยจะมีการยืนยันการลงทะเบียนและรายละเอียดของประกันภัยการเดินทางกับท่านทางอีเมล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5206, 4, N'mail_sent_msg', N'我們將通過電子郵件向您確認旅遊保險的註冊和詳細資料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5207, 5, N'mail_sent_msg', N'我们将通过电子邮件向您确认旅游保险的注册和详细资料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5208, 6, N'mail_sent_msg', N'Konfirmasi pendaftaran dan detail Asuransi Perjalanan akan dikirimkan kepada Anda melalui email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5209, 7, N'mail_sent_msg', N'Bạn sẽ nhận được xác nhận đăng ký và thông tin Bảo hiểm Du lịch qua email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5211, 2, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5212, 3, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5213, 4, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5214, 5, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5215, 6, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5216, 7, N'error.invalid_bundle', N'error.invalid_bundle')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5218, 2, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5219, 3, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5220, 4, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5221, 5, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5222, 6, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5223, 7, N'error.invalid_bundle_description', N'error.invalid_bundle_description')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5225, 2, N'footer.button_end_session', N'종료')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5226, 3, N'footer.button_end_session', N'ออก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5227, 4, N'footer.button_end_session', N'離開')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5228, 5, N'footer.button_end_session', N'离开')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5229, 6, N'footer.button_end_session', N'Tutup')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5230, 7, N'footer.button_end_session', N'Rời đi')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5232, 2, N'footer.button_extend_session', N'유지')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5233, 3, N'footer.button_extend_session', N'อยู่ต่อ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5234, 4, N'footer.button_extend_session', N'停留')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5235, 5, N'footer.button_extend_session', N'停留')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5236, 6, N'footer.button_extend_session', N'Teruskan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5237, 7, N'footer.button_extend_session', N'Ở lại')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5239, 2, N'footer.expiresession', N'세션이 만료될 예정입니다. 세션을 연장하시겠습니까?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5240, 3, N'footer.expiresession', N'เซสชั่นของคุณกำลังจะหมดอายุ คุณต้องการขยายเวลาต่อหรือไม่')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5241, 4, N'footer.expiresession', N'頁面即將到期。 您想延長時間嗎？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5242, 5, N'footer.expiresession', N'页面即将到期。您想延长时间吗？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5243, 6, N'footer.expiresession', N'Sesi ini akan segera berakhir. Apakah Anda ingin meneruskan sesi ini?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5244, 7, N'footer.expiresession', N'Phiên sắp hết hạn. Bạn có muốn kéo dài phiên này không?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5246, 2, N'header.exit', N'나가기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5247, 3, N'header.exit', N'ออก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5248, 4, N'header.exit', N'退出')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5249, 5, N'header.exit', N'退出')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5250, 6, N'header.exit', N'Keluar')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5251, 7, N'header.exit', N'Thoát')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5252, 5, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5253, 6, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5254, 7, N'empty', N'&nbsp;')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5255, 5, N'close', N'关闭')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5256, 5, N'zh-cn', N'简体中文')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5257, 6, N'in', N'Bahasa')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5258, 7, N'vi', N'Tiếng Việt')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5260, 2, N'WARN_SENDING_EMAIL', N'프로세스 내부 오류로 이메일이 전송되지 않았습니다. 다시 시도해 주십시오.  불편함을 끼쳐 드려 죄송합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5261, 3, N'WARN_SENDING_EMAIL', N'ยังไม่ได้ส่งอีเมลนี้เนื่องมาจากความผิดพลาดภายในที่เกิดขึ้นในกระบวนการ โปรดลองอีกครั้ง ขออภัยสำหรับความไม่สะดวก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5262, 4, N'WARN_SENDING_EMAIL', N'由於處理過程中出現內部錯誤，電子郵件尚未被發送。請再嘗試。對於所造成的不便，我們謹此表示歉意。。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5263, 5, N'WARN_SENDING_EMAIL', N'过程中出现内部错误，邮件未发送。请重试。很抱歉给您带来不便。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5264, 6, N'WARN_SENDING_EMAIL', N'Surel ini tidak terkirim karena ada kesalahan proses internal. Silakan coba lagi. Mohon maaf atas ketidaknyamanan Anda.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5265, 7, N'WARN_SENDING_EMAIL', N'Email chưa được gửi do lỗi nội bộ trong quá trình này. Vui lòng thử lại. Rất tiếc vì sự bất tiện.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5267, 2, N'session_expired', N'세션이 만료되었습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5268, 3, N'session_expired', N'ช่วงระยะเวลาการใช้งานของคุณสิ้นสุดแล้ว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5269, 4, N'session_expired', N'頁面已過期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5270, 5, N'session_expired', N'页面已过期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5271, 6, N'session_expired', N'Sesi Anda telah berakhir.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5272, 7, N'session_expired', N'Phiên của bạn đã hết hạn.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5274, 2, N'ERR_UNAUTHORIZED_APPLICATION', N'허가되지 않은 응용 프로그램.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5275, 3, N'ERR_UNAUTHORIZED_APPLICATION', N'แอปพลิเคชั่นที่ไม่ได้รับอนุญาต')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5276, 4, N'ERR_UNAUTHORIZED_APPLICATION', N'應用程式未經授權。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5277, 5, N'ERR_UNAUTHORIZED_APPLICATION', N'应用程序未经授权。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5278, 6, N'ERR_UNAUTHORIZED_APPLICATION', N'Aplikasi tidak sah.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5279, 7, N'ERR_UNAUTHORIZED_APPLICATION', N'Ứng dụng chưa được cấp phép.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5280, 5, N'ipid_file_label', N'保险福利摘要')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5281, 5, N'ipid_file_name', N'Benefit Summary.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5282, 5, N'mail_confirmation_number', N'注册确认号码：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5283, 2, N'TRAVEL.seguro_viagem', N'여행서')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5284, 3, N'TRAVEL.seguro_viagem', N'หนังสือรับรองประกันการท่องเที่ยว')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5287, 6, N'TRAVEL.seguro_viagem', N'SURAT PERJALANAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5288, 7, N'TRAVEL.seguro_viagem', N'THƯ DU LỊCH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5289, 2, N'travel.letter', N'여행서')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5291, 2, N'TRAVEL02.EMAIL', N'이메일 주소')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5293, 2, N'TRAVEL02.NAME', N'이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5294, 2, N'TRAVEL02.SURNAME', N'성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5295, 2, N'birthdate', N'생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5296, 2, N'NATIONALITY', N'국적')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5298, 2, N'dados_familia', N'가족 정보')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5299, 2, N'child_first_name', N'부양 자녀 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5300, 2, N'child_birthdate', N'부양 자녀 생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5301, 2, N'child_last_name', N'부양 자녀 성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5302, 2, N'child_nationality', N'부양 자녀 국적')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5303, 2, N'child_passport', N'부양 자녀 여권')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5304, 2, N'spouse_first_name', N'배우자 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5305, 2, N'spouse_last_name', N'배우자 성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5306, 2, N'spouse_birthdate', N'배우자 생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5307, 2, N'spouse_nationality', N'배우자 국적')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5308, 2, N'spouse_passport', N'배우자 여권')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5309, 2, N'trip_details', N'여행 정보')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5310, 2, N'destination', N'목적지')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5311, 2, N'purchaseDate', N'구매 날짜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5312, 2, N'departureDate', N'출발 날짜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5313, 2, N'ReturnDate', N'귀국 날짜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5314, 2, N'travel.disclaimer.1', N'이 양식에 귀하의 개인 정보를 제공하고 아래의 다음 버튼을 클릭함으로써 귀하는 보험 증서 제공과 관련하여 그리고 아래의 개인 정보 보호 정책에 명시된 대로 American International Group, Inc.("AIG") 또는 그 자회사 및 계열사, 서비스 제공업체가 귀하의 개인 정보를 수집, 사용, 공유 및 국제 전송하는 것에 동의하고 이를 확인합니다. 귀하가 AIG에 다른 사람에 대한 개인 정보를 제공하는 경우, 귀하는 AIG가 해당 정보를 어떻게 사용할 것인지에 대해 당사자에게 알렸으며 귀하가 이를 제공할 권한이 있음을 확인합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5315, 2, N'travel.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5316, 2, N'travel.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5317, 2, N'TRAVEL.GENERATE_AND_PRINT', N'생성 및 프린트')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5318, 2, N'TRAVEL.GENERATE_AND_SEND', N'생성 및 보내기')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5319, 2, N'welcome_title', N'welcome_title')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5320, 2, N'welcome_terms', N'welcome_terms')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5321, 2, N'registered', N'이미 가입했습니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5322, 2, N'registration', N'가입하고 싶습니다')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5323, 2, N'f_exis_notRegistered', N'가입하지 않으셨습니다. 가입하시겠습니까? ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5324, 2, N'link_registration', N'가입으로 이동')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5325, 2, N'f_exis_registered', N'이미 가입하셨습니다. 여행서를 발행하시겠습니까?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5326, 2, N'link_registered', N'여행서로 이동')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5327, 2, N'travel.email.send', N'다음 이메일 주소로 이메일이 발송되었습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5328, 2, N'OK', N'Ok')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5329, 2, N'OkMail', N'제공된 이메일 주소로 이메일이 성공적으로 전송되었습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5331, 2, N'BREADCRUMBS_TRAVELDETAILS', N'요구 사항')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5332, 2, N'BREADCRUMBS_TRAVELPASSENGERS', N'카드 소지자 세부 정보')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5333, 2, N'BREADCRUMBS_TRAVELINFO', N'여행 정보')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5334, 2, N'BREADCRUMBS_TRAVELREVIEW', N'인증서 검토 및 생성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5335, 2, N'TRAVEL02.before_start', N'시작하기 전에 필요한 것')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5336, 2, N'TRAVEL02.informacoes_pessoais', N'- 개인 정보(여권에 기재된 성명, 여권 번호, 집 주소). <br>- 여행 정보(여행 구매 날짜, 여행 일자).</br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5337, 2, N'RGTVA01.DECLARO', N'적격한 마스터카드를 사용하여 티켓을 구매했음을 확인합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5338, 2, N'f_disclaimer2_travel', N'이 양식에 귀하의 개인 정보를 제공하고 아래의 다음 버튼을 클릭함으로써 귀하는 보험 증서 제공과 관련하여 그리고 아래의 개인 정보 보호 정책에 명시된 대로 American International Group, Inc.("AIG") 또는 그 자회사 및 계열사, 서비스 제공업체가 귀하의 개인 정보를 수집, 사용, 공유 및 국제 전송하는 것에 동의하고 이를 확인합니다. 귀하가 AIG에 다른 사람에 대한 개인 정보를 제공하는 경우, 귀하는 AIG가 해당 정보를 어떻게 사용할 것인지에 대해 당사자에게 알렸으며 귀하가 이를 제공할 권한이 있음을 확인합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5339, 2, N'TRAVEL02.travel_letter', N'여행서')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5340, 2, N'TRAVEL02.cardholder_details_title', N'카드 소지자 세부 정보 입력:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5341, 2, N'TRAVEL02.cardholder_details_subtitle', N'카드 소지자에 대해 아래에 요청된 정보를 입력하십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5342, 2, N'TRAVEL02.BIRTH_DATE', N'생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5343, 2, N'TRAVEL02.BIRTH_TOOLTIP', N'마스터카드 소지자의 생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5344, 2, N'ERR_CARDHOLDER_MORE_18', N'증서에 명시된 연령 제한으로 인해 여행서를 발급할 수 없습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5347, 2, N'COMBO_PLACEHOLDER', N'옵션을 선택하십시오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5348, 2, N'TRAVEL02.SPOUSE_CHECK', N'배우자와 함께 여행하십니까?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5349, 2, N'TRAVEL02.SPOUSE_NAME', N'배우자 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5350, 2, N'TRAVEL02.spouse_name_tooltip', N'마스터카드 소지자의 배우자 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5351, 2, N'TRAVEL02.SPOUSE_SURNAME', N'배우자 성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5352, 2, N'TRAVEL02.spouse_surname_tooltip', N'마스터카드 소지자의 배우자 성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5353, 2, N'TRAVEL02.SPOUSE_BIRTH_DATE', N'배우자 생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5354, 2, N'TRAVEL02.SPOUSE_BIRTH_TOOLTIP', N'마스터카드 소지자의 배우자 생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5355, 2, N'TRAVEL02.CHILD_CHECK', N'부양 자녀(REN)와 함께 여행하십니까?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5356, 2, N'TRAVEL02.CHILD_NAME', N'부양 자녀 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5357, 2, N'TRAVEL02.child_name_tooltip', N'마스터카드 카드 소지자의 부양 자녀 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5358, 2, N'TRAVEL02.CHILD_SURNAME', N'부양 자녀 성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5359, 2, N'TRAVEL02.child_surname_tooltip', N'마스터카드 카드 소지자의 부양 자녀 성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5360, 2, N'TRAVEL02.CHILD_BIRTH_DATE', N'부양 자녀 생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5361, 2, N'TRAVEL02.CHILD_BIRTH_TOOLTIP', N'마스터카드 소지자의 부양 자녀 생년월일')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5362, 2, N'ERR_CHILD_LESS_23', N'증서에 명시된 연령 제한으로 인해 여행서를 발급할 수 없습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5363, 2, N'TRAVEL02.ADD_CHILD', N'부양 자녀 추가')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5364, 2, N'TRAVEL02.REMOVE_CHILD', N'부양 자녀 삭제')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5365, 2, N'TRAVEL02.disclaimer.1', N'이 양식에 귀하의 개인 정보를 제공하고 아래의 다음 버튼을 클릭함으로써 귀하는 보험 증서 제공과 관련하여 그리고 아래의 개인 정보 보호 정책에 명시된 대로 American International Group, Inc.("AIG") 또는 그 자회사 및 계열사, 서비스 제공업체가 귀하의 개인 정보를 수집, 사용, 공유 및 국제 전송하는 것에 동의하고 이를 확인합니다. 귀하가 AIG에 다른 사람에 대한 개인 정보를 제공하는 경우, 귀하는 AIG가 해당 정보를 어떻게 사용할 것인지에 대해 당사자에게 알렸으며 귀하가 이를 제공할 권한이 있음을 확인합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5366, 2, N'TRAVEL02.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5367, 2, N'TRAVEL02.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5368, 2, N'travel03.letter', N'여행서')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5369, 2, N'travel03.trip_information', N'여행 정보:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5370, 2, N'TRAVEL03.DESTINY', N'목적지 *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5372, 2, N'TRAVEL03.TRIP', N'여행 유형을 선택하십시오')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5373, 2, N'ONE_TRIP', N'편도')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5374, 2, N'ROUND_TRIP', N'왕복')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5375, 2, N'TRAVEL03.PURCHASE_DATE', N'여행 구매 날짜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5376, 2, N'TRAVEL03.DEPARTURE_DATE', N'출발 날짜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5377, 2, N'ERR_TV_DEPARTURE_AFTER_REGISTRATION', N'출발 날짜는 가입 날짜 이후여야 합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5378, 2, N'ERR_TV_DEPARTURE_AFTER_PURCHASE', N'출발 날짜는 구매 날짜 이후여야 합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5379, 2, N'TRAVEL03.RETURN_DATE', N'귀국 날짜')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5380, 2, N'ERR_TV_RETURN_AFTER_DEPARTURE', N'귀국 날짜는 출발 날짜와 동일하거나 출발 날짜 이후여야 합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5381, 2, N'ERR_INVALID_COUNT_DAYS', N'귀국 날짜는 출발 날짜로부터 180일을 초과할 수 없습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5382, 2, N'travel03.disclaimer.1', N'이 양식에 귀하의 개인 정보를 제공하고 아래의 다음 버튼을 클릭함으로써 귀하는 보험 증서 제공과 관련하여 그리고 아래의 개인 정보 보호 정책에 명시된 대로 American International Group, Inc.("AIG") 또는 그 자회사 및 계열사, 서비스 제공업체가 귀하의 개인 정보를 수집, 사용, 공유 및 국제 전송하는 것에 동의하고 이를 확인합니다. 귀하가 AIG에 다른 사람에 대한 개인 정보를 제공하는 경우, 귀하는 AIG가 해당 정보를 어떻게 사용할 것인지에 대해 당사자에게 알렸으며 귀하가 이를 제공할 권한이 있음을 확인합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5383, 2, N'TRAVEL03.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5384, 2, N'TRAVEL03.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5385, 3, N'travel.letter', N'หนังสือรับรองประกันการท่องเที่ยว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5387, 3, N'TRAVEL02.EMAIL', N'ที่อยู่อีเมล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5389, 3, N'TRAVEL02.NAME', N'ชื่อ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5390, 3, N'TRAVEL02.SURNAME', N'นามสกุล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5391, 3, N'birthdate', N'วันเกิด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5392, 3, N'NATIONALITY', N'สัญชาติ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5394, 3, N'dados_familia', N'รายละเอียดของครอบครัว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5395, 3, N'child_first_name', N'ชื่อของบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5396, 3, N'child_birthdate', N'วันเกิดของบุตร')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5397, 3, N'child_last_name', N'นามสกุลของบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5398, 3, N'child_nationality', N'สัญชาติของบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5399, 3, N'child_passport', N'พาสปอร์ตของบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5400, 3, N'spouse_first_name', N'ชื่อของคู่สมรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5401, 3, N'spouse_last_name', N'นามสกุลของคู่สมรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5402, 3, N'spouse_birthdate', N'วันเกิดของคู่สมรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5403, 3, N'spouse_nationality', N'สัญชาติของคู่สมรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5404, 3, N'spouse_passport', N'พาสปอร์ตของคู่สมรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5405, 3, N'trip_details', N'รายละเอียดการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5406, 3, N'destination', N'จุดหมายปลายทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5407, 3, N'purchaseDate', N'วันที่ซื้อตั๋ว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5408, 3, N'departureDate', N'วันที่ออกเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5409, 3, N'ReturnDate', N'วันที่เดินทางกลับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5410, 3, N'travel.disclaimer.1', N'โดยการมอบข้อมูลส่วนตัวของคุณในแบบฟอร์มนี้และคลิกที่ปุ่ม ถัดไป ด้านล่าง คุณตกลงและยืนยันที่จะให้ความยินยอมแก่กลุ่มบริษัท American International Group, Inc. ("AIG") หรือบริษัทสาขา และบริษัทในเครือ ตลอดจนผู้ให้บริการของบริษัทเหล่านี้ในการเก็บรวบรวม ใช้ แบ่งปัน ตลอดจนถ่ายโอนข้อมูลส่วนตัวของคุณไปยังต่างประเทศในส่วนที่เกี่ยวข้องกับการออกหนังสือรับรองการประกัน และตามที่ได้กำหนดไว้เป็นอย่างอื่นในนโยบายความเป็นส่วนตัวด้านล่าง หากคุณได้มอบข้อมูลส่วนตัวของอีกบุคคลหนึ่งให้แก่ AIG คุณต้องยืนยันว่าคุณได้แจ้งให้บุคคลนั้นทราบว่า AIG จะใช้ข้อมูลนั้นอย่างไรและคุณได้รับอนุญาตให้มอบข้อมูลนั้น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5411, 3, N'travel.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5412, 3, N'travel.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5413, 3, N'TRAVEL.GENERATE_AND_PRINT', N'สร้างและพิมพ์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5414, 3, N'TRAVEL.GENERATE_AND_SEND', N'สร้างและส่ง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5415, 3, N'welcome_title', N'welcome_title')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5416, 3, N'welcome_terms', N'welcome_terms')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5417, 3, N'registered', N'ฉันลงทะเบียนเรียบร้อยแล้ว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5418, 3, N'registration', N'ฉันต้องการลงทะเบียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5419, 3, N'f_exis_notRegistered', N'คุณยังไม่ได้ลงทะเบียน คุณต้องการลงทะเบียนหรือไม่ ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5420, 3, N'link_registration', N'ไปที่หน้าลงทะเบียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5421, 3, N'f_exis_registered', N'คุณได้ลงทะเบียนเรียบร้อยแล้ว คุณต้องการออกหนังสือรับรองประกันการท่องเที่ยว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5422, 3, N'link_registered', N'ไปยังหน้าหนังสือรับรองประกันการท่องเที่ยว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5423, 3, N'travel.email.send', N'เราได้ส่งอีเมลไปยังที่อยู่อีเมลต่อไปนี้:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5424, 3, N'OK', N'ตกลง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5425, 3, N'OkMail', N'ได้ส่งอีเมลไปยังที่อยู่อีเมลที่ได้ให้ไว้เรียบร้อยแล้ว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5427, 3, N'BREADCRUMBS_TRAVELDETAILS', N'ข้อกำหนด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5428, 3, N'BREADCRUMBS_TRAVELPASSENGERS', N'รายละเอียดของผู้ถือบัตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5429, 3, N'BREADCRUMBS_TRAVELINFO', N'ข้อมูลการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5430, 3, N'BREADCRUMBS_TRAVELREVIEW', N'ตรวจสอบและสร้างหนังสือรับรองของคุณ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5431, 3, N'TRAVEL02.before_start', N'คุณจำเป็นต้องมีข้อมูลใดบ้างก่อนที่จะเริ่มดำเนินการ:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5432, 3, N'TRAVEL02.informacoes_pessoais', N'- ข้อมูลส่วนตัว (ชื่อและนามสกุลเต็มที่ปรากฏบนพาสปอร์ต หมายเลขพาสปอร์ต ที่อยู่บ้าน) <br>- ข้อมูลการเดินทาง (วันที่ซื้อตั๋วเดินทาง วันเดินทาง)</br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5433, 3, N'RGTVA01.DECLARO', N'ฉันยืนยันว่าฉันได้ใช้บัตรมาสเตอร์การ์ดที่มีสิทธิ์เพื่อซื้อตั๋วเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5434, 3, N'f_disclaimer2_travel', N'โดยการมอบข้อมูลส่วนตัวของคุณในแบบฟอร์มนี้และคลิกที่ปุ่ม ถัดไป ด้านล่าง คุณตกลงและยืนยันที่จะให้ความยินยอมแก่กลุ่มบริษัท American International Group, Inc. ("AIG") หรือบริษัทสาขา และบริษัทในเครือ ตลอดจนผู้ให้บริการของบริษัทเหล่านี้ในการเก็บรวบรวม ใช้ แบ่งปัน ตลอดจนถ่ายโอนข้อมูลส่วนตัวของคุณไปยังต่างประเทศในส่วนที่เกี่ยวข้องกับการออกหนังสือรับรองการประกัน และตามที่ได้กำหนดไว้เป็นอย่างอื่นในนโยบายความเป็นส่วนตัวด้านล่าง หากคุณได้มอบข้อมูลส่วนตัวของอีกบุคคลหนึ่งให้แก่ AIG คุณต้องยืนยันว่าคุณได้แจ้งให้บุคคลนั้นทราบว่า AIG จะใช้ข้อมูลนั้นอย่างไรและคุณได้รับอนุญาตให้มอบข้อมูลนั้น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5435, 3, N'TRAVEL02.travel_letter', N'หนังสือรับรองประกันการท่องเที่ยว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5436, 3, N'TRAVEL02.cardholder_details_title', N'ใส่รายละเอียดของผู้ถือบัตร:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5437, 3, N'TRAVEL02.cardholder_details_subtitle', N'โปรดใส่ข้อมูลที่ร้องขอด้านล่างสำหรับผู้ถือบัตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5438, 3, N'TRAVEL02.BIRTH_DATE', N'วันเกิด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5439, 3, N'TRAVEL02.BIRTH_TOOLTIP', N'วันเกิดของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5440, 3, N'ERR_CARDHOLDER_MORE_18', N'ไม่สามารถออกหนังสือรับรองประกันการเดินทางเนื่องมาจากข้อจำกัดด้านอายุดังที่ได้ระบุไว้ในกรมธรรม์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5443, 3, N'COMBO_PLACEHOLDER', N'เลือกตัวเลือกของคุณ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5444, 3, N'TRAVEL02.SPOUSE_CHECK', N'คุณเดินทางพร้อมกับคู่สมรสหรือไม่')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5445, 3, N'TRAVEL02.SPOUSE_NAME', N'ชื่อของคู่สมรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5446, 3, N'TRAVEL02.spouse_name_tooltip', N'ชื่อของคู่สมรสของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5447, 3, N'TRAVEL02.SPOUSE_SURNAME', N'นามสกุลของคู่สมรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5448, 3, N'TRAVEL02.spouse_surname_tooltip', N'นามสกุลของคู่สมรสของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5449, 3, N'TRAVEL02.SPOUSE_BIRTH_DATE', N'วันเกิดของคู่สมรส')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5450, 3, N'TRAVEL02.SPOUSE_BIRTH_TOOLTIP', N'วันเกิดของคู่สมรสของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5451, 3, N'TRAVEL02.CHILD_CHECK', N'คุณเดินทางพร้อมกับบุตรหรือไม่')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5452, 3, N'TRAVEL02.CHILD_NAME', N'ชื่อของบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5453, 3, N'TRAVEL02.child_name_tooltip', N'ชื่อของบุตรของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5454, 3, N'TRAVEL02.CHILD_SURNAME', N'นามสกุลของบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5455, 3, N'TRAVEL02.child_surname_tooltip', N'นามสกุลของบุตรของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5456, 3, N'TRAVEL02.CHILD_BIRTH_DATE', N'วันเกิดของบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5457, 3, N'TRAVEL02.CHILD_BIRTH_TOOLTIP', N'วันเกิดของบุตรของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5458, 3, N'ERR_CHILD_LESS_23', N'ไม่สามารถออกหนังสือรับรองประกันการเดินทางเนื่องมาจากข้อจำกัดด้านอายุดังที่ได้ระบุไว้ในกรมธรรม์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5459, 3, N'TRAVEL02.ADD_CHILD', N'เพิ่มจำนวนบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5460, 3, N'TRAVEL02.REMOVE_CHILD', N'ลดจำนวนบุตร')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5461, 3, N'TRAVEL02.disclaimer.1', N'โดยการมอบข้อมูลส่วนตัวของคุณในแบบฟอร์มนี้และคลิกที่ปุ่ม ถัดไป ด้านล่าง คุณตกลงและยืนยันที่จะให้ความยินยอมแก่กลุ่มบริษัท American International Group, Inc. ("AIG") หรือบริษัทสาขา และบริษัทในเครือ ตลอดจนผู้ให้บริการของบริษัทเหล่านี้ในการเก็บรวบรวม ใช้ แบ่งปัน ตลอดจนถ่ายโอนข้อมูลส่วนตัวของคุณไปยังต่างประเทศในส่วนที่เกี่ยวข้องกับการออกหนังสือรับรองการประกัน และตามที่ได้กำหนดไว้เป็นอย่างอื่นในนโยบายความเป็นส่วนตัวด้านล่าง หากคุณได้มอบข้อมูลส่วนตัวของอีกบุคคลหนึ่งให้แก่ AIG คุณต้องยืนยันว่าคุณได้แจ้งให้บุคคลนั้นทราบว่า AIG จะใช้ข้อมูลนั้นอย่างไรและคุณได้รับอนุญาตให้มอบข้อมูลนั้น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5462, 3, N'TRAVEL02.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5463, 3, N'TRAVEL02.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5464, 3, N'travel03.letter', N'หนังสือรับรองประกันการท่องเที่ยว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5465, 3, N'travel03.trip_information', N'ข้อมูลการเดินทาง:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5466, 3, N'TRAVEL03.DESTINY', N'จุดหมายปลายทาง *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5468, 3, N'TRAVEL03.TRIP', N'เลือกประเภทของการเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5469, 3, N'ONE_TRIP', N'การเดินทางแบบเที่ยวเดียว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5470, 3, N'ROUND_TRIP', N'การเดินทางแบบไป-กลับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5471, 3, N'TRAVEL03.PURCHASE_DATE', N'วันที่ซื้อตั๋วเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5472, 3, N'TRAVEL03.DEPARTURE_DATE', N'วันที่ออกเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5473, 3, N'ERR_TV_DEPARTURE_AFTER_REGISTRATION', N'วันที่ออกเดินทางจะต้องเป็นวันที่หลังวันลงทะเบียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5474, 3, N'ERR_TV_DEPARTURE_AFTER_PURCHASE', N'วันที่ออกเดินทางจะต้องเป็นวันที่หลังวันซื้อตั๋วเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5475, 3, N'TRAVEL03.RETURN_DATE', N'วันที่เดินทางกลับ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5476, 3, N'ERR_TV_RETURN_AFTER_DEPARTURE', N'วันที่เดินทางกลับจะต้องเป็นวันเดียวกันกับวันออกเดินทางหรือหลังวันออกเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5477, 3, N'ERR_INVALID_COUNT_DAYS', N'วันที่เดินทางกลับไม่สามารถมีระยะเวลานานกว่า 180 วันนับจากวันออกเดินทาง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5478, 3, N'travel03.disclaimer.1', N'โดยการมอบข้อมูลส่วนตัวของคุณในแบบฟอร์มนี้และคลิกที่ปุ่ม ถัดไป ด้านล่าง คุณตกลงและยืนยันที่จะให้ความยินยอมแก่กลุ่มบริษัท American International Group, Inc. ("AIG") หรือบริษัทสาขา และบริษัทในเครือ ตลอดจนผู้ให้บริการของบริษัทเหล่านี้ในการเก็บรวบรวม ใช้ แบ่งปัน ตลอดจนถ่ายโอนข้อมูลส่วนตัวของคุณไปยังต่างประเทศในส่วนที่เกี่ยวข้องกับการออกหนังสือรับรองการประกัน และตามที่ได้กำหนดไว้เป็นอย่างอื่นในนโยบายความเป็นส่วนตัวด้านล่าง หากคุณได้มอบข้อมูลส่วนตัวของอีกบุคคลหนึ่งให้แก่ AIG คุณต้องยืนยันว่าคุณได้แจ้งให้บุคคลนั้นทราบว่า AIG จะใช้ข้อมูลนั้นอย่างไรและคุณได้รับอนุญาตให้มอบข้อมูลนั้น')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5479, 3, N'TRAVEL03.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5480, 3, N'TRAVEL03.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5577, 6, N'travel.letter', N'SURAT PERJALANAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5579, 6, N'TRAVEL02.EMAIL', N'ALAMAT SUREL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5581, 6, N'TRAVEL02.NAME', N'NAMA DEPAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5582, 6, N'TRAVEL02.SURNAME', N'NAMA KELUARGA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5583, 6, N'birthdate', N'TANGGAL LAHIR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5584, 6, N'NATIONALITY', N'KEWARGANEGARAAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5586, 6, N'dados_familia', N'Detail Keluarga')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5587, 6, N'child_first_name', N'NAMA DEPAN ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5588, 6, N'child_birthdate', N'TANGGAL LAHIR ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5589, 6, N'child_last_name', N'NAMA KELUARGA ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5590, 6, N'child_nationality', N'KEWARGANEGARAAN ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5591, 6, N'child_passport', N'PASPOR ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5592, 6, N'spouse_first_name', N'NAMA DEPAN PASANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5593, 6, N'spouse_last_name', N'NAMA KELUARGA PASANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5594, 6, N'spouse_birthdate', N'TANGGAL LAHIR PASANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5595, 6, N'spouse_nationality', N'KEWARGANEGARAAN PASANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5596, 6, N'spouse_passport', N'PASPOR PASANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5597, 6, N'trip_details', N'DETAIL PERJALANAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5598, 6, N'destination', N'TUJUAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5599, 6, N'purchaseDate', N'TANGGAL PEMESANAN')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5600, 6, N'departureDate', N'TANGGAL KEBERANGKATAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5601, 6, N'ReturnDate', N'TANGGAL PULANG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5602, 6, N'travel.disclaimer.1', N'Dengan memberikan Informasi Pribadi Anda dalam formulir ini dan mengeklik tombol Berikutnya di bawah, Anda menyetujui dan mengonfirmasi persetujuan Anda atas pengumpulan, penggunaan, pembagian, dan transfer internasional Informasi Pribadi Anda oleh American International Group, Inc. ("AIG"), atau anak perusahaan-anak perusahaan dan afiliasi-afiliasinya, dan penyedia-penyedia layanan mereka, sehubungan dengan penyediaan sertifikat asuransi dan sebagaimana diatur dalam kebijakan-kebijakan privasi mereka di bawah ini. Jika Anda memberikan Informasi Pribadi tentang orang lain kepada AIG, maka Anda mengonfirmasi bahwa Anda telah memberi tahu orang tersebut tentang bagaimana AIG akan menggunakan Informasi Pribadi tersebut dan bahwa Anda berwenang untuk memberikannya.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5603, 6, N'travel.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5604, 6, N'travel.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5605, 6, N'TRAVEL.GENERATE_AND_PRINT', N'BUAT DAN CETAK')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5606, 6, N'TRAVEL.GENERATE_AND_SEND', N'BUAT DAN KIRIM')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5607, 6, N'welcome_title', N'judul_selamat datang')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5608, 6, N'welcome_terms', N'ketentuan-ketentuan_selamat datang')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5609, 6, N'registered', N'SAYA SUDAH TERDAFTAR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5610, 6, N'registration', N'SAYA INGIN MENDAFTAR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5611, 6, N'f_exis_notRegistered', N'Anda tidak terdaftar. Apakah Anda ingin mendaftar? ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5612, 6, N'link_registration', N'Buka Pendaftaran')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5613, 6, N'f_exis_registered', N'Anda sudah terdaftar. Apakah Anda ingin membuat Surat Perjalanan?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5614, 6, N'link_registered', N'Buka Surat Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5615, 6, N'travel.email.send', N'Surel ini akan dikirim ke alamat surel berikut:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5616, 6, N'OK', N'Oke')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5617, 6, N'OkMail', N'Surel ini berhasil dikirim ke alamat surel yang disediakan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5619, 6, N'BREADCRUMBS_TRAVELDETAILS', N'PERSYARATAN-PERSYARATAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5620, 6, N'BREADCRUMBS_TRAVELPASSENGERS', N'DETAIL PEMEGANG KARTU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5621, 6, N'BREADCRUMBS_TRAVELINFO', N'INFORMASI PERJALANAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5622, 6, N'BREADCRUMBS_TRAVELREVIEW', N'TINJAU DAN BUAT SERTIFIKAT ASURANSI ANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5623, 6, N'TRAVEL02.before_start', N'Apa yang akan Anda butuhkan sebelum mulai:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5624, 6, N'TRAVEL02.informacoes_pessoais', N'-Informasi pribadi (nama lengkap seperti yang tertulis di paspor, nomor paspor, alamat rumah). <br>-Informasi Perjalanan (tanggal pemesanan perjalanan, tanggal perjalanan).</br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5625, 6, N'RGTVA01.DECLARO', N'Saya menyatakan bahwa saya telah menggunakan kartu Mastercard saya yang memenuhi syarat untuk memesan tiket ini')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5626, 6, N'f_disclaimer2_travel', N'Dengan memberikan Informasi Pribadi Anda dalam formulir ini dan mengeklik tombol Berikutnya di bawah, Anda menyetujui dan mengonfirmasi persetujuan Anda atas pengumpulan, penggunaan, pembagian, dan transfer internasional Informasi Pribadi Anda oleh American International Group, Inc. ("AIG"), atau anak perusahaan-anak perusahaan dan afiliasi-afiliasinya, dan penyedia-penyedia layanan mereka, sehubungan dengan penyediaan sertifikat asuransi dan sebagaimana diatur dalam kebijakan-kebijakan privasi mereka di bawah ini. Jika Anda memberikan  Informasi Pribadi tentang orang lain kepada AIG, maka Anda mengonfirmasi bahwa Anda telah memberi tahu orang tersebut tentang bagaimana AIG akan menggunakan Informasi Pribadi tersebut dan bahwa Anda berwenang untuk memberikannya.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5627, 6, N'TRAVEL02.travel_letter', N'SURAT PERJALANAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5628, 6, N'TRAVEL02.cardholder_details_title', N'Masukkan Detail Pemegang Kartu:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5629, 6, N'TRAVEL02.cardholder_details_subtitle', N'SIlakan masukkan informasi yang diminta di bawah ini untuk pemegang kartu.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5630, 6, N'TRAVEL02.BIRTH_DATE', N'TANGGAL LAHIR')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5631, 6, N'TRAVEL02.BIRTH_TOOLTIP', N'Tanggal Lahir pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5632, 6, N'ERR_CARDHOLDER_MORE_18', N'Surat Perjalanan tidak dapat diterbitkan karena batas-batas usia yang dijelaskan dalam polis.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5635, 6, N'COMBO_PLACEHOLDER', N'Pilih opsi Anda')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5636, 6, N'TRAVEL02.SPOUSE_CHECK', N'APAKAH ANDA BEPERGIAN DENGAN PASANGAN?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5637, 6, N'TRAVEL02.SPOUSE_NAME', N'NAMA PASANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5638, 6, N'TRAVEL02.spouse_name_tooltip', N'Nama Depan Pasangan Pemegang Kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5639, 6, N'TRAVEL02.SPOUSE_SURNAME', N'NAMA KELUARGA PASANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5640, 6, N'TRAVEL02.spouse_surname_tooltip', N'Nama Keluarga Pasangan Pemegang Kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5641, 6, N'TRAVEL02.SPOUSE_BIRTH_DATE', N'TANGGAL LAHIR PASANGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5642, 6, N'TRAVEL02.SPOUSE_BIRTH_TOOLTIP', N'Tanggal Lahir pasangan pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5643, 6, N'TRAVEL02.CHILD_CHECK', N'APAKAH ANDA BEPERGIAN DENGAN TANGGUNGAN (ANAK/ANAK-ANAK)?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5644, 6, N'TRAVEL02.CHILD_NAME', N'NAMA ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5645, 6, N'TRAVEL02.child_name_tooltip', N'Nama anak tanggungan Pemegang Kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5646, 6, N'TRAVEL02.CHILD_SURNAME', N'NAMA KELUARGA ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5647, 6, N'TRAVEL02.child_surname_tooltip', N'Nama Keluarga anak tanggungan Pemegang Kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5648, 6, N'TRAVEL02.CHILD_BIRTH_DATE', N'TANGGAL LAHIR ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5649, 6, N'TRAVEL02.CHILD_BIRTH_TOOLTIP', N'Tanggal Lahir anak tanggungan pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5650, 6, N'ERR_CHILD_LESS_23', N'Surat Perjalanan tidak dapat diterbitkan karena batas-batas usia yang dijelaskan dalam polis.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5651, 6, N'TRAVEL02.ADD_CHILD', N'TAMBAHKAN ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5652, 6, N'TRAVEL02.REMOVE_CHILD', N'HAPUS ANAK TANGGUNGAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5653, 6, N'TRAVEL02.disclaimer.1', N'Dengan memberikan Informasi Pribadi Anda dalam formulir ini dan mengeklik tombol Berikutnya di bawah, Anda menyetujui dan mengonfirmasi persetujuan Anda atas pengumpulan, penggunaan, pembagian, dan transfer internasional Informasi Pribadi Anda oleh American International Group, Inc. ("AIG"), atau anak perusahaan-anak perusahaan dan afiliasi-afiliasinya, dan penyedia-penyedia layanan mereka, sehubungan dengan penyediaan sertifikat asuransi dan sebagaimana diatur dalam kebijakan-kebijakan privasi mereka di bawah ini. Jika Anda memberikan Informasi Pribadi tentang orang lain kepada AIG, maka Anda mengonfirmasi bahwa Anda telah memberi tahu orang tersebut tentang bagaimana AIG akan menggunakan Informasi Pribadi tersebut dan bahwa Anda berwenang untuk memberikannya.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5654, 6, N'TRAVEL02.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5655, 6, N'TRAVEL02.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5656, 6, N'travel03.letter', N'SURAT PERJALANAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5657, 6, N'travel03.trip_information', N'Informasi Perjalanan:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5658, 6, N'TRAVEL03.DESTINY', N'TUJUAN*')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5660, 6, N'TRAVEL03.TRIP', N'PILIH JENIS PERJALANAN ANDA')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5661, 6, N'ONE_TRIP', N'PERJALANAN SEKALI JALAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5662, 6, N'ROUND_TRIP', N'PERJALANAN PULANG PERGI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5663, 6, N'TRAVEL03.PURCHASE_DATE', N'TANGGAL PEMESANAN PERJALANAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5664, 6, N'TRAVEL03.DEPARTURE_DATE', N'TANGGAL KEBERANGKATAN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5665, 6, N'ERR_TV_DEPARTURE_AFTER_REGISTRATION', N'Tanggal Keberangkatan harus setelah Tanggal Pendaftaran.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5666, 6, N'ERR_TV_DEPARTURE_AFTER_PURCHASE', N'Tanggal Keberangkatan harus setelah Tanggal Pemesanan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5667, 6, N'TRAVEL03.RETURN_DATE', N'TANGGAL PULANG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5668, 6, N'ERR_TV_RETURN_AFTER_DEPARTURE', N'Tanggal kepulangan harus sama dengan Tanggal Keberangkatan atau lebih lama dari Tanggal Keberangkatan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5669, 6, N'ERR_INVALID_COUNT_DAYS', N'Tanggal Pulang tidak boleh lebih dari 180 hari dari Tanggal Keberangkatan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5670, 6, N'travel03.disclaimer.1', N'Dengan memberikan Informasi Pribadi Anda dalam formulir ini dan mengeklik tombol Berikutnya di bawah, Anda menyetujui dan mengonfirmasi persetujuan Anda atas pengumpulan, penggunaan, pembagian, dan transfer internasional Informasi Pribadi Anda oleh American International Group, Inc. ("AIG"), atau anak perusahaan-anak perusahaan dan afiliasi-afiliasinya, dan penyedia-penyedia layanan mereka, sehubungan dengan penyediaan sertifikat asuransi dan sebagaimana diatur dalam kebijakan-kebijakan privasi mereka di bawah ini. Jika Anda memberikan Informasi Pribadi tentang orang lain kepada AIG, maka Anda mengonfirmasi bahwa Anda telah memberi tahu orang tersebut tentang bagaimana AIG akan menggunakan Informasi Pribadi tersebut dan bahwa Anda berwenang untuk memberikannya.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5671, 6, N'TRAVEL03.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5672, 6, N'TRAVEL03.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5673, 7, N'travel.letter', N'THƯ DU LỊCH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5675, 7, N'TRAVEL02.EMAIL', N'ĐỊA CHỈ EMAIL')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5677, 7, N'TRAVEL02.NAME', N'TÊN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5678, 7, N'TRAVEL02.SURNAME', N'HỌ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5679, 7, N'birthdate', N'NGÀY SINH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5680, 7, N'NATIONALITY', N'QUỐC TỊCH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5682, 7, N'dados_familia', N'Thông tin gia đình')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5683, 7, N'child_first_name', N'TÊN CỦA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5684, 7, N'child_birthdate', N'NGÀY SINH CỦA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5685, 7, N'child_last_name', N'HỌ CỦA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5686, 7, N'child_nationality', N'QUỐC TỊCH CỦA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5687, 7, N'child_passport', N'HỘ CHIẾU CỦA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5688, 7, N'spouse_first_name', N'TÊN CỦA VỢ/CHỒNG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5689, 7, N'spouse_last_name', N'HỌ CỦA VỢ/CHỒNG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5690, 7, N'spouse_birthdate', N'NGÀY SINH CỦA VỢ/CHỒNG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5691, 7, N'spouse_nationality', N'QUỐC TỊCH CỦA VỢ/CHỒNG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5692, 7, N'spouse_passport', N'HỘ CHIẾU CỦA VỢ/CHỒNG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5693, 7, N'trip_details', N'THÔNG TIN CHUYẾN ĐI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5694, 7, N'destination', N'ĐIỂM ĐẾN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5695, 7, N'purchaseDate', N'NGÀY MUA VÉ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5696, 7, N'departureDate', N'NGÀY KHỞI HÀNH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5697, 7, N'ReturnDate', N'NGÀY TRỞ VỀ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5698, 7, N'travel.disclaimer.1', N'Bằng việc cung cấp Thông tin cá nhân của bạn trong biểu mẫu này và nhấp vào nút Tiếp theo bên dưới, bạn đồng ý và xác nhận sự đồng thuận cho American International Group, Inc. ("AIG"), hoặc các công ty con và chi nhánh, và các nhà cung cấp dịch vụ của họ, thu thập, sử dụng, chia sẻ và chuyển giao quốc tế Thông tin cá nhân của bạn liên quan đến việc cấp chứng nhận bảo hiểm và như được quy định khác trong chính sách quyền riêng tư của họ bên dưới. Nếu bạn cung cấp cho AIG Thông tin Cá nhân về một người khác, bạn xác nhận rằng bạn đã thông báo cho người đó về cách AIG sẽ sử dụng thông tin đó và rằng bạn được phép cung cấp thông tin đó.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5699, 7, N'travel.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5700, 7, N'travel.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5701, 7, N'TRAVEL.GENERATE_AND_PRINT', N'TẠO VÀ IN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5702, 7, N'TRAVEL.GENERATE_AND_SEND', N'TẠO VÀ GỬI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5703, 7, N'welcome_title', N'welcome_title')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5704, 7, N'welcome_terms', N'welcome_terms')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5705, 7, N'registered', N'TÔI ĐÃ ĐĂNG KÝ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5706, 7, N'registration', N'TÔI MUỐN ĐĂNG KÝ')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5707, 7, N'f_exis_notRegistered', N'Bạn chưa đăng ký. Bạn có muốn đăng ký không? ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5708, 7, N'link_registration', N'Đi tới Đăng ký')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5709, 7, N'f_exis_registered', N'Bạn đã đăng ký. Bạn có muốn phát hành Thư du lịch không?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5710, 7, N'link_registered', N'Đi tới Thư du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5711, 7, N'travel.email.send', N'Email đã được gửi đến địa chỉ email sau:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5712, 7, N'OK', N'Ok')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5713, 7, N'OkMail', N'Email đã được gửi thành công đến địa chỉ email đã cung cấp.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5715, 7, N'BREADCRUMBS_TRAVELDETAILS', N'YÊU CẦU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5716, 7, N'BREADCRUMBS_TRAVELPASSENGERS', N'THÔNG TIN CHỦ THẺ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5717, 7, N'BREADCRUMBS_TRAVELINFO', N'THÔNG TIN CHUYẾN ĐI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5718, 7, N'BREADCRUMBS_TRAVELREVIEW', N'XEM XÉT VÀ TẠO CHỨNG NHẬN CỦA BẠN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5719, 7, N'TRAVEL02.before_start', N'Những điều bạn sẽ cần trước khi bắt đầu:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5720, 7, N'TRAVEL02.informacoes_pessoais', N'- Thông tin cá nhân (tên đầy đủ như trên hộ chiếu, số hộ chiếu, địa chỉ nhà). <br>- Thông tin chuyến đi (ngày mua vé, ngày đi).</br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5721, 7, N'RGTVA01.DECLARO', N'Tôi xác nhận tôi đã dùng thẻ Mastercard hợp lệ của mình để mua vé')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5722, 7, N'f_disclaimer2_travel', N'Bằng việc cung cấp Thông tin cá nhân của bạn trong biểu mẫu này và nhấp vào nút Tiếp theo bên dưới, bạn đồng ý và xác nhận sự đồng thuận cho American International Group, Inc. ("AIG"), hoặc các công ty con và chi nhánh, và các nhà cung cấp dịch vụ của họ, thu thập, sử dụng, chia sẻ và chuyển giao quốc tế Thông tin cá nhân của bạn liên quan đến việc cấp chứng nhận bảo hiểm và như được quy định khác trong chính sách quyền riêng tư của họ bên dưới. Nếu bạn cung cấp cho AIG Thông tin Cá nhân về một người khác, bạn xác nhận rằng bạn đã thông báo cho người đó về cách AIG sẽ sử dụng thông tin đó và rằng bạn được phép cung cấp thông tin đó.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5723, 7, N'TRAVEL02.travel_letter', N'THƯ DU LỊCH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5724, 7, N'TRAVEL02.cardholder_details_title', N'Nhập Thông tin chủ thẻ:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5725, 7, N'TRAVEL02.cardholder_details_subtitle', N'Vui lòng nhập thông tin được yêu cầu về chủ thẻ bên dưới.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5726, 7, N'TRAVEL02.BIRTH_DATE', N'NGÀY SINH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5727, 7, N'TRAVEL02.BIRTH_TOOLTIP', N'Ngày sinh của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5728, 7, N'ERR_CARDHOLDER_MORE_18', N'Không thể phát hành Thư du lịch do giới hạn tuổi được mô tả trong chính sách.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5731, 7, N'COMBO_PLACEHOLDER', N'Chọn tùy chọn của bạn')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5732, 7, N'TRAVEL02.SPOUSE_CHECK', N'BẠN CÓ ĐANG ĐI VỚI VỢ/CHỒNG KHÔNG?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5733, 7, N'TRAVEL02.SPOUSE_NAME', N'TÊN CỦA VỢ/CHỒNG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5734, 7, N'TRAVEL02.spouse_name_tooltip', N'Tên của vợ/chồng của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5735, 7, N'TRAVEL02.SPOUSE_SURNAME', N'HỌ CỦA VỢ/CHỒNG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5736, 7, N'TRAVEL02.spouse_surname_tooltip', N'Họ của vợ/chồng của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5737, 7, N'TRAVEL02.SPOUSE_BIRTH_DATE', N'NGÀY SINH CỦA VỢ/CHỒNG')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5738, 7, N'TRAVEL02.SPOUSE_BIRTH_TOOLTIP', N'Ngày sinh của vợ/chồng của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5739, 7, N'TRAVEL02.CHILD_CHECK', N'BẠN CÓ ĐANG ĐI VỚI (CÁC) TRẺ PHỤ THUỘC KHÔNG?')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5740, 7, N'TRAVEL02.CHILD_NAME', N'TÊN CỦA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5741, 7, N'TRAVEL02.child_name_tooltip', N'Tên của trẻ phụ thuộc của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5742, 7, N'TRAVEL02.CHILD_SURNAME', N'HỌ CỦA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5743, 7, N'TRAVEL02.child_surname_tooltip', N'Họ của trẻ phụ thuộc của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5744, 7, N'TRAVEL02.CHILD_BIRTH_DATE', N'NGÀY SINH CỦA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5745, 7, N'TRAVEL02.CHILD_BIRTH_TOOLTIP', N'Ngày sinh của trẻ phụ thuộc của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5746, 7, N'ERR_CHILD_LESS_23', N'Không thể phát hành Thư du lịch do giới hạn tuổi được mô tả trong chính sách.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5747, 7, N'TRAVEL02.ADD_CHILD', N'THÊM TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5748, 7, N'TRAVEL02.REMOVE_CHILD', N'XÓA TRẺ PHỤ THUỘC')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5749, 7, N'TRAVEL02.disclaimer.1', N'Bằng việc cung cấp Thông tin cá nhân của bạn trong biểu mẫu này và nhấp vào nút Tiếp theo bên dưới, bạn đồng ý và xác nhận sự đồng thuận cho American International Group, Inc. ("AIG"), hoặc các công ty con và chi nhánh, và các nhà cung cấp dịch vụ của họ, thu thập, sử dụng, chia sẻ và chuyển giao quốc tế Thông tin cá nhân của bạn liên quan đến việc cấp chứng nhận bảo hiểm và như được quy định khác trong chính sách quyền riêng tư của họ bên dưới. Nếu bạn cung cấp cho AIG Thông tin Cá nhân về một người khác, bạn xác nhận rằng bạn đã thông báo cho người đó về cách AIG sẽ sử dụng thông tin đó và rằng bạn được phép cung cấp thông tin đó.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5750, 7, N'TRAVEL02.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5751, 7, N'TRAVEL02.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5752, 7, N'travel03.letter', N'THƯ DU LỊCH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5753, 7, N'travel03.trip_information', N'Thông tin chuyến đi:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5754, 7, N'TRAVEL03.DESTINY', N'ĐIỂM ĐẾN *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5756, 7, N'TRAVEL03.TRIP', N'CHỌN LOẠI CHUYẾN ĐI CỦA BẠN')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5757, 7, N'ONE_TRIP', N'CHUYẾN ĐI MỘT CHIỀU')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5758, 7, N'ROUND_TRIP', N'CHUYẾN ĐI KHỨ HỒI')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5759, 7, N'TRAVEL03.PURCHASE_DATE', N'NGÀY MUA VÉ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5760, 7, N'TRAVEL03.DEPARTURE_DATE', N'NGÀY KHỞI HÀNH')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5761, 7, N'ERR_TV_DEPARTURE_AFTER_REGISTRATION', N'Ngày khởi hành phải sau Ngày đăng ký.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5762, 7, N'ERR_TV_DEPARTURE_AFTER_PURCHASE', N'Ngày khởi hành phải sau Ngày mua vé.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5763, 7, N'TRAVEL03.RETURN_DATE', N'NGÀY TRỞ VỀ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5764, 7, N'ERR_TV_RETURN_AFTER_DEPARTURE', N'Ngày trở về phải giống Ngày khởi hành hoặc muộn hơn Ngày khởi hành.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5765, 7, N'ERR_INVALID_COUNT_DAYS', N'Ngày trở về không thể muộn quá 180 ngày kể từ Ngày khởi hành.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5766, 7, N'travel03.disclaimer.1', N'Bằng việc cung cấp Thông tin cá nhân của bạn trong biểu mẫu này và nhấp vào nút Tiếp theo bên dưới, bạn đồng ý và xác nhận sự đồng thuận cho American International Group, Inc. ("AIG"), hoặc các công ty con và chi nhánh, và các nhà cung cấp dịch vụ của họ, thu thập, sử dụng, chia sẻ và chuyển giao quốc tế Thông tin cá nhân của bạn liên quan đến việc cấp chứng nhận bảo hiểm và như được quy định khác trong chính sách quyền riêng tư của họ bên dưới. Nếu bạn cung cấp cho AIG Thông tin Cá nhân về một người khác, bạn xác nhận rằng bạn đã thông báo cho người đó về cách AIG sẽ sử dụng thông tin đó và rằng bạn được phép cung cấp thông tin đó.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5767, 7, N'TRAVEL03.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5768, 7, N'TRAVEL03.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5863, 5, N'travel.letter', N'旅行同意书')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5864, 5, N'dados', N'持卡人详情')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5865, 5, N'TRAVEL02.EMAIL', N'邮箱地址')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5866, 5, N'BIN', N'万事达卡的前十位数字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5867, 5, N'TRAVEL02.NAME', N'名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5868, 5, N'TRAVEL02.SURNAME', N'姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5869, 5, N'birthdate', N'出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5870, 5, N'NATIONALITY', N'国籍')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5871, 5, N'passport', N'护照号码')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5872, 5, N'dados_familia', N'家庭情况')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5873, 5, N'child_first_name', N'未成年子女名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5874, 5, N'child_birthdate', N'未成年子女出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5875, 5, N'child_last_name', N'未成年子女姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5876, 5, N'child_nationality', N'未成年子女国籍')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5877, 5, N'child_passport', N'未成年子女护照')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5878, 5, N'spouse_first_name', N'配偶名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5879, 5, N'spouse_last_name', N'配偶姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5880, 5, N'spouse_birthdate', N'配偶出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5881, 5, N'spouse_nationality', N'配偶国籍')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5882, 5, N'spouse_passport', N'配偶护照')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5883, 5, N'trip_details', N'旅程详情')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5884, 5, N'destination', N'目的地')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5885, 5, N'purchaseDate', N'购票日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5886, 5, N'departureDate', N'启程日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5887, 5, N'ReturnDate', N'返程日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5888, 5, N'travel.disclaimer.1', N'在本表格中填写你的个人信息并点击下面的“下一步”按钮，即表示你同意并确认允许美国国际集团（下称“AIG”）或其任何子公司和附属公司及其服务提供商在提供保险凭证时以及在以下隐私政策中规定的情况下对你的个人信息进行收集、使用、共享和跨境转移。如果你向AIG提供其他人的个人信息，即表示你确认已告知此人AIG将如何使用这些信息，并且你已获得授权提供这些信息。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5889, 5, N'travel.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5890, 5, N'travel.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5891, 5, N'TRAVEL.GENERATE_AND_PRINT', N'生成并打印')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5892, 5, N'TRAVEL.GENERATE_AND_SEND', N'生成并发送')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5893, 5, N'welcome_title', N'welcome_title')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5894, 5, N'welcome_terms', N'welcome_terms')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5895, 5, N'registered', N'我已注册')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5896, 5, N'registration', N'我想注册')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5897, 5, N'f_exis_notRegistered', N'你尚未注册。你想注册吗？ ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5898, 5, N'link_registration', N'前往注册')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5899, 5, N'f_exis_registered', N'你已注册。你想签发旅行同意书吗？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5900, 5, N'link_registered', N'前往旅行同意书')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5901, 5, N'travel.email.send', N'邮件已发送至以下邮箱地址：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5902, 5, N'OK', N'好的')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5903, 5, N'OkMail', N'邮件已成功发送至所提供的邮箱地址。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5904, 5, N'TRAVEL.seguro_viagem', N'旅行同意书')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5905, 5, N'BREADCRUMBS_TRAVELDETAILS', N'要求')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5906, 5, N'BREADCRUMBS_TRAVELPASSENGERS', N'持卡人详情')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5907, 5, N'BREADCRUMBS_TRAVELINFO', N'旅程信息')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5908, 5, N'BREADCRUMBS_TRAVELREVIEW', N'检查并生成证明')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5909, 5, N'TRAVEL02.before_start', N'在开始之前你需要：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5910, 5, N'TRAVEL02.informacoes_pessoais', N'- 个人信息（护照上的全名、护照号码、家庭住址）。<br>- 旅程信息（购票日期、旅行日期）。</br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5911, 5, N'RGTVA01.DECLARO', N'我确认我已使用符合条件的万事达卡购票')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5912, 5, N'f_disclaimer2_travel', N'在本表格中填写你的个人信息并点击下面的“下一步”按钮，即表示你同意并确认允许美国国际集团（下称“AIG”）或其任何子公司和附属公司及其服务提供商在提供保险凭证时以及在以下隐私政策中规定的情况下对你的个人信息进行收集、使用、共享和跨境转移。如果你向AIG提供其他人的个人信息，即表示你确认已告知此人AIG将如何使用这些信息，并且你已获得授权提供这些信息。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5913, 5, N'TRAVEL02.travel_letter', N'旅行同意书')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5914, 5, N'TRAVEL02.cardholder_details_title', N'输入持卡人详情：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5915, 5, N'TRAVEL02.cardholder_details_subtitle', N'请在下面输入所需的持卡人信息。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5916, 5, N'TRAVEL02.BIRTH_DATE', N'出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5917, 5, N'TRAVEL02.BIRTH_TOOLTIP', N'万事达卡持卡人出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5918, 5, N'ERR_CARDHOLDER_MORE_18', N'由于保单规定的年龄限制，无法签发旅行同意书。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5921, 5, N'COMBO_PLACEHOLDER', N'选择选项')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5922, 5, N'TRAVEL02.SPOUSE_CHECK', N'你是和你的配偶一起旅行吗？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5923, 5, N'TRAVEL02.SPOUSE_NAME', N'配偶姓名')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5924, 5, N'TRAVEL02.spouse_name_tooltip', N'万事达卡持卡人配偶名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5925, 5, N'TRAVEL02.SPOUSE_SURNAME', N'配偶姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5926, 5, N'TRAVEL02.spouse_surname_tooltip', N'万事达卡持卡人配偶姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5927, 5, N'TRAVEL02.SPOUSE_BIRTH_DATE', N'配偶出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5928, 5, N'TRAVEL02.SPOUSE_BIRTH_TOOLTIP', N'万事达卡持卡人配偶的出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5929, 5, N'TRAVEL02.CHILD_CHECK', N'你是和未成年子女一起旅行吗？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5930, 5, N'TRAVEL02.CHILD_NAME', N'未成年子女姓名')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5931, 5, N'TRAVEL02.child_name_tooltip', N'万事达卡持卡人未成年子女姓名')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5932, 5, N'TRAVEL02.CHILD_SURNAME', N'未成年子女姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5933, 5, N'TRAVEL02.child_surname_tooltip', N'万事达卡持卡人未成年子女姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5934, 5, N'TRAVEL02.CHILD_BIRTH_DATE', N'未成年子女出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5935, 5, N'TRAVEL02.CHILD_BIRTH_TOOLTIP', N'万事达卡持卡人未成年子女的出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5936, 5, N'ERR_CHILD_LESS_23', N'由于保单规定的年龄限制，无法签发旅行同意书。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5937, 5, N'TRAVEL02.ADD_CHILD', N'添加未成年子女')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5938, 5, N'TRAVEL02.REMOVE_CHILD', N'移除未成年子女')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5939, 5, N'TRAVEL02.disclaimer.1', N'在本表格中填写你的个人信息并点击下面的“下一步”按钮，即表示你同意并确认允许美国国际集团（下称“AIG”）或其任何子公司和附属公司及其服务提供商在提供保险凭证时以及在以下隐私政策中规定的情况下对你的个人信息进行收集、使用、共享和跨境转移。如果你向AIG提供其他人的个人信息，即表示你确认已告知此人AIG将如何使用这些信息，并且你已获得授权提供这些信息。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5940, 5, N'TRAVEL02.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5941, 5, N'TRAVEL02.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5942, 5, N'travel03.letter', N'旅行同意书')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5943, 5, N'travel03.trip_information', N'旅程信息：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5944, 5, N'TRAVEL03.DESTINY', N'目的地*')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5946, 5, N'TRAVEL03.TRIP', N'选择你的旅程类型')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5947, 5, N'ONE_TRIP', N'单向旅程')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5948, 5, N'ROUND_TRIP', N'往返旅程')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5949, 5, N'TRAVEL03.PURCHASE_DATE', N'旅程购票日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5950, 5, N'TRAVEL03.DEPARTURE_DATE', N'启程日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5951, 5, N'ERR_TV_DEPARTURE_AFTER_REGISTRATION', N'启程日期必须晚于注册日期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5952, 5, N'ERR_TV_DEPARTURE_AFTER_PURCHASE', N'启程日期必须晚于购票日期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5953, 5, N'TRAVEL03.RETURN_DATE', N'返程日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5954, 5, N'ERR_TV_RETURN_AFTER_DEPARTURE', N'返程日期必须与启程日期相同或晚于启程日期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5955, 5, N'ERR_INVALID_COUNT_DAYS', N'返程日期距离启程日期不得超过180天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5956, 5, N'travel03.disclaimer.1', N'在本表格中填写你的个人信息并点击下面的“下一步”按钮，即表示你同意并确认允许美国国际集团（下称“AIG”）或其任何子公司和附属公司及其服务提供商在提供保险凭证时以及在以下隐私政策中规定的情况下对你的个人信息进行收集、使用、共享和跨境转移。如果你向AIG提供其他人的个人信息，即表示你确认已告知此人AIG将如何使用这些信息，并且你已获得授权提供这些信息。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5957, 4, N'travel.letter', N'旅行信件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5958, 4, N'dados', N'持卡人資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5959, 4, N'TRAVEL02.EMAIL', N'電郵地址')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5960, 4, N'BIN', N'您的萬事達卡編號的首十個號碼')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5961, 4, N'TRAVEL02.NAME', N'名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5962, 4, N'TRAVEL02.SURNAME', N'姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5963, 4, N'birthdate', N'出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5964, 4, N'NATIONALITY', N'國籍')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5965, 4, N'passport', N'護照號碼')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5966, 4, N'dados_familia', N'家庭資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5967, 4, N'child_first_name', N'受供養子女的名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5968, 4, N'child_birthdate', N'受供養子女的出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5969, 4, N'child_last_name', N'受供養子女的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5970, 4, N'child_nationality', N'受供養子女的國籍')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5971, 4, N'child_passport', N'受供養子女的護照')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5972, 4, N'spouse_first_name', N'配偶名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5973, 4, N'spouse_last_name', N'配偶姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5974, 4, N'spouse_birthdate', N'配偶出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5975, 4, N'spouse_nationality', N'配偶國籍')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5976, 4, N'spouse_passport', N'配偶護照')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5977, 4, N'trip_details', N'旅行資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5978, 4, N'destination', N'目的地')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5979, 4, N'purchaseDate', N'購買日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5980, 4, N'departureDate', N'離境日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5981, 4, N'ReturnDate', N'回程日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5982, 4, N'travel.disclaimer.1', N'當在此表格上提供您的個人資料，並按下下方的「下一步」按鍵，您同意並確認您同意美國國際集團（下稱「AIG」）或其任何子公司或附屬機構及其服務提供者，就提供保險證書和其下方私隱政策所列出的其他事項收集、使用、分享和在世界各地轉送您的個人資料。假如您向 AIG 提供另一個人的個人資料，您確認您已經告知他/她會如何使用其個人資料，以及您已經獲授權提供其個人資料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5983, 4, N'travel.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5984, 4, N'travel.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5985, 4, N'TRAVEL.GENERATE_AND_PRINT', N'編製和列印')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5986, 4, N'TRAVEL.GENERATE_AND_SEND', N'編製和發送')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5987, 4, N'welcome_title', N'welcome_title')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5988, 4, N'welcome_terms', N'welcome_terms')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5989, 4, N'registered', N'我已登記')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5990, 4, N'registration', N'我想登記')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5991, 4, N'f_exis_notRegistered', N'您還未登記。您想登記嗎？ ')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5992, 4, N'link_registration', N'前往登記')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5993, 4, N'f_exis_registered', N'您已經登記您想要發出旅行信件嗎？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5994, 4, N'link_registered', N'前往旅行信件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5995, 4, N'travel.email.send', N'電郵會被發送至下列電郵地址：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5996, 4, N'OK', N'Ok')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5997, 4, N'OkMail', N'電郵已被成功發送至所提供的電郵地址。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5998, 4, N'TRAVEL.seguro_viagem', N'旅行信件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (5999, 4, N'BREADCRUMBS_TRAVELDETAILS', N'要求')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6000, 4, N'BREADCRUMBS_TRAVELPASSENGERS', N'持卡人資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6001, 4, N'BREADCRUMBS_TRAVELINFO', N'旅行資料')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6002, 4, N'BREADCRUMBS_TRAVELREVIEW', N'檢視並編製您的證書')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6003, 4, N'TRAVEL02.before_start', N'開始前，您需要：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6004, 4, N'TRAVEL02.informacoes_pessoais', N'- 個人資料（印在護照上的全名、護照號碼、家居住址）。<br>- 旅行資料（購票日期、旅行日期）。</br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6005, 4, N'RGTVA01.DECLARO', N'我確認我曾利用我的合資格萬事達卡購買機票')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6006, 4, N'f_disclaimer2_travel', N'當在此表格上提供您的個人資料，並按下下方的「下一步」按鍵，您同意並確認您同意美國國際集團（下稱「AIG」）或其任何子公司或附屬機構及其服務提供者，就提供保險證書和其下方私隱政策所列出的其他事項收集、使用、分享和在世界各地轉送您的個人資料。假如您向 AIG 提供另一個人的個人資料，您確認您已經告知他/她會如何使用其個人資料，以及您已經獲授權提供其個人資料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6007, 4, N'TRAVEL02.travel_letter', N'旅行信件')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6008, 4, N'TRAVEL02.cardholder_details_title', N'輸入持卡人資料：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6009, 4, N'TRAVEL02.cardholder_details_subtitle', N'請於下方輸入所需的持卡人資料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6010, 4, N'TRAVEL02.BIRTH_DATE', N'出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6011, 4, N'TRAVEL02.BIRTH_TOOLTIP', N'萬事達卡持卡人的出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6012, 4, N'ERR_CARDHOLDER_MORE_18', N'由於保險單所述的年齡限制，故不能發出旅行信件。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6015, 4, N'COMBO_PLACEHOLDER', N'請選擇')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6016, 4, N'TRAVEL02.SPOUSE_CHECK', N'您是否正在與配偶一起旅遊？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6017, 4, N'TRAVEL02.SPOUSE_NAME', N'配偶名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6018, 4, N'TRAVEL02.spouse_name_tooltip', N'萬事達卡持卡人的配偶的名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6019, 4, N'TRAVEL02.SPOUSE_SURNAME', N'配偶姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6020, 4, N'TRAVEL02.spouse_surname_tooltip', N'萬事達卡持卡人的配偶的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6021, 4, N'TRAVEL02.SPOUSE_BIRTH_DATE', N'配偶出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6022, 4, N'TRAVEL02.SPOUSE_BIRTH_TOOLTIP', N'萬事達卡持卡人的配偶的出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6023, 4, N'TRAVEL02.CHILD_CHECK', N'您是否正在與您的受供養子女一起旅行？')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6024, 4, N'TRAVEL02.CHILD_NAME', N'受供養子女的名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6025, 4, N'TRAVEL02.child_name_tooltip', N'萬事達卡持卡人的受供養子女的名稱')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6026, 4, N'TRAVEL02.CHILD_SURNAME', N'受供養子女的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6027, 4, N'TRAVEL02.child_surname_tooltip', N'萬事達卡持卡人的受供養子女的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6028, 4, N'TRAVEL02.CHILD_BIRTH_DATE', N'受供養子女的出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6029, 4, N'TRAVEL02.CHILD_BIRTH_TOOLTIP', N'萬事達卡持卡人的受供養子女的名稱的出生日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6030, 4, N'ERR_CHILD_LESS_23', N'由於保險單所述的年齡限制，故不能發出旅行信件。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6031, 4, N'TRAVEL02.ADD_CHILD', N'加入受供養子女')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6032, 4, N'TRAVEL02.REMOVE_CHILD', N'移除受供養子女')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6033, 4, N'TRAVEL02.disclaimer.1', N'當在此表格上提供您的個人資料，並按下下方的「下一步」按鍵，您同意並確認您同意美國國際集團（下稱「AIG」）或其任何子公司或附屬機構及其服務提供者，就提供保險證書和其下方私隱政策所列出的其他事項收集、使用、分享和在世界各地轉送您的個人資料。假如您向 AIG 提供另一個人的個人資料，您確認您已經告知他/她會如何使用其個人資料，以及您已經獲授權提供其個人資料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6034, 4, N'TRAVEL02.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6035, 4, N'TRAVEL02.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6036, 4, N'travel03.letter', N'旅行信件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6037, 4, N'travel03.trip_information', N'旅行資料：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6038, 4, N'TRAVEL03.DESTINY', N'目的地 *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6040, 4, N'TRAVEL03.TRIP', N'選擇您的旅行類別')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6041, 4, N'ONE_TRIP', N'單程')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6042, 4, N'ROUND_TRIP', N'來回')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6043, 4, N'TRAVEL03.PURCHASE_DATE', N'機票購買日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6044, 4, N'TRAVEL03.DEPARTURE_DATE', N'離境日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6045, 4, N'ERR_TV_DEPARTURE_AFTER_REGISTRATION', N'離境日期必須晚於登記日期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6046, 4, N'ERR_TV_DEPARTURE_AFTER_PURCHASE', N'離境日期必須晚於購票日期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6047, 4, N'TRAVEL03.RETURN_DATE', N'回程日期')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6048, 4, N'ERR_TV_RETURN_AFTER_DEPARTURE', N'回程日期必須與離境日期相同，或晚於離境日期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6049, 4, N'ERR_INVALID_COUNT_DAYS', N'回程日期不能晚於離境日期後 180 天。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6050, 4, N'travel03.disclaimer.1', N'當在此表格上提供您的個人資料，並按下下方的「下一步」按鍵，您同意並確認您同意美國國際集團（下稱「AIG」）或其任何子公司或附屬機構及其服務提供者，就提供保險證書和其下方私隱政策所列出的其他事項收集、使用、分享和在世界各地轉送您的個人資料。假如您向 AIG 提供另一個人的個人資料，您確認您已經告知他/她會如何使用其個人資料，以及您已經獲授權提供其個人資料。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6051, 4, N'TRAVEL03.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6052, 4, N'TRAVEL03.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6053, 1, N'BTN_GO_TO_TRAVEL', N'Go to Travel Letter')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6054, 2, N'BTN_GO_TO_TRAVEL', N'여행서로 이동')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6055, 3, N'BTN_GO_TO_TRAVEL', N'ไปยังหน้าหนังสือรับรองประกันการท่องเที่ยว')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6056, 4, N'BTN_GO_TO_TRAVEL', N'前往旅行信件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6057, 5, N'BTN_GO_TO_TRAVEL', N'前往旅行同意书')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6058, 6, N'BTN_GO_TO_TRAVEL', N'Buka Surat Perjalanan')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6059, 7, N'BTN_GO_TO_TRAVEL', N'Đi tới Thư du lịch')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6060, 1, N'rgscc02.modal_max_passengers_message', N'The coverage applies to a maximum of 3 dependent children.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6061, 2, N'rgscc02.modal_max_passengers_message', N'보상은 최대 3명의 부양자녀에 한하여 적용됩니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6062, 3, N'rgscc02.modal_max_passengers_message', N'ให้ความคุ้มครองแก่บุตรในอุปการะสูงสุด 3 คน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6063, 4, N'rgscc02.modal_max_passengers_message', N'承保最多 3 位受供養子女。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6064, 5, N'rgscc02.modal_max_passengers_message', N'本保险最多适用于3个受抚养子女。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6065, 6, N'rgscc02.modal_max_passengers_message', N'Pertanggungan ini berlaku untuk maksimal 3 orang anak tanggungan.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6066, 7, N'rgscc02.modal_max_passengers_message', N'Bảo hiểm áp dụng cho tối đa 3 trẻ phụ thuộc.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6067, 1, N'RGSCC02.MODAL_MAX_PASSENGERS_TITLE', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6068, 2, N'RGSCC02.MODAL_MAX_PASSENGERS_TITLE', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6069, 3, N'RGSCC02.MODAL_MAX_PASSENGERS_TITLE', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6070, 4, N'RGSCC02.MODAL_MAX_PASSENGERS_TITLE', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6071, 5, N'RGSCC02.MODAL_MAX_PASSENGERS_TITLE', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6072, 6, N'RGSCC02.MODAL_MAX_PASSENGERS_TITLE', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6073, 7, N'RGSCC02.MODAL_MAX_PASSENGERS_TITLE', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6074, 1, N'ERR_INVALID_REGISTRATION_DAYS', N'The Departure Date must be after the Registration Date.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6075, 2, N'ERR_INVALID_REGISTRATION_DAYS', N'출발 날짜는 가입 날짜 이후여야 합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6076, 3, N'ERR_INVALID_REGISTRATION_DAYS', N'วันที่ออกเดินทางจะต้องเป็นวันที่หลังวันลงทะเบียน')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6077, 4, N'ERR_INVALID_REGISTRATION_DAYS', N'離境日期必須晚於登記日期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6078, 5, N'ERR_INVALID_REGISTRATION_DAYS', N'启程日期必须晚于注册日期。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6079, 6, N'ERR_INVALID_REGISTRATION_DAYS', N'Tanggal Keberangkatan harus setelah Tanggal Pendaftaran.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6080, 7, N'ERR_INVALID_REGISTRATION_DAYS', N'Ngày khởi hành phải sau Ngày đăng ký.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6081, 1, N'verifique_travel', N'Confirm registration:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6082, 2, N'verifique_travel', N'가입 확인')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6083, 3, N'verifique_travel', N'ยืนยันการลงทะเบียน:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6084, 4, N'verifique_travel', N'確認註冊：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6085, 5, N'verifique_travel', N'确认注册：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6086, 6, N'verifique_travel', N'Konfirmasi pendaftaran:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6087, 7, N'verifique_travel', N'Xác nhận đăng ký:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6088, 1, N'confirm_msgOne_travel', N'Please check your personal details and click “Complete Registration” to register your Travel Insurance.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6089, 2, N'confirm_msgOne_travel', N'인적 사항을 확인하시고 가입 완료를 클릭해 여행자 보험에 가입하십시오.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6090, 3, N'confirm_msgOne_travel', N'โปรดตรวจสอบข้อมูลส่วนตัวของท่านและคลิก “ลงทะเบียน” เพื่อลงทะเบียนประกันภัยการเดินทางของท่าน.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6091, 4, N'confirm_msgOne_travel', N'請檢查您的個人資料，並點擊「完成註冊」以註冊您的旅遊保險.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6092, 5, N'confirm_msgOne_travel', N'请检查您的个人资料，并点击 “完成注册”以注册您的旅游保险.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6093, 6, N'confirm_msgOne_travel', N'Periksa kembali data pribadi Anda, lalu klik “Selesaikan Pendaftaran” untuk mendaftarkan Asuransi Perjalanan Anda.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6094, 7, N'confirm_msgOne_travel', N'Vui lòng kiểm tra thông tin cá nhân và nhấp vào “Hoàn thành đăng ký” để đăng ký Bảo hiểm Du lịch của bạn.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6095, 1, N'confirm_msgTwo_travel', N'The registration will be confirmed to you by email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6096, 2, N'confirm_msgTwo_travel', N'이메일을 통해 가입 확인을 진행하시게 됩니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6097, 3, N'confirm_msgTwo_travel', N'จะยืนยันการลงทะเบียนประกันภัยการเดินทางกับท่านทางอีเมล')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6098, 4, N'confirm_msgTwo_travel', N'我們將通過電子郵件確認註冊。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6099, 5, N'confirm_msgTwo_travel', N'我们将通过电子邮件确认注册。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6100, 6, N'confirm_msgTwo_travel', N'Pendaftaran akan dikonfirmasikan kepada Anda melalui email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6101, 7, N'confirm_msgTwo_travel', N'Xác nhận đăng ký sẽ được gửi cho bạn qua email.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6102, 1, N'welcome_title', N'welcome_title')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6103, 1, N'welcome_terms', N'welcome_terms')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6104, 1, N'ERR_INVALID_COUNTRY', N'This policy will not cover any loss, injury, damage, or legal liability caused by, sustained, or arising directly or indirectly from planned or actual travel in, to, or through Cuba, Iran, Syria, North Korea, or the Crimea region and travel in, to, or through Afghanistan or Iraq.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6105, 2, N'ERR_INVALID_COUNTRY', N'본 증권은 쿠바, 이란, 시리아, 북한 또는 크리미아 지역으로나 경유하는 계획된 여행이나 실제 여행이나 아프가니스탄 또는 이라크를 경유하거나 여행함으로서 직간접적으로 발생하는 모든 손실, 부상, 손해 또는 법적 책임을 다루지 않습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6106, 3, N'ERR_INVALID_COUNTRY', N'กรมธรรม์นี้จะไม่คุ้มครองความสูญเสีย การบาดเจ็บ ความเสียหาย หรือความรับผิดตามกฎหมายใด ๆ ที่เป็นเหตุจาก เนื่องมาจาก หรือเกิดขึ้นจากการเดินทางที่วางแผนไว้ หรือการเดินทางจริงใน ไปยัง หรือผ่านคิวบา อิหร่าน ซีเรีย เกาหลีเหนือ หรือแคว้นไครเมีย และการเดินทางใน ไปยัง หรือผ่านแอฟกานิสถานหรืออิรัก ไม่ว่าทั้งทางตรงหรือทางอ้อมก็ตาม')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6107, 4, N'ERR_INVALID_COUNTRY', N'此保單不承保因計劃或實際前往、在或途經古巴、伊朗、敘利亞、北韓或克里米亞地區旅行，以及前往、在或途經阿富汗或伊拉克旅行，而直接或間接導致、持續或產生的任何損失、傷害、損害或法律責任。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6108, 5, N'ERR_INVALID_COUNTRY', N'本保单不承保被保险人因计划或实际前往、途经或在古巴、伊朗、叙利亚、朝鲜、克里米亚地区、阿富汗或伊拉克境内旅行而直接或间接造成、遭受或产生的任何损失、伤害、损害或法律责任。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6109, 6, N'ERR_INVALID_COUNTRY', N'Polis ini tidak akan menanggung kerugian, cedera, kerusakan, atau tanggung jawab hukum apa pun yang disebabkan oleh perjalanan yang direncanakan atau aktual yang terus-menerus, atau akibat langsung atau tidak langsung dari perjalanan tersebut di, ke, atau melewati Kuba, Iran, Suriah, Korea Utara, atau wilayah Krimea dan perjalanan di, ke, atau melewati Afghanistan atau Irak.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6110, 7, N'ERR_INVALID_COUNTRY', N'Chính sách này sẽ không bảo hiểm cho bất kỳ tổn thất, thương tích, thiệt hại hoặc trách nhiệm pháp lý nào gây ra, duy trì hoặc phát sinh trực tiếp hoặc gián tiếp từ chuyến đi theo kế hoạch hoặc thực tế đến, hoặc đi qua Cuba, Iran, Syria, Bắc Triều Tiên hoặc khu vực Crimea và đi vào, đến, hoặc qua Afghanistan hoặc Iraq.')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6111, 5, N'TRAVEL03.disclaimer.2', N'<br>')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6112, 5, N'TRAVEL03.freq_asked_questions', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6113, 2, N'attachment_travel_file_name', N'TravelInsurance_Cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6114, 3, N'attachment_travel_file_name', N'TravelInsurance_Cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6115, 4, N'attachment_travel_file_name', N'TravelInsurance_Cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6116, 5, N'attachment_travel_file_name', N'TravelInsurance_Cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6117, 6, N'attachment_travel_file_name', N'TravelInsurance_Cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6118, 7, N'attachment_travel_file_name', N'TravelInsurance_Cardholder')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6119, 2, N'attachment_travel_file_name_child', N'TravelInsurance_Child_')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6120, 3, N'attachment_travel_file_name_child', N'TravelInsurance_Child_')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6121, 4, N'attachment_travel_file_name_child', N'TravelInsurance_Child_')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6122, 5, N'attachment_travel_file_name_child', N'TravelInsurance_Child_')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6123, 6, N'attachment_travel_file_name_child', N'TravelInsurance_Child_')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6124, 7, N'attachment_travel_file_name_child', N'TravelInsurance_Child_')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6125, 2, N'attachment_travel_file_name_spouse', N'TravelInsurance_Spouse')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6126, 3, N'attachment_travel_file_name_spouse', N'TravelInsurance_Spouse')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6127, 4, N'attachment_travel_file_name_spouse', N'TravelInsurance_Spouse')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6128, 5, N'attachment_travel_file_name_spouse', N'TravelInsurance_Spouse')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6129, 6, N'attachment_travel_file_name_spouse', N'TravelInsurance_Spouse')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6130, 7, N'attachment_travel_file_name_spouse', N'TravelInsurance_Spouse')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6131, 1, N'SEND_MWI_EMAIL', N'Resend Registration Email')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6132, 2, N'SEND_MWI_EMAIL', N'등록 이메일 재전송')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6133, 3, N'SEND_MWI_EMAIL', N'ส่งอีเมลลงทะเบียนอีกครั้ง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6134, 4, N'SEND_MWI_EMAIL', N'重新發送註冊郵件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6135, 5, N'SEND_MWI_EMAIL', N'重新发送注册邮件')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6136, 6, N'SEND_MWI_EMAIL', N'Kirim ulang email pendaftaran')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6137, 7, N'SEND_MWI_EMAIL', N'Gửi lại email đăng ký')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6138, 1, N'ERR_BUILDING_PDF', N'The certificate has not been generated due to an internal error in the process. Please try again. Sorry for the inconvenient.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6139, 2, N'ERR_BUILDING_PDF', N'진행 과정 중 내부 오류로 증명서가 생성되지 않았습니다.  다시 시도해 주십시오.  불편함을 끼쳐 드려 죄송합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6140, 3, N'ERR_BUILDING_PDF', N'ยังไม่ได้จัดทำใบรับรองเนื่องมาจากความผิดพลาดภายในที่เกิดขึ้นในกระบวนการ โปรดลองอีกครั้ง ขออภัยสำหรับความไม่สะดวก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6141, 4, N'ERR_BUILDING_PDF', N'由於處理過程中出現內部錯誤，證書尚未被製作。請再嘗試。對於所造成的不便，我們謹此表示歉意。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6142, 5, N'ERR_BUILDING_PDF', N'过程中出现内部错误，凭证未生成。请重试。很抱歉给您带来不便。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6143, 6, N'ERR_BUILDING_PDF', N'Sertifikat ini belum dibuat karena ada kesalahan proses internal. Silakan coba lagi. Mohon maaf atas ketidaknyamanan Anda.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6144, 7, N'ERR_BUILDING_PDF', N'Chứng nhận chưa được tạo do lỗi nội bộ trong quá trình này. Vui lòng thử lại. Rất tiếc vì sự bất tiện.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6145, 2, N'TRAVEL02.tenha', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6146, 3, N'TRAVEL02.tenha', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6147, 4, N'TRAVEL02.tenha', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6148, 5, N'TRAVEL02.tenha', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6149, 6, N'TRAVEL02.tenha', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6150, 7, N'TRAVEL02.tenha', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6151, 2, N'TRAVEL02.texto_bullets', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6152, 3, N'TRAVEL02.texto_bullets', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6153, 4, N'TRAVEL02.texto_bullets', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6154, 5, N'TRAVEL02.texto_bullets', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6155, 6, N'TRAVEL02.texto_bullets', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6156, 7, N'TRAVEL02.texto_bullets', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6157, 2, N'f_disclaimer_travel', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6158, 3, N'f_disclaimer_travel', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6159, 4, N'f_disclaimer_travel', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6160, 5, N'f_disclaimer_travel', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6161, 6, N'f_disclaimer_travel', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6162, 7, N'f_disclaimer_travel', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6163, 2, N'TRAVEL02.text_required', N'필수 *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6164, 3, N'TRAVEL02.text_required', N'จำเป็น *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6165, 4, N'TRAVEL02.text_required', N'必填 *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6166, 5, N'TRAVEL02.text_required', N'必填 *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6167, 6, N'TRAVEL02.text_required', N'Wajib diisi *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6168, 7, N'TRAVEL02.text_required', N'Bắt buộc *')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6169, 2, N'TRAVEL02.NAME_TOOLTIP', N'마스터카드 소유주의 이름')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6170, 3, N'TRAVEL02.NAME_TOOLTIP', N'ชื่อของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6171, 4, N'TRAVEL02.NAME_TOOLTIP', N'萬事達卡持卡人的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6172, 5, N'TRAVEL02.NAME_TOOLTIP', N'万事达卡持卡人的名字')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6173, 6, N'TRAVEL02.NAME_TOOLTIP', N'Nama depan pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6174, 7, N'TRAVEL02.NAME_TOOLTIP', N'Tên của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6175, 2, N'TRAVEL02.lastName_tooltip', N'마스터카드 소유주의 성')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6176, 3, N'TRAVEL02.lastName_tooltip', N'นามสกุลของผู้ถือบัตรมาสเตอร์การ์ด')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6177, 4, N'TRAVEL02.lastName_tooltip', N'萬事達卡持卡人的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6178, 5, N'TRAVEL02.lastName_tooltip', N'万事达卡持卡人的姓氏')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6179, 6, N'TRAVEL02.lastName_tooltip', N'Nama belakang pemegang kartu Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6180, 7, N'TRAVEL02.lastName_tooltip', N'Họ của chủ thẻ Mastercard')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6181, 2, N'travel_irstep2', N'다음')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6182, 3, N'travel_irstep2', N'ถัดไป')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6183, 4, N'travel_irstep2', N'下一步')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6184, 5, N'travel_irstep2', N'下一步')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6185, 6, N'travel_irstep2', N'Lanjut')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6186, 7, N'travel_irstep2', N'Tiếp theo')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6187, 2, N'close_button', N'x')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6188, 3, N'close_button', N'x')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6189, 4, N'close_button', N'x')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6190, 5, N'close_button', N'x')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6191, 6, N'close_button', N'x')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6192, 7, N'close_button', N'x')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6193, 2, N'notice', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6194, 3, N'notice', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6195, 4, N'notice', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6196, 5, N'notice', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6197, 6, N'notice', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6198, 7, N'notice', N'')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6199, 1, N'registered.email.send', N'The email was sent to the following email address:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6200, 2, N'registered.email.send', N'다음 이메일 주소로 이메일이 발송되었습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6201, 3, N'registered.email.send', N'เราได้ส่งอีเมลไปยังที่อยู่อีเมลต่อไปนี้:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6202, 4, N'registered.email.send', N'電郵會被發送至下列電郵地址：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6203, 5, N'registered.email.send', N'邮件已发送至以下邮箱地址：')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6204, 6, N'registered.email.send', N'Surel ini akan dikirim ke alamat surel berikut:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6205, 7, N'registered.email.send', N'Email đã được gửi đến địa chỉ email sau:')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6206, 1, N'travel_terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6207, 2, N'travel_terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6208, 3, N'travel_terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6209, 4, N'travel_terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6210, 5, N'travel_terms_and_conditions_file_name', N'Terms and conditions.pdf')
GO
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6211, 6, N'travel_terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6212, 7, N'travel_terms_and_conditions_file_name', N'Terms and conditions.pdf')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6213, 1, N'ERR_CARDHOLDER_MIN_70', N'Travel Letter cannot be issue due to age limits described in policy.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6214, 2, N'ERR_CARDHOLDER_MIN_70', N'증서에 명시된 연령 제한으로 인해 여행서를 발급할 수 없습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6215, 3, N'ERR_CARDHOLDER_MIN_70', N'ไม่สามารถออกหนังสือรับรองประกันการเดินทางเนื่องมาจากข้อจำกัดด้านอายุดังที่ได้ระบุไว้ในกรมธรรม์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6216, 4, N'ERR_CARDHOLDER_MIN_70', N'由於保險單所述的年齡限制，故不能發出旅行信件。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6217, 5, N'ERR_CARDHOLDER_MIN_70', N'由于保单规定的年龄限制，无法签发旅行同意书。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6218, 6, N'ERR_CARDHOLDER_MIN_70', N'Surat Perjalanan tidak dapat diterbitkan karena batas-batas usia yang dijelaskan dalam polis.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6219, 7, N'ERR_CARDHOLDER_MIN_70', N'Không thể phát hành Thư du lịch do giới hạn tuổi được mô tả trong chính sách.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6220, 1, N'ERR_TV_PURCHASE_AFTER_GOLIVE', N'The Purchase Date must be after 2022-10-01.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6221, 2, N'ERR_TV_PURCHASE_AFTER_GOLIVE', N'구매 날짜는 반드시 2022년 10월 1일 이후여야 합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6222, 3, N'ERR_TV_PURCHASE_AFTER_GOLIVE', N'จะต้องซื้อตั๋วหลังจากวันที่ 1 ตุลาคม 2565')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6223, 4, N'ERR_TV_PURCHASE_AFTER_GOLIVE', N'離境日期必須晚於 2022 年 10 月 1 日。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6224, 5, N'ERR_TV_PURCHASE_AFTER_GOLIVE', N'购买日期必须在2022-10-01之后。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6225, 6, N'ERR_TV_PURCHASE_AFTER_GOLIVE', N'Tanggal Pembelian harus lewat dari 01-10-2022.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6226, 7, N'ERR_TV_PURCHASE_AFTER_GOLIVE', N'Ngày Mua vé phải sau 01-10-2022.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6227, 1, N'ErrorMail', N'The email has not been sent due to an internal error in the process. Please click on "Generate and Send" again. Apologies for the inconvenience.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6228, 2, N'ErrorMail', N'프로세스 내부 오류로 이메일이 전송되지 않았습니다. 다시 시도해 주십시오.  불편함을 끼쳐 드려 죄송합니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6229, 3, N'ErrorMail', N'ยังไม่ได้ส่งอีเมลนี้เนื่องมาจากความผิดพลาดภายในที่เกิดขึ้นในกระบวนการ โปรดลองอีกครั้ง ขออภัยสำหรับความไม่สะดวก')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6230, 4, N'ErrorMail', N'由於處理過程中出現內部錯誤，電子郵件尚未被發送。請再嘗試。對於所造成的不便，我們謹此表示歉意。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6231, 5, N'ErrorMail', N'过程中出现内部错误，邮件未发送。请重试。很抱歉给您带来不便。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6232, 6, N'ErrorMail', N'Surel ini tidak terkirim karena ada kesalahan proses internal. Silakan coba lagi. Mohon maaf atas ketidaknyamanan Anda.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6233, 7, N'ErrorMail', N'Email chưa được gửi do lỗi nội bộ trong quá trình này. Vui lòng thử lại. Rất tiếc vì sự bất tiện.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6234, 1, N'ERR_BIN_START_5', N'Your Mastercard number is not valid.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6235, 2, N'ERR_BIN_START_5', N'마스터카드 번호가 올바르지 않습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6236, 3, N'ERR_BIN_START_5', N'หมายเลขมาสเตอร์การ์ดของคุณไม่ถูกต้อง')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6237, 4, N'ERR_BIN_START_5', N'您的萬事達卡卡號無效。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6238, 5, N'ERR_BIN_START_5', N'您的万事达卡卡号无效。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6239, 6, N'ERR_BIN_START_5', N'Nomor Mastercard Anda tidak valid.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6240, 7, N'ERR_BIN_START_5', N'Số Mastercard của bạn không hợp lệ.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6241, 1, N'modal_noncompatible_browser_message', N'We ''re sorry, but this browser may not be supported by our site. To get the best experience using the AIG Insurance Certificate Portal, we recommend that you upgrade it or use one of the supported web browsers: Chrome, Edge, Firefox or Safari.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6242, 2, N'modal_noncompatible_browser_message', N'죄송합니다만, 이 브라우저는 당사 사이트에서 지원하지 않을 수 있습니다. AIG 보험 인증서 포털을 사용하여 최상의 경험을 얻으려면 업그레이드를 하거나 지원되는 웹 브라우저(크롬, 엣지 또는 파이어폭스) 중 하나를 사용하는 것이 좋습니다.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6243, 3, N'modal_noncompatible_browser_message', N'ขออภัย ไซต์ของเราอาจไม่รองรับเบราว์เซอร์นี้ เพื่อให้สามารถใช้พอร์ตทัลใบรับรองการประกันภัยของ AIG (AIG Insurance Certificate Portal) ได้อย่างมีประสิทธิภาพดีที่สุด เราขอแนะนำให้ท่านอัพเกรดเบราว์เซอร์หรือใช้เว็บเบราว์เซอร์ประเภทใดประเภทหนึ่งที่ไซต์รองรับ กล่าวคือ Chrome, Edge, Firefox หรือ Safari')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6244, 4, N'modal_noncompatible_browser_message', N'很抱歉，網頁可能不支援此瀏覽器。我們建議您升級瀏覽器或改用網頁支援的瀏覽器 ，即Chrome、Edge、Firefox 或 Safari，以獲得 「AIG 保險憑證門戶」的最佳用戶體驗。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6245, 5, N'modal_noncompatible_browser_message', N'很抱歉， 网页可能不支持此浏览器。我们建议您升级浏览器或改用网页支持的浏览器，即Chrome、Edge、Firefox  或 Safari，以获得"AIG 保险凭证门户"的最佳用戶体验。')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6246, 6, N'modal_noncompatible_browser_message', N'Maaf, browser ini tidak didukung di situs kami. Untuk mendapatkan pengalaman terbaik menggunakan Portal Sertifikat Asuransi AIG, kami sarankan Anda untuk memutakhirkan browser Anda atau menggunakan salah satu browser yang didukung: Chrome, Edge, Firefox atau Safari.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6247, 7, N'modal_noncompatible_browser_message', N'Rất tiếc, trang web của chúng tôi có thể không hỗ trợ trình duyệt này. Để có được trải nghiệm tốt nhất khi sử dụng Cổng Chứng nhận Bảo hiểm AIG, chúng tôi khuyên bạn nên nâng cấp trình duyệt hoặc sử dụng một trong các trình duyệt được hỗ trợ sau: Chrome, Edge, Firefox hoặc Safari.')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6248, 1, N'REGISTRATION.GENERATE_AND_PRINT', N'GENERATE AND PRINT')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6249, 2, N'REGISTRATION.GENERATE_AND_PRINT', N'생성 및 프린트')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6250, 3, N'REGISTRATION.GENERATE_AND_PRINT', N'สร้างและพิมพ์')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6251, 4, N'REGISTRATION.GENERATE_AND_PRINT', N'編製和列印')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6252, 5, N'REGISTRATION.GENERATE_AND_PRINT', N'生成并打印')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6253, 6, N'REGISTRATION.GENERATE_AND_PRINT', N'BUAT DAN CETAK')
INSERT [dbo].[static_label] ([id], [language_id], [identifier], [value]) VALUES (6254, 7, N'REGISTRATION.GENERATE_AND_PRINT', N'TẠO VÀ IN')
SET IDENTITY_INSERT [dbo].[static_label] OFF
SET IDENTITY_INSERT [dbo].[static_section] ON 

INSERT [dbo].[static_section] ([id], [landing_id], [language_id], [code], [name], [in_default], [type]) VALUES (2, 1, 1, N'healthCheck', N'healthCheck', 0, N'html')
SET IDENTITY_INSERT [dbo].[static_section] OFF
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
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (32, 46, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (33, 47, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (34, 51, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (35, 52, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (36, 56, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (37, 57, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (38, 61, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (39, 62, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (40, 67, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (41, 68, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (42, 72, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (43, 73, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (44, 77, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (45, 78, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (46, 83, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (47, 84, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (48, 91, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (49, 92, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (50, 96, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (51, 97, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (52, 101, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (53, 102, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (54, 106, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (55, 107, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (56, 111, 1, N'InsuranceLettersCore.WebStepHandlers.TicketIdResetHandler', N'{}')
INSERT [dbo].[step_handler] ([id], [step_id], [position], [handler_class], [data]) VALUES (57, 112, 1, N'InsuranceLettersCore.WebStepHandlers.EmailFetcherHandler', N'{
    EMAIL_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value",
    NAME_JSONPATH: "$.input.fields[?(@.name == ''Email'')].values[0].value"
}')
SET IDENTITY_INSERT [dbo].[step_handler] OFF

SELECT '--------------After--------------'
SELECT COUNT(*) FROM [dbo].[application] 
SELECT '--------------After--------------'
COMMIT TRAN
SELECT getdate() as 'Fecha hora Final'


