[
  extends: [],
  import: [],
  mappings: [
    "logger.utc_log": [
      commented: false,
      datatype: :atom,
      default: true,
      hidden: false,
      to: "logger.utc_log"
    ],
    "logger.handle_otp_reports": [
      commented: false,
      datatype: :atom,
      default: true,
      hidden: false,
      to: "logger.handle_otp_reports"
    ],
    "logger.handle_sasl_reports": [
      commented: false,
      datatype: :atom,
      default: true,
      hidden: false,
      to: "logger.handle_sasl_reports"
    ],
    "logger.backends": [
      commented: false,
      datatype: [
        list: [
          :atom,
          atom: :atom
        ]
      ],
      default: [
        :console,
        "Logger.Backends.Gelf": :gelf_logger
      ],
      doc: "Provide documentation for logger.backends here.",
      hidden: false,
      to: "logger.backends"
    ],
    "logger.gelf_logger.application": [
      commented: false,
      datatype: :binary,
      default: "test-app",
      doc: "Provide documentation for logger.gelf_logger.application here.",
      hidden: false,
      to: "logger.gelf_logger.application"
    ],
    "logger.gelf_logger.compression": [
      commented: false,
      datatype: :atom,
      default: :gzip,
      doc: "Provide documentation for logger.gelf_logger.compression here.",
      hidden: false,
      to: "logger.gelf_logger.compression"
    ],
    "logger.gelf_logger.metadata": [
      commented: false,
      datatype: [
        list: :atom
      ],
      default: [
        :request_id,
        :stream_name,
        :channel,
        :client_id,
        :function,
        :module,
        :file,
        :line
      ],
      doc: "Provide documentation for logger.gelf_logger.metadata here.",
      hidden: false,
      to: "logger.gelf_logger.metadata"
    ],
    "logger.gelf_logger.host": [
      commented: false,
      datatype: :binary,
      default: "your-host.com",
      doc: "Provide documentation for logger.gelf_logger.host here.",
      hidden: false,
      to: "logger.gelf_logger.host"
    ],
    "logger.gelf_logger.port": [
      commented: false,
      datatype: :integer,
      default: 12201,
      doc: "Provide documentation for logger.gelf_logger.port here.",
      hidden: false,
      to: "logger.gelf_logger.port"
    ],
    "logger.gelf_logger.tags.environment": [
      commented: false,
      datatype: :binary,
      default: "prod",
      doc: "Provide documentation for logger.gelf_logger.tags.environment here.",
      hidden: false,
      to: "logger.gelf_logger.tags.environment"
    ]
  ],
  transforms: [],
  validators: []
]
