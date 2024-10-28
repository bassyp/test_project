# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2024081412263627504) do
  create_table "active_storage_attachments", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", precision: nil, null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "attribute_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "parent_id", comment: "Eltern-Element"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.string "f_type", limit: 50, comment: "Elementtyp"
    t.string "name", limit: 100, comment: "Name"
    t.string "short_title", limit: 100, comment: "Kurztitel"
    t.string "title", limit: 100, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "table_type", limit: 50, comment: "Tabellen-Typ"
    t.string "edit_type", limit: 50, comment: "Editier-Typ"
    t.boolean "quick_editable", default: false, comment: "Quick-Edit"
    t.string "table_name", limit: 100, comment: "Tabelle"
    t.string "f_model_name", limit: 100, comment: "Model"
    t.boolean "importable", default: false, comment: "Importierbar"
    t.boolean "f_readonly", default: false, comment: "Nur lesend"
    t.string "limit", comment: "Länge"
    t.boolean "admin_field", default: false, comment: "Admin-Feld"
    t.string "default", comment: "Standardwert"
    t.boolean "required", default: false, comment: "Pflichtfeld"
    t.boolean "search_input", default: true, comment: "Suche-Eingabefeld"
    t.boolean "search_output", default: true, comment: "Suche-Ausgabefeld"
    t.boolean "output_selected", default: false, comment: "Standard-Ausgabe"
    t.boolean "input_selected", default: false, comment: "Standard-Eingabe"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil
    t.bigint "history_user_id"
    t.bigint "original_id"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "selection_group", limit: 150, comment: "Auswahlgruppe"
    t.boolean "selected", default: false, comment: "ausgew. Element"
    t.string "style", comment: "CSS-Style"
    t.string "f_class", comment: "Standardwert"
    t.text "group_sign", size: :medium, comment: "Gruppierungszeichen"
    t.boolean "include_blank", default: false, comment: "Leerfeld"
    t.boolean "show_label", default: true, comment: "Text-Label"
    t.integer "column_count", comment: "Spaltenanzahl"
    t.boolean "multiple", default: false, comment: "Mehrfachauswahl"
    t.boolean "exportable", default: true, comment: "Exportierbar"
    t.string "uuid", limit: 68, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 68, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 76
    t.string "system_type", comment: "Systemtyp"
    t.string "reference_model", comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "f_type_filter", comment: "f_type_filter"
    t.boolean "table_show_footer", default: false, comment: "Footer anzeigen"
    t.string "table_footer_function", comment: "Footer-Funktion"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.integer "lookup_group_id", comment: "Konfig.-Gruppe"
    t.string "selection_group_filter", comment: "A-Gruppen-Filter"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 68
    t.string "lookup_group_uuid", limit: 66
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.boolean "always_quick_editable", default: false, comment: "Always-Quick-Edit"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.string "output_format", limit: 100, comment: "Ausgabeformat"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.string "foreign_key_table", limit: 100, comment: "Fremdschlüsseltabelle"
    t.string "f_readonly_condition", limit: 25, default: "0", comment: "Nur Lesend-Bedingung"
    t.text "javascript_code", size: :medium, comment: "Javascript-Code"
    t.text "stylesheet_code", size: :medium, comment: "Stylesheet-Code"
    t.text "label_onclick", size: :medium, comment: "Label-OnClick"
    t.text "label_ondblclick", size: :medium, comment: "Label-OnDblClick"
    t.text "group_sign_onclick", size: :medium, comment: "Gruppenzeichen-OnClick"
    t.text "group_sign_ondblclick", size: :medium, comment: "Gruppenzeichen-OnDblClick"
    t.text "onchange", size: :medium, comment: "OnChange"
    t.text "onblur", size: :medium, comment: "OnBlur"
    t.text "ondblclick", size: :medium, comment: "OnDblClick"
    t.text "onclick", size: :medium, comment: "On-Click-Event"
    t.text "onfocus", size: :medium, comment: "On-Focus-Event"
    t.boolean "add_dynamics_to_the_import_file", default: true, comment: "Dynamics in Import hinzufügen"
    t.index ["mandant_id"], name: "fk_rails_38112b423c"
  end

  create_table "attribute_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "parent_id", comment: "Eltern-Element"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.string "f_type", limit: 50, comment: "Elementtyp"
    t.string "name", limit: 100, comment: "Name"
    t.string "short_title", limit: 100, comment: "Kurztitel"
    t.string "title", limit: 100, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "table_type", limit: 50, comment: "Tabellen-Typ"
    t.string "edit_type", limit: 50, comment: "Editier-Typ"
    t.string "table_name", limit: 100, comment: "Tabelle"
    t.string "f_model_name", limit: 100, comment: "Model"
    t.boolean "quick_editable", default: false, comment: "Quick-Edit"
    t.boolean "importable", default: false, comment: "Importierbar"
    t.boolean "f_readonly", default: false, comment: "Nur lesend"
    t.string "limit", comment: "Länge"
    t.boolean "admin_field", default: false, comment: "Admin-Feld"
    t.string "default", comment: "Standardwert"
    t.boolean "required", default: false, comment: "Pflichtfeld"
    t.boolean "search_input", default: true, comment: "Suche-Eingabefeld"
    t.boolean "search_output", default: true, comment: "Suche-Ausgabefeld"
    t.boolean "output_selected", default: false, comment: "Standard-Ausgabe"
    t.boolean "input_selected", default: false, comment: "Standard-Eingabe"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "selection_group", limit: 150, comment: "Auswahlgruppe"
    t.boolean "selected", default: false, comment: "ausgew. Element"
    t.string "style", comment: "CSS-Style"
    t.string "f_class", comment: "Standardwert"
    t.text "group_sign", size: :medium, comment: "Gruppierungszeichen"
    t.boolean "include_blank", default: false, comment: "Leerfeld"
    t.boolean "show_label", default: true, comment: "Text-Label"
    t.integer "column_count", comment: "Spaltenanzahl"
    t.boolean "multiple", default: false, comment: "Mehrfachauswahl"
    t.boolean "exportable", default: true, comment: "Exportierbar"
    t.string "uuid", limit: 68, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 68, comment: "Eltern-UIID"
    t.string "system_type", comment: "Systemtyp"
    t.string "reference_model", comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "f_type_filter", comment: "Typ-Filter"
    t.boolean "table_show_footer", default: false, comment: "Footer anzeigen"
    t.string "table_footer_function", comment: "Footer-Funktion"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.integer "lookup_group_id", comment: "Konfig.-Gruppe"
    t.string "selection_group_filter", comment: "A-Gruppen-Filter"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "lookup_group_uuid", limit: 66, comment: "Konfig.-Gruppe"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.boolean "always_quick_editable", default: false, comment: "Always-Quick-Edit"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.string "output_format", limit: 100, comment: "Ausgabeformat"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.string "foreign_key_table", limit: 100, comment: "Fremdschlüsseltabelle"
    t.string "f_readonly_condition", limit: 25, default: "0", comment: "Nur Lesend-Bedingung"
    t.text "javascript_code", size: :medium, comment: "Javascript-Code"
    t.text "stylesheet_code", size: :medium, comment: "Stylesheet-Code"
    t.text "label_onclick", size: :medium, comment: "Label-OnClick"
    t.text "label_ondblclick", size: :medium, comment: "Label-OnDblClick"
    t.text "group_sign_onclick", size: :medium, comment: "Gruppenzeichen-OnClick"
    t.text "group_sign_ondblclick", size: :medium, comment: "Gruppenzeichen-OnDblClick"
    t.text "onchange", size: :medium, comment: "OnChange"
    t.text "onblur", size: :medium, comment: "OnBlur"
    t.text "ondblclick", size: :medium, comment: "OnDblClick"
    t.text "onclick", size: :medium, comment: "On-Click-Event"
    t.text "onfocus", size: :medium, comment: "On-Focus-Event"
    t.boolean "add_dynamics_to_the_import_file", default: true, comment: "Dynamics in Import hinzufügen"
    t.index ["f_type"], name: "index_attribute_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_6a9bad3b0b"
    t.index ["parent_id"], name: "fk_rails_0b753c8c32"
    t.index ["system_type"], name: "index_attribute_items_on_system_type", length: 2
  end

  create_table "billing_account_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant"
    t.integer "parent_id", comment: "Eltern-Element"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "state", limit: 100, comment: "Status"
    t.string "name", limit: 150, comment: "Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.integer "customer_group_id", comment: "Kundengruppe"
    t.boolean "third_market", default: false, comment: "Drittmarkt"
    t.string "supplier_number", comment: "Lieferantennummer"
    t.text "history_info", size: :medium, comment: "Historie-Info"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.string "history_user_id", limit: 100, comment: "Historie-Benutzer"
    t.integer "original_id", comment: "Original-ID"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 69, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 69, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 77, comment: "Historie-UUID"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "sap_customer_no", limit: 50, comment: "SAP-Kunde"
    t.string "cost_location", limit: 50, comment: "Kostenstelle"
    t.string "distribution_channel", limit: 40, comment: "Vertriebskanal"
    t.string "vp_no", limit: 20, comment: "Vertriebspartner-Nr"
    t.string "layout", limit: 100, comment: "Excel-Layout"
    t.string "psp_element", comment: "PSP-Element"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "history_user_uuid", limit: 58, comment: "Historie-Benutzer"
    t.string "original_uuid", limit: 69, comment: "Original-UUID"
    t.string "customer_group_uuid", limit: 68, comment: "Kundengruppe"
    t.string "billing_month", limit: 100, default: "last_month", comment: "Ausgewählter Monat"
    t.boolean "cron_job_active", default: false, comment: "Automation aktiv?"
    t.date "last_execution_date", comment: "Letzte Ausführung"
    t.date "first_execution_date", comment: "Erste Ausführung"
    t.string "regular_circle", limit: 100, default: "monatlich", comment: "Turnus"
    t.string "billing_area", limit: 100, default: "1 Monat", comment: "Abrechnungsbereich"
    t.boolean "create_excel", default: false, comment: "Excel mit erzeugen"
    t.boolean "create_wba", default: false, comment: "WBA mit erzeugen"
    t.string "street", limit: 100, comment: "Straße"
    t.string "house_number", limit: 10, comment: "Hausnummer"
    t.string "zip_code", limit: 22, comment: "Postleitzahl"
    t.string "location", limit: 40, comment: "Ort"
    t.string "contact_first_name", limit: 30, comment: "Auftraggeber Vorname"
    t.string "contact_last_name", limit: 30, comment: "Auftraggeber Name"
    t.boolean "create_pdf", default: false, comment: "PDF mit erzeugen"
    t.string "layout_pdf", limit: 100, comment: "PDF-Layout"
    t.string "contact_mail", limit: 100, comment: "Auftraggeber Mail"
    t.string "contact_phone", limit: 20, comment: "Auftraggeber Telefonnr."
    t.string "contact_fax", limit: 20, comment: "Auftraggeber Fax"
    t.string "wba_no", limit: 150, comment: "WBA-Nummer"
    t.boolean "enable_wba_duplicate_check", default: true, comment: "WBA-Duplikatscheck?"
    t.string "wba_filter", limit: 50, default: "all", comment: "WBA-Filter"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.string "country", limit: 50, default: "Germany", comment: "Land"
    t.integer "approver_id", comment: "Genehmiger"
    t.string "approver_uuid", limit: 58, comment: "Genehmiger"
    t.date "execute_date", comment: "Zuletzt ausgeführt am"
    t.boolean "send_to_billing_system", default: false, comment: "Direkt an Billing senden"
    t.boolean "send_customer_bill_to_printer", default: false, comment: "Direkt an Drucker senden"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.integer "processor_id", comment: "Bearbeiter"
    t.string "processor_uuid", limit: 58, comment: "Bearbeiter"
    t.string "vat_no", limit: 50, comment: "UST-IdNr"
    t.string "iban", limit: 100, comment: "IBAN"
    t.string "creditor_identifier", limit: 100, comment: "Gläubiger-Ident"
    t.string "time_for_payment", limit: 20, comment: "Zahlungsziel"
    t.boolean "sepa_active", default: false, comment: "SEPA-Aktiv"
    t.string "sepa_mandant_no", limit: 100, comment: "SEPA-Mandant"
    t.string "country_code", limit: 5, default: "DE", comment: "Länderabkürzung"
    t.string "language", limit: 100, default: "german", comment: "Sprache"
    t.string "sap_tax_code", limit: 20, default: "A8", comment: "Steuerkennzeichen"
    t.decimal "tax_rate", precision: 10, scale: 2, default: "0.19", comment: "Steuersatz"
    t.text "billing_comment", size: :medium, comment: "Rechnungskommentar"
    t.boolean "create_bill", default: false, comment: "Rechnung mit erzeugen"
    t.string "billing_method", limit: 50, default: "daily_calculation_method", comment: "Berechnungsmethode"
    t.boolean "send_customer_bill_as_e_mail", default: false, comment: "Direkt als E-Mail senden"
    t.text "product_type_filter", size: :medium, comment: "Produkttypfilter"
    t.string "billing_system_filter", limit: 100, default: "product", comment: "Direkt-Billing-Filter"
    t.string "customer_bill_filter", limit: 100, default: "product", comment: "Kundenrechnung-Filter"
    t.string "url", limit: 100, comment: "URL"
    t.boolean "qr_code_active", default: false, comment: "QR-Code-Aktiv"
    t.boolean "enable_billing_system_duplicate_check", default: true, comment: "Billing-Duplikatscheck?"
    t.boolean "is_eu", default: false, comment: "Ist EU-Ausland?"
    t.text "billing_text_prefix", size: :medium, comment: "Rechnungstextanfang"
    t.text "receiver", size: :medium, comment: "zus. Empfängerdaten"
    t.string "invoice_number_range_type", limit: 20, default: "bcc", comment: "Rechn.-Nr.-Kreis-Gruppe"
    t.string "sap_document_type", limit: 20, default: "C2", comment: "Belagart (SAP)"
    t.boolean "enable_print_duplicate_check", default: true, comment: "Druck-Duplikatscheck?"
    t.string "easytel_account_no", limit: 50, comment: "Easytel-Konto"
    t.string "bank_name", limit: 100, comment: "Bank-Name"
    t.string "sender_address", limit: 100, comment: "Absender-Adresse"
    t.string "kapsch_customer_no", limit: 100, comment: "Import-Kundennummer"
    t.boolean "create_x_billing", default: false, comment: "XRechnung erzeugen"
    t.boolean "enable_x_billing_duplicate_check", default: true, comment: "X-Rechnung-Duplikatscheck?"
    t.string "x_billing_filter", limit: 100, default: "all", comment: "X-Rechnung-Filter"
    t.string "x_billing_buyer_reference", limit: 100, comment: "Leitweg-ID"
    t.date "x_billing_valid_to_date", comment: "X-Rechnung Gültig bis"
    t.date "x_billing_valid_from_date", comment: "X-Rechnung Gültig von"
    t.string "x_billing_contact_mail", limit: 150, comment: "X-Rechnung Mail"
    t.string "profit_center_no", limit: 20, comment: "Profitcenter"
    t.string "billing_address_receiver", limit: 1000, comment: "zus. Empfängerdaten (Rechnung)"
    t.string "billing_address_street", limit: 100, comment: "Straße (Rechnung)"
    t.string "billing_address_house_number", limit: 10, comment: "Hausnummer (Rechnung)"
    t.string "billing_address_zip_code", limit: 22, comment: "Postleitzahl (Rechnung)"
    t.string "billing_address_location", limit: 40, comment: "Ort (Rechnung)"
    t.string "billing_address_country", limit: 50, default: "Germany", comment: "Land (Rechnung)"
    t.boolean "check_base_data", default: true, comment: "Stammdatencheck"
    t.string "easytel_account_group", limit: 100, comment: "Easytel-Kontogruppe"
    t.text "x_billing_info", size: :medium, comment: "X-Rechnung-Info"
    t.integer "days_before_sent_to_billing_system", default: 1, comment: "Tage zur internen Prüfung"
    t.string "sap_branch_code", limit: 20, comment: "SAP-Branchcode"
    t.string "layout_customer_bill", limit: 100, comment: "Kd-Rechn-Layout"
    t.string "layout_billing_system", limit: 100, comment: "Direkt-Bill-Layout"
    t.string "layout_x_billing", limit: 100, comment: "X-Rechn-Layout"
    t.string "layout_wba", limit: 100, comment: "WBA-Layout"
    t.integer "number_of_decimal_places", default: 2, comment: "Anzahl von Nachkommastellen"
    t.string "bic", limit: 100, comment: "BIC"
    t.datetime "last_rpa_check_date", precision: nil, comment: "Letzte RPA-Prüfung"
    t.integer "small_sum_approver_id", comment: "WBA-Genehmiger (< 5.000 €)"
    t.string "small_sum_approver_uuid", limit: 58, comment: "WBA-Genehmiger (< 5.000 €)"
    t.string "contact_salutation", limit: 25, comment: "Anrede"
    t.string "send_check_mail_if", limit: 25, default: "all", comment: "Sende Prüf-E-Mail wenn"
    t.string "billing_modulation", limit: 100, comment: "Aussteuerung"
    t.string "alternative_sap_customer_no", limit: 50, comment: "Alternatives Buchungskonto"
    t.string "eecc_text_position", limit: 30, default: "bellow_the_bill_position", comment: "EECC-Text-Position"
    t.boolean "add_excel_as_attachment", default: false, comment: "Excel an Kunden-E-Mail anhängen"
    t.decimal "decimal_general_discount", precision: 10, scale: 2, comment: "Rabatt in %"
    t.string "general_discount_reason", limit: 40, comment: "Grund für den Rabatt"
    t.boolean "enable_extra_rpa_sync", default: false, comment: "Extra-RPA-Sync aktivieren"
    t.text "credit_subject", size: :medium, comment: "Betreff (Gutschrift)"
    t.text "invoice_subject", size: :medium, comment: "Rechnungsbetreff"
    t.string "dynamics_company_no", limit: 50, comment: "365-Firma"
    t.string "contact_mobile_phone", limit: 30, comment: "Auftraggeber Mobil."
    t.string "contact_role", limit: 50, comment: "Rolle"
    t.boolean "easytel_contracts_active", default: true, comment: "Easytelverträge aktiv?"
    t.text "easytel_aiw_comment", size: :medium, comment: "Easytel-AIW-Kommentar"
    t.boolean "abort_if_rebranding_is_suspected", default: false, comment: "Abruch bei Umfirmierungsverdeacht"
    t.boolean "add_pdf_as_attachment", default: false, comment: "PDF an Kunden-E-Mail anhängen"
    t.index ["creator_id"], name: "fk_rails_be016e4018"
    t.index ["mandant_id"], name: "fk_rails_d592d2e902"
  end

  create_table "billing_account_join_group_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "billing_account_id"
    t.integer "group_id"
    t.string "billing_account_uuid", limit: 69
    t.string "group_uuid", limit: 59
    t.integer "history_billing_account_id"
    t.integer "history_group_id"
    t.string "history_billing_account_uuid", limit: 150
    t.string "history_group_uuid", limit: 150
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "history_info", size: :long
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 150
    t.string "history_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
  end

  create_table "billing_account_join_groups", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "billing_account_id"
    t.integer "group_id"
    t.string "billing_account_uuid", limit: 69
    t.string "group_uuid", limit: 59
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["uuid"], name: "index_billing_account_join_groups_on_uuid", unique: true
  end

  create_table "billing_account_join_user_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "billing_account_id"
    t.integer "user_id"
    t.string "billing_account_uuid", limit: 69
    t.string "user_uuid", limit: 58
    t.integer "history_billing_account_id"
    t.integer "history_user_id"
    t.string "history_billing_account_uuid", limit: 150
    t.string "history_user_uuid", limit: 58
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "history_info", size: :long
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "original_uuid", limit: 150
    t.string "history_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
  end

  create_table "billing_account_join_users", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "billing_account_id"
    t.integer "user_id"
    t.string "billing_account_uuid", limit: 69
    t.string "user_uuid", limit: 58
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["uuid"], name: "index_billing_account_join_users_on_uuid", unique: true
  end

  create_table "billing_accounts", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant"
    t.integer "parent_id", comment: "Eltern-Element"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.integer "customer_group_id", comment: "Kundengruppe"
    t.boolean "third_market", default: false, comment: "Drittmarkt"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.string "name", limit: 150, comment: "Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "supplier_number", comment: "Lieferantennummer"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 69, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 69, comment: "Eltern-UIID"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "sap_customer_no", limit: 50, comment: "SAP-Kunde"
    t.string "cost_location", limit: 50, comment: "Kostenstelle"
    t.string "distribution_channel", limit: 40, comment: "Vertriebskanal"
    t.string "vp_no", limit: 20, comment: "Vertriebspartner-Nr"
    t.string "layout", limit: 100, comment: "Excel-Layout"
    t.string "psp_element", comment: "PSP-Element"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "customer_group_uuid", limit: 68, comment: "Kundengruppe"
    t.string "billing_month", limit: 100, default: "last_month", comment: "Ausgewählter Monat"
    t.boolean "cron_job_active", default: false, comment: "Automation aktiv?"
    t.date "last_execution_date", comment: "Letzte Ausführung"
    t.date "first_execution_date", comment: "Erste Ausführung"
    t.string "regular_circle", limit: 100, default: "monatlich", comment: "Turnus"
    t.string "billing_area", limit: 100, default: "1 Monat", comment: "Abrechnungsbereich"
    t.boolean "create_excel", default: false, comment: "Excel mit erzeugen"
    t.boolean "create_wba", default: false, comment: "WBA mit erzeugen"
    t.string "street", limit: 100, comment: "Straße"
    t.string "house_number", limit: 10, comment: "Hausnummer"
    t.string "zip_code", limit: 22, comment: "Postleitzahl"
    t.string "location", limit: 40, comment: "Ort"
    t.string "contact_first_name", limit: 30, comment: "Auftraggeber Vorname"
    t.string "contact_last_name", limit: 30, comment: "Auftraggeber Name"
    t.boolean "create_pdf", default: false, comment: "PDF mit erzeugen"
    t.string "layout_pdf", limit: 100, comment: "PDF-Layout"
    t.string "contact_mail", limit: 100, comment: "Auftraggeber Mail"
    t.string "contact_phone", limit: 20, comment: "Auftraggeber Telefonnr."
    t.string "contact_fax", limit: 20, comment: "Auftraggeber Fax"
    t.string "wba_no", limit: 150, comment: "WBA-Nummer"
    t.boolean "enable_wba_duplicate_check", default: true, comment: "WBA-Duplikatscheck?"
    t.string "wba_filter", limit: 50, default: "all", comment: "WBA-Filter"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.string "country", limit: 50, default: "Germany", comment: "Land"
    t.integer "approver_id", comment: "Genehmiger"
    t.string "approver_uuid", limit: 58, comment: "Genehmiger"
    t.date "execute_date", comment: "Zuletzt ausgeführt am"
    t.boolean "send_to_billing_system", default: false, comment: "Direkt an Billing senden"
    t.boolean "send_customer_bill_to_printer", default: false, comment: "Direkt an Drucker senden"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.integer "processor_id", comment: "Bearbeiter"
    t.string "processor_uuid", limit: 58, comment: "Bearbeiter"
    t.string "vat_no", limit: 50, comment: "UST-IdNr"
    t.string "iban", limit: 100, comment: "IBAN"
    t.string "creditor_identifier", limit: 100, comment: "Gläubiger-Ident"
    t.string "time_for_payment", limit: 20, comment: "Zahlungsziel"
    t.boolean "sepa_active", default: false, comment: "SEPA-Aktiv"
    t.string "sepa_mandant_no", limit: 100, comment: "SEPA-Mandant"
    t.string "country_code", limit: 5, default: "DE", comment: "Länderabkürzung"
    t.string "language", limit: 100, default: "german", comment: "Sprache"
    t.string "sap_tax_code", limit: 20, default: "A8", comment: "Steuerkennzeichen"
    t.decimal "tax_rate", precision: 10, scale: 2, default: "0.19", comment: "Steuersatz"
    t.text "billing_comment", size: :medium, comment: "Rechnungskommentar"
    t.boolean "create_bill", default: false, comment: "Rechnung mit erzeugen"
    t.string "billing_method", limit: 50, default: "daily_calculation_method", comment: "Berechnungsmethode"
    t.boolean "send_customer_bill_as_e_mail", default: false, comment: "Direkt als E-Mail senden"
    t.text "product_type_filter", size: :medium, comment: "Produkttypfilter"
    t.string "billing_system_filter", limit: 100, default: "product", comment: "Direkt-Billing-Filter"
    t.string "customer_bill_filter", limit: 100, default: "product", comment: "Kundenrechnung-Filter"
    t.string "url", limit: 100, comment: "URL"
    t.boolean "qr_code_active", default: false, comment: "QR-Code-Aktiv"
    t.boolean "enable_billing_system_duplicate_check", default: true, comment: "Billing-Duplikatscheck?"
    t.boolean "is_eu", default: false, comment: "Ist EU-Ausland?"
    t.text "billing_text_prefix", size: :medium, comment: "Rechnungstextanfang"
    t.text "receiver", size: :medium, comment: "zus. Empfängerdaten"
    t.string "invoice_number_range_type", limit: 20, default: "bcc", comment: "Rechn.-Nr.-Kreis-Gruppe"
    t.string "sap_document_type", limit: 20, default: "C2", comment: "Belagart (SAP)"
    t.boolean "enable_print_duplicate_check", default: true, comment: "Druck-Duplikatscheck?"
    t.string "easytel_account_no", limit: 50, comment: "Easytel-Konto"
    t.string "bank_name", limit: 100, comment: "Bank-Name"
    t.string "sender_address", limit: 100, comment: "Absender-Adresse"
    t.string "kapsch_customer_no", limit: 100, comment: "Import-Kundennummer"
    t.boolean "create_x_billing", default: false, comment: "XRechnung erzeugen"
    t.boolean "enable_x_billing_duplicate_check", default: true, comment: "X-Rechnung-Duplikatscheck?"
    t.string "x_billing_filter", limit: 100, default: "all", comment: "X-Rechnung-Filter"
    t.string "x_billing_buyer_reference", limit: 100, comment: "Leitweg-ID"
    t.date "x_billing_valid_to_date", comment: "X-Rechnung Gültig bis"
    t.date "x_billing_valid_from_date", comment: "X-Rechnung Gültig von"
    t.string "x_billing_contact_mail", limit: 150, comment: "X-Rechnung Mail"
    t.string "profit_center_no", limit: 20, comment: "Profitcenter"
    t.string "billing_address_receiver", limit: 1000, comment: "zus. Empfängerdaten (Rechnung)"
    t.string "billing_address_street", limit: 100, comment: "Straße (Rechnung)"
    t.string "billing_address_house_number", limit: 10, comment: "Hausnummer (Rechnung)"
    t.string "billing_address_zip_code", limit: 22, comment: "Postleitzahl (Rechnung)"
    t.string "billing_address_location", limit: 40, comment: "Ort (Rechnung)"
    t.string "billing_address_country", limit: 50, default: "Germany", comment: "Land (Rechnung)"
    t.boolean "check_base_data", default: true, comment: "Stammdatencheck"
    t.string "easytel_account_group", limit: 100, comment: "Easytel-Kontogruppe"
    t.text "x_billing_info", size: :medium, comment: "X-Rechnung-Info"
    t.integer "days_before_sent_to_billing_system", default: 1, comment: "Tage zur internen Prüfung"
    t.string "sap_branch_code", limit: 20, comment: "SAP-Branchcode"
    t.string "layout_customer_bill", limit: 100, comment: "Kd-Rechn-Layout"
    t.string "layout_billing_system", limit: 100, comment: "Direkt-Bill-Layout"
    t.string "layout_x_billing", limit: 100, comment: "X-Rechn-Layout"
    t.string "layout_wba", limit: 100, comment: "WBA-Layout"
    t.integer "number_of_decimal_places", default: 2, comment: "Anzahl von Nachkommastellen"
    t.string "bic", limit: 100, comment: "BIC"
    t.datetime "last_rpa_check_date", precision: nil, comment: "Letzte RPA-Prüfung"
    t.integer "small_sum_approver_id", comment: "WBA-Genehmiger (< 5.000 €)"
    t.string "small_sum_approver_uuid", limit: 58, comment: "WBA-Genehmiger (< 5.000 €)"
    t.string "contact_salutation", limit: 25, comment: "Anrede"
    t.string "send_check_mail_if", limit: 25, default: "all", comment: "Sende Prüf-E-Mail wenn"
    t.string "billing_modulation", limit: 100, comment: "Aussteuerung"
    t.string "alternative_sap_customer_no", limit: 50, comment: "Alternatives Buchungskonto"
    t.string "eecc_text_position", limit: 30, default: "bellow_the_bill_position", comment: "EECC-Text-Position"
    t.boolean "add_excel_as_attachment", default: false, comment: "Excel an Kunden-E-Mail anhängen"
    t.decimal "decimal_general_discount", precision: 10, scale: 2, comment: "Rabatt in %"
    t.string "general_discount_reason", limit: 40, comment: "Grund für den Rabatt"
    t.boolean "enable_extra_rpa_sync", default: false, comment: "Extra-RPA-Sync aktivieren"
    t.text "credit_subject", size: :medium, comment: "Betreff (Gutschrift)"
    t.text "invoice_subject", size: :medium, comment: "Rechnungsbetreff"
    t.string "dynamics_company_no", limit: 50, comment: "365-Firma"
    t.string "contact_mobile_phone", limit: 30, comment: "Auftraggeber Mobil."
    t.string "contact_role", limit: 50, comment: "Rolle"
    t.boolean "easytel_contracts_active", default: true, comment: "Easytelverträge aktiv?"
    t.text "easytel_aiw_comment", size: :medium, comment: "Easytel-AIW-Kommentar"
    t.boolean "abort_if_rebranding_is_suspected", default: false, comment: "Abruch bei Umfirmierungsverdeacht"
    t.boolean "add_pdf_as_attachment", default: false, comment: "PDF an Kunden-E-Mail anhängen"
    t.index ["creator_id"], name: "fk_rails_18fbf12d79"
    t.index ["f_type"], name: "index_billing_accounts_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_e740588404"
    t.index ["parent_id"], name: "fk_rails_39f4ed7530"
    t.index ["parent_uuid"], name: "fk_rails_968b43a832"
    t.index ["system_type"], name: "index_billing_accounts_on_system_type", length: 2
    t.index ["uuid"], name: "index_billing_accounts_on_uuid", unique: true
  end

  create_table "billing_item_archive_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 74
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", comment: "Marker"
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 74
    t.string "history_uuid", limit: 82
    t.integer "archivist_id", comment: "Archivar"
    t.string "archivist_uuid", limit: 150
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.string "general_ledger_account_no", limit: 100
    t.string "billing_method", limit: 100
    t.string "billing_no"
    t.datetime "billing_date", precision: nil, comment: "Abrechnungsdatum"
    t.string "account_assignment_no", limit: 40
    t.text "product_title", size: :tiny
    t.integer "product_id", comment: "Produkt"
    t.string "product_uuid", limit: 61
    t.text "product_name", size: :tiny
    t.string "country_a", limit: 50
    t.string "country_b", limit: 50
    t.text "billing_system_text", size: :medium
    t.text "external_comment", size: :medium
    t.boolean "billed", default: false, comment: "Abgerechnet"
    t.string "sap_tax_code", limit: 100
    t.decimal "tax_rate", precision: 10, scale: 2, comment: "Steuersatz"
    t.decimal "price_unit", precision: 16, scale: 4
    t.boolean "printed", default: false, comment: "Gedruckt/Versendet"
    t.integer "cancelled_billing_item_id", comment: "abgebrochener Speicherpunkt"
    t.string "cancelled_billing_item_uuid", limit: 150
    t.string "easytel_contract_no", limit: 1000
    t.string "easytel_account_no"
    t.string "kapsch_customer_no", limit: 100
    t.string "kapsch_contract_no", limit: 100
    t.string "x_billing_buyer_reference", limit: 100
    t.date "x_billing_valid_to_date", comment: "X-Rechnung Gültig bis"
    t.date "x_billing_valid_from_date", comment: "X-Rechnung Gültig von"
    t.string "x_billing_contact_mail", limit: 150
    t.string "onkz_a", limit: 5
    t.string "onkz_b", limit: 5
    t.string "reference_product_id", limit: 100
    t.datetime "billed_date", precision: nil, comment: "SAP-Abgerechnetdatum"
    t.datetime "printed_date", precision: nil, comment: "Gedruckt-Datum"
    t.datetime "x_billed_date", precision: nil, comment: "X-Abgerechnetdatum"
    t.string "billing_type", limit: 100
    t.string "reference_inventory_id", limit: 100
    t.string "reference_inventory_uuid", limit: 150
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_ratiodata_premium", precision: 16, scale: 4
    t.decimal "price_periodical_partial", precision: 16, scale: 4
    t.decimal "price_periodical_partial_discount", precision: 16, scale: 4
    t.decimal "price_cug", precision: 16, scale: 4
    t.decimal "price_discount", precision: 16, scale: 4
    t.decimal "price_one_time_sum", precision: 16, scale: 4
    t.decimal "price_instalment_payment", precision: 16, scale: 4
    t.decimal "price_sum", precision: 16, scale: 4
    t.decimal "price_cug_a", precision: 16, scale: 4
    t.decimal "price_cug_b", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.decimal "price_periodical_service", precision: 16, scale: 4
    t.decimal "price_one_time_service", precision: 16, scale: 4
    t.decimal "price_remnant_costs", precision: 16, scale: 4
    t.boolean "x_billed", default: false, comment: "XRechnung abgerechnet"
    t.integer "main_billing_item_id", comment: "Hauptspeicherpunkt"
    t.string "main_billing_item_uuid", limit: 150
    t.string "billing_system", limit: 50
    t.string "product_class_structure", limit: 100
    t.string "cost_location", comment: "Kostenstelle"
    t.datetime "e_mail_sent_date", precision: nil, comment: "E-Mail-Versanddatum"
    t.boolean "e_mail_sent", default: false, comment: "E-Mail gesendet"
    t.boolean "exact_day_calculation", default: false, comment: "Taggenaue Berechnung"
    t.integer "customer_with_calculation", comment: "Kunden mit Berechnung"
    t.integer "day_from", comment: "Tag von"
    t.integer "day_to", comment: "Tag bis"
    t.date "to_date", comment: "Datum bis"
    t.date "from_date", comment: "Datum von"
    t.integer "day_diff", comment: "Tag Differenz"
    t.string "reference_billing_uuid", limit: 150
    t.date "billing_beginning_date", comment: "Tag der ersten Abrechnung"
    t.date "notice_date", comment: "Kuendigungsdatum"
    t.date "completion_date", comment: "Fertigstellung"
    t.text "sp_no", size: :tiny
    t.text "at_reference", size: :tiny
    t.string "institute_name_a", limit: 75
    t.text "address_a", size: :tiny
    t.string "zip_code_a", limit: 22, comment: "PLZ A"
    t.text "location_a", size: :tiny
    t.text "address_b", size: :tiny
    t.text "min_hire_time", size: :tiny
    t.text "bandwidth", size: :tiny
    t.text "interface", size: :tiny
    t.text "customer_order_no", size: :tiny, comment: "Auftrag"
    t.integer "customer_id", comment: "Kunde"
    t.integer "provider_id", comment: "Provider"
    t.string "product_type", limit: 50
    t.integer "billing_account_id", comment: "Abrechnungskonto"
    t.string "material_no", limit: 30
    t.string "material_group_no", limit: 50
    t.string "psp_element", limit: 50
    t.text "leased_line_no", size: :tiny
    t.text "hierachy_name", size: :tiny
    t.string "institute_name_b", limit: 80
    t.string "zip_code_b", limit: 22
    t.string "location_b", limit: 40
    t.string "connection_type", limit: 50
    t.string "sla", limit: 25
    t.text "sum_detail", size: :medium
    t.integer "quantity", comment: "Menge"
    t.decimal "decimal_quantity", precision: 10, scale: 2, comment: "Menge"
    t.boolean "ifn", default: false, comment: "IFN"
    t.string "customer_uuid", limit: 62
    t.string "billing_account_uuid", limit: 69
    t.text "extra_fields", size: :medium
    t.datetime "archived_at", precision: nil, comment: "Archiviert am"
    t.boolean "ignored", default: false, comment: "Ignoriert"
    t.text "inventory_id_filter", size: :medium, comment: "Bestandfilter"
    t.text "billing_text_prefix", size: :medium, comment: "Rechnungstextanfang"
    t.string "order_uuid", limit: 59, comment: "Auftrag"
    t.integer "order_id", comment: "Auftrag"
    t.string "product_sub_type", limit: 30, default: "-", comment: "Produkt-Subtyp"
    t.string "basic_plattform_name", limit: 50, comment: "Basisplattform"
    t.integer "sla_item_id", comment: "SLA"
    t.string "sla_item_uuid", limit: 62, comment: "SLA"
    t.decimal "price_periodical_service_partial", precision: 16, scale: 4, default: "0.0", comment: "Preis monatlich DL anteilig"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
  end

  create_table "billing_item_archives", id: { type: :bigint, comment: "ID", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 74
    t.integer "mandant_id", comment: "Mandant-ID"
    t.bigint "parent_id", comment: "Eltern-Element", unsigned: true
    t.string "parent_uuid", limit: 74
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", comment: "Marker"
    t.string "name", limit: 1000
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_ratiodata_premium", precision: 16, scale: 4
    t.decimal "price_periodical_partial", precision: 16, scale: 4
    t.decimal "price_periodical_partial_discount", precision: 16, scale: 4
    t.decimal "price_cug", precision: 16, scale: 4
    t.decimal "price_discount", precision: 16, scale: 4
    t.decimal "price_one_time_sum", precision: 16, scale: 4
    t.decimal "price_instalment_payment", precision: 16, scale: 4
    t.decimal "price_sum", precision: 16, scale: 4
    t.integer "customer_with_calculation", comment: "Kunden mit Berechnung"
    t.boolean "exact_day_calculation", default: false, comment: "Taggenau"
    t.integer "day_from", comment: "Tag von"
    t.integer "day_to", comment: "Tag bis"
    t.date "to_date", comment: "Datum bis"
    t.date "from_date", comment: "Datum von"
    t.decimal "price_cug_a", precision: 16, scale: 4
    t.decimal "price_cug_b", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.integer "day_diff", comment: "Tag Differenz"
    t.float "reference_version", limit: 53, default: 0.0
    t.string "reference_billing_uuid", limit: 150
    t.date "billing_beginning_date", comment: "Tag der ersten Abrechnung"
    t.date "notice_date", comment: "Kuendigungsdatum"
    t.date "completion_date", comment: "Fertigstellung"
    t.text "sp_no", size: :tiny
    t.string "easytel_contract_no", limit: 1000
    t.text "at_reference", size: :tiny
    t.string "institute_name_a", limit: 75
    t.text "address_a", size: :tiny
    t.string "zip_code_a", limit: 22, comment: "PLZ A"
    t.text "location_a", size: :tiny
    t.text "address_b", size: :tiny
    t.text "min_hire_time", size: :tiny
    t.text "bandwidth", size: :tiny
    t.text "interface", size: :tiny
    t.text "product_name", size: :tiny
    t.text "customer_order_no", size: :tiny, comment: "Auftrag"
    t.integer "customer_id", comment: "Kunde"
    t.integer "provider_id", comment: "Provider"
    t.string "product_type", limit: 50
    t.integer "billing_account_id", comment: "Abrechnungskonto"
    t.string "material_no", limit: 30
    t.integer "product_id", comment: "Produkt"
    t.string "material_group_no", limit: 50
    t.string "psp_element"
    t.text "leased_line_no", size: :tiny
    t.string "easytel_account_no"
    t.string "institute_name_b", limit: 80
    t.string "zip_code_b", limit: 22
    t.string "location_b", limit: 40
    t.string "connection_type", limit: 50
    t.string "sla", limit: 25
    t.text "sum_detail", size: :medium
    t.integer "quantity", comment: "Menge"
    t.decimal "price_periodical_service", precision: 16, scale: 4
    t.decimal "price_one_time_service", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, comment: "Menge"
    t.boolean "ifn", default: false, comment: "IFN"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "customer_uuid", limit: 62
    t.string "billing_account_uuid", limit: 69
    t.string "product_uuid", limit: 61
    t.text "extra_fields", size: :medium
    t.decimal "price_remnant_costs", precision: 16, scale: 4
    t.text "hierachy_name"
    t.datetime "archived_at", precision: nil, comment: "Archiviert am"
    t.integer "archivist_id", comment: "Archivar"
    t.string "archivist_uuid", limit: 150
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.string "general_ledger_account_no", limit: 100
    t.string "billing_method", limit: 100
    t.string "billing_no"
    t.datetime "billing_date", precision: nil, comment: "Abrechnungsdatum"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.string "account_assignment_no", limit: 40
    t.text "product_title", size: :tiny
    t.string "country_a", limit: 50
    t.string "country_b", limit: 50
    t.text "billing_system_text", size: :medium
    t.text "external_comment", size: :medium
    t.boolean "billed", default: false, comment: "Abgerechnet"
    t.string "sap_tax_code", limit: 100
    t.decimal "tax_rate", precision: 10, scale: 2, comment: "Steuersatz"
    t.decimal "price_unit", precision: 16, scale: 4
    t.boolean "printed", default: false, comment: "Gedruckt/Versendet"
    t.integer "cancelled_billing_item_id", comment: "abgebrochener Speicherpunkt"
    t.string "cancelled_billing_item_uuid", limit: 150
    t.string "kapsch_customer_no", limit: 100
    t.string "kapsch_contract_no", limit: 100
    t.string "x_billing_buyer_reference", limit: 100
    t.date "x_billing_valid_to_date", comment: "X-Rechnung Gültig bis"
    t.date "x_billing_valid_from_date", comment: "X-Rechnung Gültig von"
    t.string "x_billing_contact_mail", limit: 150
    t.string "onkz_a", limit: 5
    t.string "onkz_b", limit: 5
    t.string "reference_product_id", limit: 100
    t.datetime "billed_date", precision: nil, comment: "SAP-Abgerechnetdatum"
    t.datetime "printed_date", precision: nil, comment: "Gedruckt-Datum"
    t.datetime "x_billed_date", precision: nil, comment: "X-Abgerechnetdatum"
    t.string "billing_type", limit: 100
    t.string "reference_inventory_id", limit: 100
    t.string "reference_inventory_uuid", limit: 150
    t.boolean "x_billed", default: false, comment: "XRechnung abgerechnet"
    t.bigint "main_billing_item_id", comment: "Hauptspeicherpunkt", unsigned: true
    t.string "main_billing_item_uuid", limit: 150
    t.string "billing_system", limit: 50
    t.string "product_class_structure", limit: 100
    t.string "cost_location", comment: "Kostenstelle"
    t.datetime "e_mail_sent_date", precision: nil, comment: "E-Mail-Versanddatum"
    t.boolean "e_mail_sent", default: false, comment: "E-Mail gesendet"
    t.boolean "ignored", default: false, comment: "Ignoriert"
    t.text "inventory_id_filter", size: :medium, comment: "Bestandfilter"
    t.text "billing_text_prefix", size: :medium, comment: "Rechnungstextanfang"
    t.string "order_uuid", limit: 59, comment: "Auftrag"
    t.integer "order_id", comment: "Auftrag"
    t.string "product_sub_type", limit: 30, default: "-", comment: "Produkt-Subtyp"
    t.string "basic_plattform_name", limit: 50, comment: "Basisplattform"
    t.integer "sla_item_id", comment: "SLA"
    t.string "sla_item_uuid", limit: 62, comment: "SLA"
    t.decimal "price_periodical_service_partial", precision: 16, scale: 4, default: "0.0", comment: "Preis monatlich DL anteilig"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["f_type"], name: "index_billing_item_archives_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_bi_archive_parent_id"
    t.index ["parent_uuid"], name: "fk_rails_aa6b855f5d"
    t.index ["system_type"], name: "index_billing_item_archives_on_system_type", length: 2
    t.index ["uuid"], name: "index_billing_item_archives_on_uuid", unique: true
  end

  create_table "billing_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 66
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.string "tags", limit: 4000, comment: "Marker"
    t.string "name", limit: 1000
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.bigint "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 74
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_ratiodata_premium", precision: 16, scale: 4
    t.decimal "price_periodical_partial", precision: 16, scale: 4
    t.decimal "price_periodical_partial_discount", precision: 16, scale: 4
    t.decimal "price_cug", precision: 16, scale: 4
    t.decimal "price_discount", precision: 16, scale: 4
    t.decimal "price_one_time_sum", precision: 16, scale: 4
    t.decimal "price_instalment_payment", precision: 16, scale: 4
    t.decimal "price_sum", precision: 16, scale: 4
    t.integer "customer_with_calculation", comment: "Kunden mit Berechnung"
    t.boolean "exact_day_calculation", default: false, comment: "Taggenau"
    t.integer "day_from", comment: "Tag von"
    t.integer "day_to", comment: "Tag bis"
    t.date "to_date", comment: "Datum bis"
    t.date "from_date", comment: "Datum von"
    t.decimal "price_cug_a", precision: 16, scale: 4
    t.decimal "price_cug_b", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.integer "day_diff", comment: "Tag Differenz"
    t.float "reference_version", limit: 53, default: 0.0
    t.string "reference_billing_uuid", limit: 150
    t.date "billing_beginning_date", comment: "Tag der ersten Abrechnung"
    t.date "notice_date", comment: "Kuendigungsdatum"
    t.date "completion_date", comment: "Fertigstellung"
    t.text "sp_no", size: :tiny
    t.string "easytel_contract_no", limit: 1000
    t.text "at_reference", size: :tiny
    t.string "institute_name_a", limit: 75
    t.text "address_a", size: :tiny
    t.string "zip_code_a", limit: 22, comment: "PLZ A"
    t.text "location_a", size: :tiny
    t.text "address_b", size: :tiny
    t.text "min_hire_time", size: :tiny
    t.text "bandwidth", size: :tiny
    t.text "interface", size: :tiny
    t.text "product_name", size: :tiny
    t.text "customer_order_no", size: :tiny, comment: "Auftrag"
    t.integer "customer_id", comment: "Kunde"
    t.integer "provider_id", comment: "Provider"
    t.string "product_type", limit: 50
    t.integer "billing_account_id", comment: "Abrechnungskonto"
    t.string "material_no"
    t.integer "product_id", comment: "Produkt"
    t.string "material_group_no", limit: 100
    t.string "psp_element"
    t.string "leased_line_no", limit: 50
    t.string "easytel_account_no"
    t.string "institute_name_b", limit: 50
    t.string "zip_code_b", limit: 22, comment: "PLZ B"
    t.string "location_b", limit: 50
    t.integer "connection_type", comment: "OSPN-Anschlusstyp"
    t.integer "sla", comment: "SLA"
    t.text "sum_detail", size: :medium
    t.integer "quantity", comment: "Menge"
    t.decimal "price_periodical_service", precision: 16, scale: 4
    t.decimal "price_one_time_service", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, comment: "Menge"
    t.boolean "ifn", default: false, comment: "IFN"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 66
    t.string "customer_uuid", limit: 62
    t.string "billing_account_uuid", limit: 69
    t.string "product_uuid", limit: 61
    t.text "extra_fields", size: :medium
    t.decimal "price_remnant_costs", precision: 16, scale: 4
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.text "hierachy_name"
    t.integer "archivist_id", comment: "Archivar"
    t.string "archivist_uuid", limit: 150
    t.datetime "archived_at", precision: nil, comment: "Archiviert am"
    t.string "general_ledger_account_no", limit: 100
    t.datetime "billing_date", precision: nil, comment: "Abrechnungsdatum"
    t.string "billing_no"
    t.string "billing_method", limit: 100
    t.string "country_a", limit: 50
    t.string "country_b", limit: 50
    t.string "account_assignment_no", limit: 40
    t.text "product_title", size: :tiny
    t.text "billing_system_text", size: :medium
    t.text "external_comment", size: :medium
    t.boolean "billed", default: false, comment: "Abgerechnet"
    t.string "sap_tax_code", limit: 100
    t.decimal "tax_rate", precision: 10, scale: 2, comment: "Steuersatz"
    t.decimal "price_unit", precision: 16, scale: 4
    t.boolean "printed", default: false, comment: "Gedruckt/Versendet"
    t.integer "cancelled_billing_item_id", comment: "abgebrochener Speicherpunkt"
    t.string "cancelled_billing_item_uuid", limit: 150
    t.string "kapsch_customer_no", limit: 100
    t.string "kapsch_contract_no", limit: 100
    t.string "x_billing_buyer_reference", limit: 100
    t.date "x_billing_valid_to_date", comment: "X-Rechnung Gültig bis"
    t.date "x_billing_valid_from_date", comment: "X-Rechnung Gültig von"
    t.string "x_billing_contact_mail", limit: 150
    t.string "onkz_a", limit: 5
    t.string "onkz_b", limit: 5
    t.string "reference_product_id", limit: 100
    t.string "billing_type", limit: 100
    t.datetime "billed_date", precision: nil, comment: "SAP-Abgerechnetdatum"
    t.datetime "x_billed_date", precision: nil, comment: "X-Abgerechnetdatum"
    t.datetime "printed_date", precision: nil, comment: "Gedruckt-Datum"
    t.string "reference_inventory_id", limit: 100
    t.string "reference_inventory_uuid", limit: 150
    t.boolean "x_billed", default: false, comment: "XRechnung abgerechnet"
    t.integer "main_billing_item_id", comment: "Hauptspeicherpunkt"
    t.string "main_billing_item_uuid", limit: 150
    t.string "billing_system", limit: 50
    t.string "product_class_structure", limit: 100
    t.string "cost_location", comment: "Kostenstelle"
    t.boolean "e_mail_sent", default: false, comment: "E-Mail gesendet"
    t.datetime "e_mail_sent_date", precision: nil, comment: "E-Mail-Versanddatum"
    t.boolean "ignored", default: false, comment: "Ignoriert"
    t.text "inventory_id_filter", size: :medium, comment: "Bestandfilter"
    t.text "billing_text_prefix", size: :tiny, comment: "Rechnungstextanfang"
    t.string "order_uuid", limit: 59, comment: "Auftrag"
    t.integer "order_id", comment: "Auftrag"
    t.string "product_sub_type", limit: 30, default: "-", comment: "Unterruppe"
    t.string "basic_plattform_name", limit: 50, comment: "Basisplattform"
    t.integer "sla_item_id", comment: "SLA"
    t.string "sla_item_uuid", limit: 62, comment: "SLA"
    t.decimal "price_periodical_service_partial", precision: 16, scale: 4, default: "0.0", comment: "Preis monatlich DL anteilig"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["billing_account_id"], name: "fk_rails_5453b579f0"
    t.index ["creator_id"], name: "fk_rails_03582c9905"
    t.index ["mandant_id"], name: "fk_rails_fb6a0cd68d"
    t.index ["product_id"], name: "fk_rails_76392cd60d"
  end

  create_table "billing_items", id: { type: :bigint, comment: "ID", unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 66
    t.integer "mandant_id", comment: "Mandant-ID"
    t.bigint "parent_id", comment: "Eltern-Element", unsigned: true
    t.string "parent_uuid", limit: 66
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.string "tags", limit: 4000, comment: "Marker"
    t.string "name", limit: 1000
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_ratiodata_premium", precision: 16, scale: 4
    t.decimal "price_periodical_partial", precision: 16, scale: 4
    t.decimal "price_periodical_partial_discount", precision: 16, scale: 4
    t.decimal "price_cug", precision: 16, scale: 4
    t.decimal "price_discount", precision: 16, scale: 4
    t.decimal "price_one_time_sum", precision: 16, scale: 4
    t.decimal "price_instalment_payment", precision: 16, scale: 4
    t.decimal "price_sum", precision: 16, scale: 4
    t.integer "customer_with_calculation", comment: "Kunden mit Berechnung"
    t.boolean "exact_day_calculation", default: false, comment: "Taggenau"
    t.integer "day_from", comment: "Tag von"
    t.integer "day_to", comment: "Tag bis"
    t.date "to_date", comment: "Datum bis"
    t.date "from_date", comment: "Datum von"
    t.decimal "price_cug_a", precision: 16, scale: 4
    t.decimal "price_cug_b", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.integer "day_diff", comment: "Tag Differenz"
    t.float "reference_version", limit: 53, default: 0.0
    t.string "reference_billing_uuid", limit: 150
    t.date "billing_beginning_date", comment: "Tag der ersten Abrechnung"
    t.date "notice_date", comment: "Kuendigungsdatum"
    t.date "completion_date", comment: "Fertigstellung"
    t.text "sp_no", size: :tiny
    t.string "easytel_contract_no", limit: 1000
    t.text "at_reference", size: :tiny
    t.string "institute_name_a", limit: 75
    t.text "address_a", size: :tiny
    t.string "zip_code_a", limit: 22, comment: "PLZ A"
    t.text "location_a", size: :tiny
    t.text "address_b", size: :tiny
    t.text "min_hire_time", size: :tiny
    t.text "bandwidth", size: :tiny
    t.text "interface", size: :tiny
    t.text "product_name", size: :tiny
    t.text "customer_order_no", size: :tiny, comment: "Auftrag"
    t.integer "customer_id", comment: "Kunde"
    t.integer "provider_id", comment: "Provider"
    t.string "product_type", limit: 50
    t.integer "billing_account_id", comment: "Abrechnungskonto"
    t.string "material_no"
    t.integer "product_id", comment: "Produkt"
    t.string "material_group_no", limit: 100
    t.string "psp_element"
    t.string "leased_line_no", limit: 50
    t.string "easytel_account_no"
    t.string "institute_name_b", limit: 50
    t.string "zip_code_b", limit: 22, comment: "PLZ B"
    t.string "location_b", limit: 50
    t.integer "connection_type", comment: "OSPN-Anschlusstyp"
    t.integer "sla", comment: "SLA"
    t.text "sum_detail", size: :medium
    t.integer "quantity", comment: "Menge"
    t.decimal "price_periodical_service", precision: 16, scale: 4
    t.decimal "price_one_time_service", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, comment: "Menge"
    t.boolean "ifn", default: false, comment: "IFN"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "customer_uuid", limit: 62
    t.string "billing_account_uuid", limit: 69
    t.string "product_uuid", limit: 61
    t.text "extra_fields", size: :medium
    t.decimal "price_remnant_costs", precision: 16, scale: 4
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.text "hierachy_name"
    t.integer "archivist_id", comment: "Archivar"
    t.string "archivist_uuid", limit: 150
    t.datetime "archived_at", precision: nil, comment: "Archiviert am"
    t.string "general_ledger_account_no", limit: 100
    t.datetime "billing_date", precision: nil, comment: "Abrechnungsdatum"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.string "billing_no"
    t.string "billing_method", limit: 100
    t.string "country_a", limit: 50
    t.string "country_b", limit: 50
    t.string "account_assignment_no", limit: 40
    t.text "product_title", size: :tiny
    t.text "billing_system_text", size: :medium
    t.text "external_comment", size: :medium
    t.boolean "billed", default: false, comment: "Abgerechnet"
    t.string "sap_tax_code", limit: 100
    t.decimal "tax_rate", precision: 10, scale: 2, comment: "Steuersatz"
    t.decimal "price_unit", precision: 16, scale: 4
    t.boolean "printed", default: false, comment: "Gedruckt/Versendet"
    t.integer "cancelled_billing_item_id", comment: "abgebrochener Speicherpunkt"
    t.string "cancelled_billing_item_uuid", limit: 150
    t.string "kapsch_customer_no", limit: 100
    t.string "kapsch_contract_no", limit: 100
    t.string "x_billing_buyer_reference", limit: 100
    t.date "x_billing_valid_to_date", comment: "X-Rechnung Gültig bis"
    t.date "x_billing_valid_from_date", comment: "X-Rechnung Gültig von"
    t.string "x_billing_contact_mail", limit: 150
    t.string "onkz_a", limit: 5
    t.string "onkz_b", limit: 5
    t.string "reference_product_id", limit: 100
    t.string "billing_type", limit: 100
    t.datetime "billed_date", precision: nil, comment: "SAP-Abgerechnetdatum"
    t.datetime "x_billed_date", precision: nil, comment: "X-Abgerechnetdatum"
    t.datetime "printed_date", precision: nil, comment: "Gedruckt-Datum"
    t.string "reference_inventory_id", limit: 100
    t.string "reference_inventory_uuid", limit: 150
    t.boolean "x_billed", default: false, comment: "XRechnung abgerechnet"
    t.bigint "main_billing_item_id", comment: "Hauptspeicherpunkt", unsigned: true
    t.string "main_billing_item_uuid", limit: 150
    t.string "billing_system", limit: 50
    t.string "product_class_structure", limit: 100
    t.string "cost_location", comment: "Kostenstelle"
    t.boolean "e_mail_sent", default: false, comment: "E-Mail gesendet"
    t.datetime "e_mail_sent_date", precision: nil, comment: "E-Mail-Versanddatum"
    t.boolean "ignored", default: false, comment: "Ignoriert"
    t.text "inventory_id_filter", size: :medium, comment: "Bestandfilter"
    t.text "billing_text_prefix", size: :tiny, comment: "Rechnungstextanfang"
    t.string "order_uuid", limit: 59, comment: "Auftrag"
    t.integer "order_id", comment: "Auftrag"
    t.string "product_sub_type", limit: 30, default: "-", comment: "Unterruppe"
    t.string "basic_plattform_name", limit: 50, comment: "Basisplattform"
    t.integer "sla_item_id", comment: "SLA"
    t.string "sla_item_uuid", limit: 62, comment: "SLA"
    t.decimal "price_periodical_service_partial", precision: 16, scale: 4, default: "0.0", comment: "Preis monatlich DL anteilig"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["f_type"], name: "index_billing_items_on_f_type", length: 2
    t.index ["main_billing_item_id"], name: "fk_rails_89cc14d885"
    t.index ["main_billing_item_uuid"], name: "fk_rails_90a1a66198"
    t.index ["mandant_id"], name: "fk_rails_a8fc4334d0"
    t.index ["parent_id"], name: "fk_rails_40d1625d25"
    t.index ["parent_uuid"], name: "fk_rails_e2b10a8cdd"
    t.index ["product_id"], name: "fk_rails_7489b75d79"
    t.index ["reference_uuid"], name: "by_reference_uuid", length: 7
    t.index ["system_type"], name: "index_billing_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_billing_items_on_uuid", unique: true
  end

  create_table "bpm_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 150
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.text "hierachy_name"
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 150
    t.string "history_uuid", limit: 150
    t.text "bpm_code", size: :medium
  end

  create_table "bpm_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 150, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.text "hierachy_name"
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "bpm_code", size: :medium
    t.index ["f_type"], name: "index_bpm_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_abf3613719"
    t.index ["parent_uuid"], name: "fk_rails_8718ff637f"
    t.index ["system_type"], name: "index_bpm_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_bpm_items_on_uuid", unique: true
  end

  create_table "business_profile_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 77, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 71, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "reference_parent_id", comment: "Referenz-Eltern-ID"
    t.string "reference_parent_uuid", limit: 150, comment: "Referenz-Eltern-UUID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 250, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :medium, comment: "Historie-Info"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.string "history_user_uuid", limit: 58, comment: "Historie-Benutzer"
    t.integer "original_id", comment: "Original-ID"
    t.string "original_uuid", limit: 71, comment: "Original-ID"
    t.string "history_uuid", limit: 150, comment: "Historie-UUID"
    t.string "history_reference_model", comment: "Historie-Referenz-Model"
    t.integer "history_reference_id", comment: "Historie-Referenz"
    t.string "history_reference_uuid", limit: 100, comment: "Historie-Referenz"
    t.integer "javascript_placeholder", comment: "javascript_placeholder"
    t.string "equipment_name", limit: 100, comment: "Anlagenname"
    t.text "prev_equipment_name", size: :medium, comment: "Vorherige Anlagennamen"
    t.string "technical_contact_person", limit: 100, comment: "Technische Kontaktperson"
    t.string "technical_contact_person_e_mail", limit: 100, comment: "E-Mail"
    t.string "technical_contact_person_phone", limit: 100, comment: "Telefonnummer"
    t.string "technical_contact_person_mobile_phone", limit: 100, comment: "Mobil"
    t.text "order_validly_persons", size: :medium, comment: "Bestellberechtigte"
    t.integer "customer_id", comment: "Kunde"
    t.string "customer_uuid", limit: 72, comment: "Kunde"
    t.string "equipment_type", limit: 72, comment: "Gerätetyp"
    t.string "config_restriction", limit: 72, comment: "Konfigurationseinschränkungen"
    t.text "config_restriction_comment", size: :tiny, comment: "Konfigurationseinschränkungen Kommentar"
    t.text "interfaces_comment", size: :tiny, comment: "Kommentar"
    t.text "software_in_usage", size: :medium, comment: "Software"
    t.string "general_company", limit: 100, comment: "Generalunternehmung"
    t.text "interfaces_in_usage", size: :medium, comment: "Schnittstellen in Nutzung"
    t.string "login_pattern", limit: 100, comment: "Benutzerkennung"
    t.boolean "is_cloud_designer", default: false, comment: "Cloud Designer"
    t.text "devices", size: :medium, comment: "Endgeräte"
    t.string "sip_trunks", limit: 100, comment: "FremdSiptrunks"
    t.text "specialities_comment", size: :medium, comment: "Besonderheiten"
    t.string "business_location", limit: 100, comment: "Standort"
    t.text "url", size: :medium, comment: "Link"
    t.string "inform_person", limit: 100, comment: "Zu informieren"
    t.text "devices_comment", size: :medium, comment: "Kommentar"
    t.text "ewe_tel_supply", size: :medium, comment: "Zulieferungen der EWETEL"
    t.boolean "is_cloud_designer_customer", default: false, comment: "Cloud Designer Kunde"
    t.index ["original_id"], name: "index_business_profile_histories_on_original_id"
    t.index ["parent_uuid"], name: "fk_rails_6787891477"
    t.index ["uuid", "version"], name: "index_business_profile_histories_on_uuid_and_version"
  end

  create_table "business_profiles", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 71, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 71, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "reference_parent_id", comment: "Referenz-Eltern-ID"
    t.string "reference_parent_uuid", limit: 150, comment: "Referenz-Eltern-UUID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 250, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "technical_contact_person", limit: 100, comment: "Technische Kontaktperson"
    t.string "technical_contact_person_e_mail", limit: 100, comment: "E-Mail"
    t.string "technical_contact_person_phone", limit: 100, comment: "Telefonnummer"
    t.string "technical_contact_person_mobile_phone", limit: 100, comment: "Mobil"
    t.text "order_validly_persons", size: :medium, comment: "Bestellberechtigte"
    t.integer "customer_id", comment: "Kunde"
    t.string "customer_uuid", limit: 72, comment: "Kunde"
    t.string "equipment_type", limit: 72, comment: "Gerätetyp"
    t.string "config_restriction", limit: 72, comment: "Konfigurationseinschränkungen"
    t.text "config_restriction_comment", size: :tiny, comment: "Konfigurationseinschränkungen Kommentar"
    t.text "interfaces_comment", size: :tiny, comment: "Kommentar"
    t.text "software_in_usage", size: :medium, comment: "Software"
    t.string "equipment_name", limit: 100, comment: "Anlagenname"
    t.text "prev_equipment_name", size: :medium, comment: "Vorherige Anlagennamen"
    t.string "general_company", limit: 100, comment: "Generalunternehmung"
    t.text "interfaces_in_usage", size: :medium, comment: "Schnittstellen in Nutzung"
    t.string "login_pattern", limit: 100, comment: "Benutzerkennung"
    t.boolean "is_cloud_designer", default: false, comment: "Cloud Designer"
    t.text "devices", size: :medium, comment: "Endgeräte"
    t.string "sip_trunks", limit: 100, comment: "FremdSiptrunks"
    t.text "specialities_comment", size: :medium, comment: "Besonderheiten"
    t.string "business_location", limit: 100, comment: "Standort"
    t.text "url", size: :medium, comment: "Link"
    t.string "inform_person", limit: 100, comment: "Zu informieren"
    t.text "devices_comment", size: :medium, comment: "Kommentar"
    t.text "ewe_tel_supply", size: :medium, comment: "Zulieferungen der EWETEL"
    t.boolean "is_cloud_designer_customer", default: false, comment: "Cloud Designer Kunde"
    t.index ["parent_id"], name: "fk_rails_e3b6308325"
    t.index ["parent_uuid"], name: "fk_rails_d927a54c31"
    t.index ["uuid"], name: "index_business_profiles_on_uuid", unique: true
  end

  create_table "chatroom_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "slug"
    t.integer "user_id"
    t.datetime "last_message", precision: nil
    t.boolean "favorite", default: false
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.string "uuid", limit: 62
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "system_type"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.integer "position", comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.integer "version", comment: "This field contains an integer of the data set version of this data set"
    t.integer "reference_version", comment: "Generic attribute which can contain the version number of the reference data set"
    t.integer "parent_version", comment: "Parent-Version when it was saved"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 70
    t.string "name"
    t.text "description", size: :long
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
  end

  create_table "chatrooms", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title", limit: 1000
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "slug"
    t.integer "user_id"
    t.datetime "last_message", precision: nil
    t.boolean "favorite", default: false
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.string "uuid", limit: 62
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 62
    t.string "system_type"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "name"
    t.text "description", size: :long
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_03ab1cdbdc"
    t.index ["mandant_id"], name: "fk_rails_3aa4c7c7b7"
    t.index ["parent_id"], name: "fk_rails_2df7a7c095"
    t.index ["parent_uuid"], name: "fk_rails_0d8a804f09"
    t.index ["system_type"], name: "index_chatrooms_on_system_type", length: 2
    t.index ["user_id"], name: "fk_rails_84a44bc6da"
    t.index ["uuid"], name: "index_chatrooms_on_uuid", unique: true
  end

  create_table "comment_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 66
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, default: 0.0
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100, default: "user"
    t.string "state", limit: 100, default: "internal"
    t.text "tags", size: :medium
    t.string "name", limit: 1000, comment: "Name"
    t.string "title", limit: 1000, comment: "Titel"
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 66
    t.string "history_uuid", limit: 74
    t.string "data_item_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_6b75434b0f"
    t.index ["mandant_id"], name: "fk_rails_4cd5f4e54c"
  end

  create_table "comment_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 66
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 66
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, default: 0.0
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100, default: "user"
    t.string "state", limit: 100, default: "internal"
    t.text "tags", size: :medium
    t.string "name", limit: 1000, comment: "Name"
    t.string "title", limit: 1000, comment: "Titel"
    t.text "description", size: :medium
    t.string "data_item_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_908958e743"
    t.index ["f_type"], name: "index_comment_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_81f3a5bc21"
    t.index ["parent_id"], name: "fk_rails_fe548e91d2"
    t.index ["parent_uuid"], name: "fk_rails_030c2944b7"
    t.index ["reference_uuid"], name: "index_comment_items_on_reference_uuid", length: 25
    t.index ["system_type"], name: "index_comment_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_comment_items_on_uuid", unique: true
  end

  create_table "crono_jobs", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "job_id", null: false
    t.text "log", size: :long
    t.datetime "last_performed_at", precision: nil
    t.boolean "healthy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_crono_jobs_on_job_id", unique: true
  end

  create_table "customer_group_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.decimal "position", precision: 10, comment: "Position"
    t.text "reference_model", size: :tiny, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.decimal "version", precision: 10, default: "0", comment: "Version"
    t.string "f_type", comment: "Elementtyp"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "state", comment: "state"
    t.text "name", comment: "Name"
    t.text "title", comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "street", limit: 50, comment: "Straße"
    t.string "house_number", limit: 10, comment: "Hausnummer"
    t.string "zip_code", limit: 10, comment: "Postleitzahl"
    t.string "location", limit: 40, comment: "Ort"
    t.boolean "third_market", default: false, comment: "Drittmarkt"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 68, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 76
    t.string "system_type", comment: "Systemtyp"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 68
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.string "country", limit: 50, default: "Germany", comment: "Land"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", comment: "hierachy_name"
    t.string "sender_name", limit: 150, comment: "Absendername"
    t.string "sender_street", limit: 100, comment: "Absender Straße"
    t.string "sender_house_number", limit: 10, comment: "Absender Hausnummer"
    t.string "sender_zip_code", limit: 10, comment: "Absender PLZ"
    t.string "sender_location", limit: 40, comment: "Absender Ort"
    t.string "sender_country", limit: 50, default: "Germany", comment: "Absender Land"
    t.string "sender_country_code", limit: 5, default: "DE", comment: "Länderabkürzung"
    t.string "sender_first_name", limit: 30, comment: "Absender Vorname"
    t.string "sender_last_name", limit: 30, comment: "Absender Nachname"
    t.string "sender_phone", limit: 25, comment: "Absender Telefonnr."
    t.string "sender_fax", limit: 25, comment: "Absender Fax"
    t.string "sender_mail", limit: 100, comment: "Absender Mail"
    t.string "sender_url", limit: 100, comment: "URL"
    t.text "sender_contact", size: :medium, comment: "Absender Kontakt (Deutsch)"
    t.text "sender_contact_international", size: :medium, comment: "Absender Kontakt (Internat.)"
    t.string "sender_service_time", limit: 100, comment: "Absender Servicezeit"
    t.string "sender_service_time_international", limit: 100, comment: "Servicezeit (International)"
    t.string "sender_service_time_eu", limit: 100, comment: "Servicezeit (EU)"
    t.text "sender_contact_eu", size: :medium, comment: "Absender Kontakt (EU)"
    t.text "footer_bank", size: :medium, comment: "Footer Bankdaten (Deutsch)"
    t.text "footer_bank_eu", size: :medium, comment: "Footer Bankdaten (EU)"
    t.text "footer_bank_international", size: :medium, comment: "Footer Bankdaten (Internat.)"
    t.text "footer_description", size: :medium, comment: "Footer Beschreibung"
    t.text "footer_description_eu", size: :medium, comment: "Footer Beschreibung (EU)"
    t.text "footer_description_international", size: :medium, comment: "Footer Beschreibung (Internat.)"
    t.text "footer_description_international_eu", size: :medium, comment: "Footer Beschreibung (EU)"
    t.text "footer_enterprise", size: :medium, comment: "Footer Unternehmen (Deutsch)"
    t.text "footer_enterprise_eu", size: :medium, comment: "Footer Unternehmen (EU)"
    t.text "footer_enterprise_international", size: :medium, comment: "Footer Unternehmen (Internat.)"
    t.text "mail_signature_international", size: :medium, comment: "Signatur (Intern.)"
    t.text "mail_signature", size: :medium, comment: "Signatur"
    t.text "mail_signature_eu", size: :medium, comment: "Signatur (EU)"
    t.boolean "enable_iso_certificate_27001", default: true, comment: "Zertifikat 27001 Aktiv?"
    t.binary "logo_image", size: :medium, comment: "Kundenlogo"
    t.binary "signature_image", size: :medium, comment: "Unterschrift-Logo"
    t.string "signature_text", limit: 100, comment: "Unterschrift-Textformat"
    t.string "iban", limit: 100, comment: "IBAN"
    t.string "bic", limit: 100, comment: "BIC"
    t.string "bank_name", limit: 100, comment: "Bank-Name"
    t.text "footer_separator_text", size: :tiny, comment: "Footer Separator (Deutsch)"
    t.text "footer_separator_text_international", size: :tiny, comment: "Footer Separator (Internat.)"
    t.binary "certificate_image", size: :medium, comment: "Zertifikat"
    t.boolean "certificate_image_compressed", default: false, comment: "Logo komprmiert?"
    t.string "certificate_image_content_type", limit: 250, comment: "Logo-Content-Type"
    t.string "certificate_image_file_name", limit: 250, comment: "Logo-File-Name"
    t.boolean "logo_image_compressed", default: false, comment: "Logo komprmiert?"
    t.string "logo_image_content_type", limit: 250, comment: "Logo-Content-Type"
    t.string "logo_image_file_name", limit: 250, comment: "Logo-File-Name"
    t.boolean "signature_image_compressed", default: false, comment: "Signature_image komprmiert?"
    t.string "signature_image_content_type", limit: 250, comment: "Signature_image-Content-Type"
    t.string "signature_image_file_name", limit: 250, comment: "Signature_image-File-Name"
    t.index ["creator_id"], name: "fk_rails_7131e7565b"
    t.index ["mandant_id"], name: "fk_rails_5b7c32d46d"
  end

  create_table "customer_groups", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.decimal "position", precision: 10, comment: "Position"
    t.text "reference_model", size: :tiny, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.decimal "version", precision: 10, default: "0", comment: "Version"
    t.string "f_type", comment: "Elementtyp"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "state", comment: "state"
    t.text "name", comment: "Name"
    t.text "title", comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "street", limit: 50, comment: "Straße"
    t.string "house_number", limit: 10, comment: "Hausnummer"
    t.string "zip_code", limit: 10, comment: "Postleitzahl"
    t.string "location", limit: 40, comment: "Ort"
    t.boolean "third_market", default: false, comment: "Drittmarkt"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 68
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 68
    t.string "system_type", comment: "Systemtyp"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.string "country", limit: 50, default: "Germany", comment: "Land"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", comment: "hierachy_name"
    t.string "sender_name", limit: 150, comment: "Absendername"
    t.string "sender_street", limit: 100, comment: "Absender Straße"
    t.string "sender_house_number", limit: 10, comment: "Absender Hausnummer"
    t.string "sender_zip_code", limit: 10, comment: "Absender PLZ"
    t.string "sender_location", limit: 40, comment: "Absender Ort"
    t.string "sender_country", limit: 50, default: "Germany", comment: "Absender Land"
    t.string "sender_country_code", limit: 5, default: "DE", comment: "Länderabkürzung"
    t.string "sender_first_name", limit: 30, comment: "Absender Vorname"
    t.string "sender_last_name", limit: 30, comment: "Absender Nachname"
    t.string "sender_phone", limit: 25, comment: "Absender Telefonnr."
    t.string "sender_fax", limit: 25, comment: "Absender Fax"
    t.string "sender_mail", limit: 100, comment: "Absender Mail"
    t.string "sender_url", limit: 100, comment: "URL"
    t.text "sender_contact", size: :medium, comment: "Absender Kontakt (Deutsch)"
    t.text "sender_contact_international", size: :medium, comment: "Absender Kontakt (Internat.)"
    t.string "sender_service_time", limit: 100, comment: "Absender Servicezeit"
    t.string "sender_service_time_international", limit: 100, comment: "Servicezeit (International)"
    t.string "sender_service_time_eu", limit: 100, comment: "Servicezeit (EU)"
    t.text "sender_contact_eu", size: :medium, comment: "Absender Kontakt (EU)"
    t.text "footer_bank", size: :medium, comment: "Footer Bankdaten (Deutsch)"
    t.text "footer_bank_eu", size: :medium, comment: "Footer Bankdaten (EU)"
    t.text "footer_bank_international", size: :medium, comment: "Footer Bankdaten (Internat.)"
    t.text "footer_description", size: :medium, comment: "Footer Beschreibung"
    t.text "footer_description_eu", size: :medium, comment: "Footer Beschreibung (EU)"
    t.text "footer_description_international", size: :medium, comment: "Footer Beschreibung (Internat.)"
    t.text "footer_description_international_eu", size: :medium, comment: "Footer Beschreibung (EU)"
    t.text "footer_enterprise", size: :medium, comment: "Footer Unternehmen (Deutsch)"
    t.text "footer_enterprise_eu", size: :medium, comment: "Footer Unternehmen (EU)"
    t.text "footer_enterprise_international", size: :medium, comment: "Footer Unternehmen (Internat.)"
    t.text "mail_signature_international", size: :medium, comment: "Signatur (Intern.)"
    t.text "mail_signature", size: :medium, comment: "Signatur"
    t.text "mail_signature_eu", size: :medium, comment: "Signatur (EU)"
    t.boolean "enable_iso_certificate_27001", default: true, comment: "Zertifikat 27001 Aktiv?"
    t.binary "logo_image", size: :medium, comment: "Kundenlogo"
    t.binary "signature_image", size: :medium, comment: "Unterschrift-Logo"
    t.string "signature_text", limit: 100, comment: "Unterschrift-Textformat"
    t.string "iban", limit: 100, comment: "IBAN"
    t.string "bic", limit: 100, comment: "BIC"
    t.string "bank_name", limit: 100, comment: "Bank-Name"
    t.text "footer_separator_text", size: :tiny, comment: "Footer Separator (Deutsch)"
    t.text "footer_separator_text_international", size: :tiny, comment: "Footer Separator (Internat.)"
    t.binary "certificate_image", size: :medium, comment: "Zertifikat"
    t.boolean "certificate_image_compressed", default: false, comment: "Logo komprmiert?"
    t.string "certificate_image_content_type", limit: 250, comment: "Logo-Content-Type"
    t.string "certificate_image_file_name", limit: 250, comment: "Logo-File-Name"
    t.boolean "logo_image_compressed", default: false, comment: "Logo komprmiert?"
    t.string "logo_image_content_type", limit: 250, comment: "Logo-Content-Type"
    t.string "logo_image_file_name", limit: 250, comment: "Logo-File-Name"
    t.boolean "signature_image_compressed", default: false, comment: "Signature_image komprmiert?"
    t.string "signature_image_content_type", limit: 250, comment: "Signature_image-Content-Type"
    t.string "signature_image_file_name", limit: 250, comment: "Signature_image-File-Name"
    t.index ["creator_id"], name: "fk_rails_6fb2a4ddc5"
    t.index ["f_type"], name: "index_customer_groups_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_d562a29b00"
    t.index ["parent_id"], name: "fk_rails_a5436c588e"
    t.index ["parent_uuid"], name: "fk_rails_9dbef53dad"
    t.index ["system_type"], name: "index_customer_groups_on_system_type", length: 2
    t.index ["uuid"], name: "index_customer_groups_on_uuid", unique: true
  end

  create_table "customer_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "name", limit: 150, comment: "Interner Name"
    t.string "contact_first_name", limit: 30, comment: "Vorname (AP)"
    t.string "contact_last_name", limit: 40, comment: "Nachname (AP)"
    t.integer "provider", comment: "Auftraggeber"
    t.boolean "ifn", default: false, comment: "IFN"
    t.string "location", limit: 40, comment: "Ort"
    t.string "zip_code", limit: 15, comment: "PLZ"
    t.string "contact_phone", limit: 60
    t.string "fax", limit: 60
    t.string "contact_address", limit: 250
    t.string "business_institute_no", limit: 50, comment: "kaufm. Institut"
    t.string "street", limit: 100, comment: "Strasse Hnr."
    t.string "contact_fax", limit: 60
    t.text "speech_customer", size: :medium, comment: "Sprachkunde"
    t.text "data_customer", size: :medium, comment: "Sprachkunde"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "mandant_id", comment: "Mandant"
    t.string "easytel_account_no", limit: 30, comment: "Easytel-Konto"
    t.string "information"
    t.string "contact_mail"
    t.string "psp_element", comment: "PSP-Element"
    t.integer "billing_account_no", comment: "Abrechnungskonto"
    t.boolean "ewe_vip_flag", default: false, comment: "SLM-Info"
    t.string "sap_customer_no", comment: "SAP-Kunde"
    t.string "technical_institute_no", limit: 50, comment: "techn. Institut"
    t.string "wba_no", limit: 50, comment: "WBA-Nummer"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.integer "original_id"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil
    t.integer "history_user_id"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "billing_account_id", comment: "Will be used to reference to an parent element of the table billing_accounts"
    t.boolean "third_market", default: false, comment: "Drittmarkt"
    t.string "uuid", limit: 62
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 70
    t.string "system_type", comment: "Systemtyp"
    t.integer "parent_id", comment: "Eltern-Element"
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.text "internal_description", size: :medium
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.integer "sis_group_id", comment: "SIS Gruppe"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 62
    t.string "billing_account_uuid", limit: 69
    t.string "sis_group_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "country", limit: 50, default: "Germany"
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "title", limit: 150, comment: "Firmenname"
    t.string "kapsch_customer_no", limit: 50
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "description", size: :medium
    t.integer "processor_id"
    t.string "processor_uuid", limit: 58
    t.string "house_number", limit: 10
    t.string "cost_location", limit: 50, comment: "Kostenstelle"
    t.string "contact_salutation", limit: 25, comment: "Anrede"
    t.string "contact_mobile_phone", limit: 30, comment: "Auftraggeber Mobil."
    t.string "contact_role", limit: 50, comment: "Rolle"
    t.index ["billing_account_id"], name: "fk_rails_9aa546f07d"
    t.index ["creator_id"], name: "fk_rails_78f4516d11"
    t.index ["creator_uuid"], name: "fk_rails_9d419bae53"
    t.index ["mandant_uuid"], name: "fk_rails_9754003ed2"
  end

  create_table "customers", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 150, comment: "Interner Name"
    t.string "contact_first_name", limit: 30, comment: "Vorname (AP)"
    t.string "contact_last_name", limit: 40, comment: "Nachname (AP)"
    t.integer "provider", comment: "Auftraggeber"
    t.boolean "ifn", default: false, comment: "IFN"
    t.string "location", limit: 40, comment: "Ort"
    t.string "zip_code", limit: 15, comment: "PLZ"
    t.string "contact_phone", limit: 60
    t.string "fax", limit: 60
    t.string "contact_address", limit: 250
    t.string "business_institute_no", limit: 50, comment: "kaufm. Institut"
    t.string "street", limit: 100, comment: "Strasse Hnr."
    t.string "contact_fax", limit: 60
    t.text "speech_customer", size: :medium, comment: "Sprachkunde"
    t.text "data_customer", size: :medium, comment: "Sprachkunde"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "mandant_id", comment: "Mandant"
    t.string "easytel_account_no", limit: 30, comment: "Easytel-Konto"
    t.string "information"
    t.string "contact_mail"
    t.string "psp_element", comment: "PSP-Element"
    t.integer "billing_account_no", comment: "Abrechnungskonto"
    t.boolean "ewe_vip_flag", default: false, comment: "SLM-Info"
    t.string "sap_customer_no", comment: "SAP-Kunde"
    t.string "technical_institute_no", limit: 50, comment: "techn. Institut"
    t.string "wba_no", limit: 50, comment: "WBA-Nummer"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "billing_account_id", comment: "Will be used to reference to an parent element of the table billing_accounts"
    t.boolean "third_market", default: false, comment: "Drittmarkt"
    t.string "uuid", limit: 62
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 62, comment: "Eltern-UIID"
    t.string "system_type", comment: "Systemtyp"
    t.integer "parent_id", comment: "Eltern-Element"
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.text "internal_description", size: :medium
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.integer "sis_group_id", comment: "SIS Gruppe"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "billing_account_uuid", limit: 69
    t.string "sis_group_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "country", limit: 50, default: "Germany"
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "title", limit: 150, comment: "Firmenname"
    t.string "kapsch_customer_no", limit: 50
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "description", size: :medium
    t.integer "processor_id"
    t.string "processor_uuid", limit: 58
    t.string "house_number", limit: 10
    t.string "cost_location", limit: 50, comment: "Kostenstelle"
    t.string "contact_salutation", limit: 25, comment: "Anrede"
    t.string "contact_mobile_phone", limit: 30, comment: "Auftraggeber Mobil."
    t.string "contact_role", limit: 50, comment: "Rolle"
    t.index ["billing_account_id"], name: "fk_rails_70cbf368a7"
    t.index ["creator_id"], name: "fk_rails_efd26f53ac"
    t.index ["creator_uuid"], name: "fk_rails_a11b74368e"
    t.index ["f_type"], name: "index_customers_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_20c8d29c9c"
    t.index ["mandant_uuid"], name: "fk_rails_c8463bf261"
    t.index ["parent_id"], name: "fk_rails_cc81a450af"
    t.index ["parent_uuid"], name: "fk_rails_db4127cb7f"
    t.index ["system_type"], name: "index_customers_on_system_type", length: 2
    t.index ["uuid"], name: "index_customers_on_uuid", unique: true
  end

  create_table "data_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.boolean "compressed", default: false, comment: "Is the data compressed"
    t.boolean "base64", default: false, comment: "Is the data converted in base64"
    t.boolean "saved_in_folder", default: false, comment: "Is the data saved as file than is the path in the field path"
    t.text "path"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "f_type"
    t.text "tags"
    t.string "state", default: "external"
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "content_type", comment: "Content-Type"
    t.binary "data", size: :long
    t.string "uuid", limit: 63
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 71
    t.string "system_type"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.index ["creator_id"], name: "fk_rails_6283305449"
    t.index ["mandant_id"], name: "fk_rails_47f29f709c"
    t.index ["reference_model"], name: "index_data_item_histories_on_reference_model"
  end

  create_table "data_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.boolean "compressed", default: false, comment: "Is the data compressed"
    t.boolean "base64", default: false, comment: "Is the data converted in base64"
    t.boolean "saved_in_folder", default: false, comment: "Is the data saved as file than is the path in the field path"
    t.text "path"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "f_type", default: "file"
    t.string "state", default: "external"
    t.text "tags"
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "content_type", comment: "Content-Type"
    t.binary "data", size: :long
    t.string "uuid", limit: 63
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 63
    t.string "system_type"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.index ["f_type"], name: "index_data_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_55c120d415"
    t.index ["parent_id"], name: "fk_rails_7bebd83f3b"
    t.index ["parent_uuid"], name: "fk_rails_738af65e91"
    t.index ["reference_model", "reference_id"], name: "index_data_items_on_reference_model_and_reference_id"
    t.index ["reference_model"], name: "index_data_items_on_reference_model"
    t.index ["reference_uuid"], name: "index_data_items_on_reference_uuid", length: 10
    t.index ["system_type"], name: "index_data_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_data_items_on_uuid", unique: true
  end

  create_table "database_commands", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.text "content", size: :medium
    t.boolean "success", default: false
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "updater_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "uuid", limit: 70, comment: "UUID"
    t.string "parent_uuid", limit: 70, comment: "Eltern-Element"
    t.integer "parent_id", comment: "Eltern-Element"
  end

  create_table "delayed_jobs", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", size: :long
    t.text "last_error"
    t.datetime "run_at", precision: nil
    t.datetime "locked_at", precision: nil
    t.datetime "failed_at", precision: nil
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "dynamic_inter_company_service_vlan_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 89, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 89, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "reference_parent_id", comment: "Referenz-Eltern-ID"
    t.string "reference_parent_uuid", limit: 150, comment: "Referenz-Eltern-UUID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "original_uuid", limit: 89, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 98, comment: "Contains the Universally Unique Identifier of this history element"
    t.string "history_reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need history_reference_id)"
    t.integer "history_reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need history_reference_model)"
    t.string "history_reference_uuid", limit: 150, comment: "Generic attribute which can contain a uuid, which this data set is referenced (need history_reference_model)"
    t.string "di_network", comment: "Netz"
    t.string "di_gateway", comment: "Gateway"
    t.string "di_router_zero", comment: "Router 0"
    t.string "di_router_one", comment: "Router 1"
    t.string "di_ip_helper_zero", comment: "IP-Helper 0"
    t.string "di_ip_helper_one", comment: "IP-Helper 1"
    t.string "di_subnetmask", comment: "Subnetmask"
    t.string "di_name", limit: 150, comment: "Name"
    t.decimal "reference_parent_version", precision: 10, scale: 2, default: "0.0", comment: "Referenz-Eltern-Version"
    t.index ["original_id"], name: "index_dynamic_ic_service_vlan_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_dynamic_ic_service_vlan_histories_on_uuid_and_version"
  end

  create_table "dynamic_inter_company_service_vlans", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 89, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 89, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "reference_parent_id", comment: "Referenz-Eltern-ID"
    t.string "reference_parent_uuid", limit: 150, comment: "Referenz-Eltern-UUID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "di_network", comment: "Netz"
    t.string "di_gateway", comment: "Gateway"
    t.string "di_router_zero", comment: "Router 0"
    t.string "di_router_one", comment: "Router 1"
    t.string "di_ip_helper_zero", comment: "IP-Helper 0"
    t.string "di_ip_helper_one", comment: "IP-Helper 1"
    t.string "di_subnetmask", comment: "Subnetmask"
    t.string "di_name", limit: 150, comment: "Name"
    t.decimal "reference_parent_version", precision: 10, scale: 2, default: "0.0", comment: "Referenz-Eltern-Version"
    t.index ["parent_id"], name: "fk_rails_15f8d4ea5f"
    t.index ["parent_uuid"], name: "fk_rails_7fe2013b45"
    t.index ["uuid"], name: "index_dynamic_inter_company_service_vlans_on_uuid", unique: true
  end

  create_table "dynamic_item_histories", id: { comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.bigint "mandant_id", comment: "Mandant-ID"
    t.text "reference_model", size: :medium
    t.bigint "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :medium
    t.text "history_info", size: :medium
    t.datetime "history_date", precision: nil, comment: "Historie-Datum"
    t.bigint "history_user_id", comment: "Historie-Benutzer"
    t.bigint "original_id", comment: "Original-ID"
    t.string "history_reference_model"
    t.integer "history_reference_id"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "di_radius_user", limit: 100
    t.string "di_radius_user_password", limit: 100
    t.string "di_port_number", limit: 100
    t.string "di_port_prefix", limit: 30
    t.string "di_port_basic", limit: 30
    t.string "di_port_central", limit: 20
    t.string "di_port_block_beginning", limit: 20
    t.string "di_block_end", limit: 20
    t.string "di_port_amount", limit: 20
    t.string "uuid", limit: 66
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 74
    t.string "system_type"
    t.string "f_type", limit: 100
    t.text "state", size: :medium
    t.bigint "parent_id", comment: "Eltern-Element"
    t.integer "reference_parent_id"
    t.string "reference_parent_uuid", limit: 150
    t.string "di_data_centre", limit: 40
    t.string "di_position_rack"
    t.string "di_equipment", limit: 50
    t.string "di_room", limit: 40
    t.string "di_footprint", limit: 30
    t.string "di_rack", limit: 30
    t.string "di_height_unit_from"
    t.string "di_height_unit_to"
    t.string "di_billing_period", limit: 20
    t.string "di_reading_period"
    t.string "di_wba_no", limit: 120
    t.string "di_offsetting", limit: 20
    t.string "di_allocation", limit: 30
    t.string "di_order_no", limit: 20
    t.string "di_service", limit: 70
    t.decimal "di_price_sum", precision: 16, scale: 4
    t.bigint "di_position", comment: "Position"
    t.decimal "di_price_unit", precision: 16, scale: 4
    t.date "di_date", comment: "Datum"
    t.string "di_material", limit: 190
    t.text "di_information", size: :medium
    t.date "di_start_date", comment: "Startdatum"
    t.date "di_end_date", comment: "Enddatum"
    t.decimal "di_decimal_quantity", precision: 10, scale: 2, comment: "Anzahl"
    t.string "di_name", limit: 150
    t.string "di_omni_tracker_change_no", limit: 150
    t.boolean "di_is_service", default: false, comment: "Service"
    t.boolean "di_is_rent", default: false, comment: "Miete"
    t.string "di_service_kind", limit: 100
    t.string "di_provider", limit: 40
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.integer "reference_parent_version", comment: "Generic attribute which can contain the version number of the reference data set"
    t.string "di_connection_variant", limit: 100
    t.string "di_billing_no", limit: 100
    t.string "di_book_account", limit: 100
    t.string "di_online_no", limit: 100
    t.integer "di_sbm_item_id", comment: "SBM"
    t.string "di_f_type", limit: 70
    t.float "position", limit: 53
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "tags", size: :medium
    t.string "name", limit: 100
    t.string "title", limit: 1000
    t.text "description"
    t.integer "di_connection_type_internet_access", comment: "Anschlusstyp"
    t.integer "di_internet_access_parent_id", comment: "Eltern-Element"
    t.string "di_building", limit: 100
    t.string "di_floor", limit: 100
    t.string "di_port", limit: 100
    t.string "di_data_centre_b"
    t.string "di_building_b", limit: 100
    t.string "di_floor_b", limit: 100
    t.string "di_room_b"
    t.string "di_footprint_b"
    t.string "di_position_rack_b"
    t.string "di_rack_b"
    t.string "di_height_unit_from_b"
    t.string "di_port_b", limit: 100
    t.string "di_height_unit_to_b"
    t.string "di_producer", limit: 50
    t.string "di_model", limit: 100
    t.text "di_serial_number", size: :medium, comment: "Seriennummer"
    t.string "di_server_name", limit: 75
    t.string "di_operating_system", limit: 75
    t.decimal "di_decimal_cpu_quantity", precision: 10, comment: "Anzahl CPU"
    t.decimal "di_decimal_core_quantity", precision: 10, comment: "Anzahl Kerne"
    t.string "di_title", limit: 200, comment: "Titel"
    t.string "di_tariff", limit: 100
    t.string "history_reference_parent_id"
    t.string "history_reference_parent_uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 66
    t.string "history_reference_uuid", limit: 150
    t.text "di_update_cycle", size: :medium
    t.text "di_backup_cycle", size: :medium
    t.string "di_cost_location", limit: 100
    t.string "di_material_no", limit: 30
    t.string "di_cpu_name", limit: 50
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name", comment: "unique/shortcut hierarchy name of an data set (example MCE-004M)"
    t.string "di_registry_number", limit: 30
    t.boolean "di_express_circuit", default: false, comment: "Expressschaltung"
    t.boolean "di_install_dhcp", default: false, comment: "Einrichtung DHCP"
    t.boolean "di_install_static_ip", default: false, comment: "Einrichtung staticIP"
    t.string "di_sap_tax_code", limit: 20
    t.decimal "di_tax_rate", precision: 10, scale: 2, comment: "Steuersatz"
    t.string "di_article_no", limit: 50
    t.string "di_article_name", limit: 100
    t.string "di_package_name", limit: 100
    t.string "di_service_catalogue", limit: 100
    t.text "di_sum_detail", size: :medium
    t.string "di_profit_center_no", limit: 20
    t.string "di_discount_group", limit: 100
    t.decimal "di_decimal_discount", precision: 16, scale: 4, comment: "Rabatt"
    t.string "di_discount_reason", limit: 20
    t.string "di_product_uuid", limit: 150, comment: "Produkt"
    t.text "di_product_uuids", size: :medium
    t.string "di_general_ledger_account_no", limit: 30
    t.string "di_product_type"
    t.string "di_implementation", limit: 50
    t.string "di_siptrunk_contract_no", limit: 30
    t.string "di_internet_connection_contract_no", limit: 20
    t.date "di_producer_service_date", comment: "Hersteller-Service-Datum"
    t.string "di_producer_version", limit: 50
    t.text "di_external_comment", size: :medium
    t.boolean "di_required", default: false, comment: "Pflichtfeld"
    t.date "di_order_date", comment: "Auftragsdatum"
    t.date "di_delivery_date", comment: "Lieferdatum"
    t.date "di_completion_date", comment: "Fertigstellungsdatum"
    t.decimal "di_decimal_exchange_rate_usd_eur", precision: 10, scale: 4, comment: "Dollar-Euro-Umrechnungskurs"
    t.integer "di_offer_binding_period", comment: "Angebotsbindefrist"
    t.integer "di_delivery_time", comment: "Lieferzeit"
    t.integer "di_min_hire_time", comment: "Laufzeit"
    t.decimal "di_decimal_shipped_quantity", precision: 10, scale: 2, comment: "Verschickte Anzahl"
    t.integer "di_e_mail_id", comment: "E-Mail"
    t.string "di_e_mail_uuid", limit: 60, comment: "E-Mail"
    t.text "di_alternate_customer_bill_quantity", size: :medium, comment: "Alternative Kundenrechngsmenge"
    t.integer "di_parent_id", comment: "Eltern-Element"
    t.string "di_parent_uuid", limit: 66, comment: "Eltern-Element"
    t.decimal "di_price_discount", precision: 16, scale: 4, comment: "Rabattsumme"
    t.string "di_shipping_destination", limit: 100, comment: "Versandziel"
    t.text "di_previous_type_detail", size: :medium, comment: "Vorheriger Typ-Detail"
    t.decimal "di_price_unit_with_discount", precision: 16, scale: 4, comment: "Einzelpreis mit Rabatt"
    t.decimal "di_price_sum_with_discount", precision: 16, scale: 4, comment: "Summe mit Rabatt"
    t.index ["history_reference_uuid"], name: "index_dynamic_item_histories_on_history_reference_uuid", length: 10
  end

  create_table "dynamic_items", id: { comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.bigint "mandant_id", comment: "Mandant-ID"
    t.text "reference_model", size: :medium
    t.bigint "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :medium
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "di_radius_user", limit: 100
    t.string "di_radius_user_password", limit: 100
    t.string "di_port_number", limit: 100
    t.string "di_port_prefix", limit: 30
    t.string "di_port_basic", limit: 30
    t.string "di_port_central", limit: 20
    t.string "di_port_block_beginning", limit: 20
    t.string "di_block_end", limit: 20
    t.string "di_port_amount", limit: 20
    t.string "uuid", limit: 66
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 66
    t.string "system_type"
    t.string "f_type", limit: 100
    t.text "state", size: :medium
    t.bigint "parent_id", comment: "Eltern-Element"
    t.integer "reference_parent_id"
    t.string "reference_parent_uuid", limit: 150
    t.string "di_data_centre", limit: 40
    t.string "di_position_rack"
    t.string "di_equipment", limit: 50
    t.string "di_room", limit: 40
    t.string "di_footprint", limit: 30
    t.string "di_rack", limit: 30
    t.string "di_height_unit_from"
    t.string "di_height_unit_to"
    t.string "di_billing_period", limit: 20
    t.string "di_reading_period"
    t.string "di_wba_no", limit: 120
    t.string "di_offsetting", limit: 20
    t.string "di_allocation", limit: 30
    t.string "di_order_no", limit: 20
    t.string "di_service", limit: 70
    t.decimal "di_price_sum", precision: 16, scale: 4
    t.bigint "di_position", comment: "Position"
    t.decimal "di_price_unit", precision: 16, scale: 4
    t.date "di_date", comment: "Datum"
    t.string "di_material", limit: 190
    t.text "di_information", size: :medium
    t.date "di_start_date", comment: "Startdatum"
    t.date "di_end_date", comment: "Enddatum"
    t.decimal "di_decimal_quantity", precision: 10, scale: 2, comment: "Anzahl"
    t.string "di_name", limit: 150
    t.string "di_omni_tracker_change_no", limit: 150
    t.boolean "di_is_service", default: false, comment: "Service"
    t.boolean "di_is_rent", default: false, comment: "Miete"
    t.string "di_service_kind", limit: 100
    t.string "di_provider", limit: 40
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.integer "reference_parent_version", comment: "Generic attribute which can contain the version number of the reference data set"
    t.string "di_connection_variant", limit: 100
    t.string "di_billing_no", limit: 100
    t.string "di_book_account", limit: 100
    t.string "di_online_no", limit: 100
    t.integer "di_sbm_item_id", comment: "SBM"
    t.string "di_f_type", limit: 70
    t.float "position", limit: 53
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "tags", size: :medium
    t.string "name", limit: 100
    t.string "title", limit: 1000
    t.text "description"
    t.integer "di_connection_type_internet_access", comment: "Anschlusstyp"
    t.integer "di_internet_access_parent_id", comment: "Eltern-Element"
    t.string "di_building", limit: 100
    t.string "di_floor", limit: 100
    t.string "di_port", limit: 100
    t.string "di_data_centre_b"
    t.string "di_building_b", limit: 100
    t.string "di_floor_b", limit: 100
    t.string "di_room_b"
    t.string "di_footprint_b"
    t.string "di_position_rack_b"
    t.string "di_rack_b"
    t.string "di_height_unit_from_b"
    t.string "di_port_b", limit: 100
    t.string "di_height_unit_to_b"
    t.string "di_producer", limit: 50
    t.string "di_model", limit: 100
    t.text "di_serial_number", size: :medium, comment: "Seriennummer"
    t.string "di_server_name", limit: 75
    t.string "di_operating_system", limit: 75
    t.decimal "di_decimal_cpu_quantity", precision: 10, comment: "Anzahl CPU"
    t.decimal "di_decimal_core_quantity", precision: 10, comment: "Anzahl Kerne"
    t.string "di_title", limit: 200, comment: "Titel"
    t.string "di_tariff", limit: 100
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.text "di_update_cycle", size: :medium
    t.text "di_backup_cycle", size: :medium
    t.string "di_cost_location", limit: 100
    t.string "di_material_no", limit: 30
    t.string "di_cpu_name", limit: 50
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.string "di_registry_number", limit: 30
    t.boolean "di_express_circuit", default: false, comment: "Expressschaltung"
    t.boolean "di_install_dhcp", default: false, comment: "Einrichtung DHCP"
    t.boolean "di_install_static_ip", default: false, comment: "Einrichtung staticIP"
    t.string "di_sap_tax_code", limit: 20
    t.decimal "di_tax_rate", precision: 10, scale: 2, comment: "Steuersatz"
    t.string "di_article_no", limit: 50
    t.string "di_article_name", limit: 100
    t.string "di_package_name", limit: 100
    t.string "di_service_catalogue", limit: 100
    t.text "di_sum_detail", size: :medium
    t.string "di_profit_center_no", limit: 20
    t.string "di_discount_group", limit: 100
    t.decimal "di_decimal_discount", precision: 16, scale: 4, comment: "Rabatt"
    t.string "di_discount_reason", limit: 20
    t.string "di_product_uuid", limit: 150, comment: "Produkt"
    t.text "di_product_uuids", size: :medium
    t.string "di_general_ledger_account_no", limit: 30
    t.string "di_product_type"
    t.string "di_implementation", limit: 50
    t.string "di_siptrunk_contract_no", limit: 30
    t.string "di_internet_connection_contract_no", limit: 20
    t.date "di_producer_service_date", comment: "Hersteller-Service-Datum"
    t.string "di_producer_version", limit: 50
    t.text "di_external_comment", size: :medium
    t.boolean "di_required", default: false, comment: "Pflichtfeld"
    t.date "di_order_date", comment: "Auftragsdatum"
    t.date "di_delivery_date", comment: "Lieferdatum"
    t.date "di_completion_date", comment: "Fertigstellungsdatum"
    t.decimal "di_decimal_exchange_rate_usd_eur", precision: 10, scale: 4, comment: "Dollar-Euro-Umrechnungskurs"
    t.integer "di_offer_binding_period", comment: "Angebotsbindefrist"
    t.integer "di_delivery_time", comment: "Lieferzeit"
    t.integer "di_min_hire_time", comment: "Laufzeit"
    t.decimal "di_decimal_shipped_quantity", precision: 10, scale: 2, comment: "Verschickte Anzahl"
    t.integer "di_e_mail_id", comment: "E-Mail"
    t.string "di_e_mail_uuid", limit: 60, comment: "E-Mail"
    t.text "di_alternate_customer_bill_quantity", size: :medium, comment: "Alternative Kundenrechngsmenge"
    t.integer "di_parent_id", comment: "Eltern-Element"
    t.string "di_parent_uuid", limit: 66, comment: "Eltern-Element"
    t.decimal "di_price_discount", precision: 16, scale: 4, comment: "Rabattsumme"
    t.string "di_shipping_destination", limit: 100, comment: "Versandziel"
    t.text "di_previous_type_detail", size: :medium, comment: "Vorheriger Typ-Detail"
    t.decimal "di_price_unit_with_discount", precision: 16, scale: 4, comment: "Einzelpreis mit Rabatt"
    t.decimal "di_price_sum_with_discount", precision: 16, scale: 4, comment: "Summe mit Rabatt"
    t.index ["di_product_uuid"], name: "fk_rails_f3dbacd7f7"
    t.index ["f_type"], name: "index_dynamic_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_621aa8b234"
    t.index ["parent_uuid"], name: "fk_rails_2348f067fd"
    t.index ["reference_parent_uuid"], name: "index_dynamic_items_on_reference_parent_uuid", length: 10
    t.index ["reference_uuid"], name: "index_dynamic_items_on_reference_uuid", unique: true
    t.index ["system_type"], name: "index_dynamic_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_dynamic_items_on_uuid", unique: true
  end

  create_table "dynamic_location_item_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 76, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 74, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.float "reference_parent_version", limit: 53
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MCE-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "original_uuid", limit: 76, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 85, comment: "Contains the Universally Unique Identifier of this history element"
    t.string "history_reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need history_reference_id)"
    t.integer "history_reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need history_reference_model)"
    t.integer "history_reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need history_reference_model)"
    t.string "history_reference_uuid", limit: 150, comment: "Generic attribute which can contain a uuid, which this data set is referenced (need history_reference_model)"
    t.string "history_reference_parent_uuid", limit: 150
    t.string "di_billing_street", limit: 250, comment: "Straße (Billing)"
    t.string "di_billing_house_number", limit: 10, comment: "Hausnummer (Billing)"
    t.string "di_billing_zip_code", limit: 10, comment: "PLZ (Billing)"
    t.string "di_billing_location", limit: 50, comment: "Ort (Billing)"
    t.string "di_billing_country", limit: 50, default: "Germany", comment: "Land (Billing)"
    t.string "di_billing_contact_first_name", limit: 30, comment: "Vorname (Billing)"
    t.string "di_billing_contact_last_name", limit: 30, comment: "Nachname (Billing)"
    t.string "di_billing_customer_name", limit: 200, comment: "Kundenname (Billing)"
    t.string "di_delivery_customer_name", limit: 200, comment: "Kundenname (Lieferung)"
    t.string "di_delivery_street", limit: 250, comment: "Straße (Lieferung)"
    t.string "di_delivery_house_number", limit: 10, comment: "Hausnummer (Lieferung)"
    t.string "di_delivery_zip_code", limit: 10, comment: "PLZ (Lieferung)"
    t.string "di_delivery_location", limit: 50, comment: "Ort (Lieferung)"
    t.string "di_delivery_country", limit: 50, default: "Germany", comment: "Land (Lieferung)"
    t.string "di_delivery_contact_first_name", limit: 30, comment: "Vorname (Lieferung)"
    t.string "di_delivery_contact_last_name", limit: 30, comment: "Nachname (Lieferung)"
    t.string "di_billing_address_receiver", limit: 1000, comment: "zus. Empfängerdaten (Billing)"
    t.string "di_delivery_address_receiver", limit: 1000, comment: "zus. Empfängerdaten (Lieferung)"
    t.string "di_billing_contact_phone", limit: 20, comment: "Telefon. (Billing)"
    t.string "di_contact_phone", limit: 20, comment: "Auftraggeber Telefonnr."
    t.string "di_delivery_contact_phone", limit: 20, comment: "Auftraggeber Telefonnr. (Lieferung)"
    t.string "di_contact_fax", limit: 20, comment: "Auftraggeber Fax"
    t.string "di_billing_contact_fax", limit: 20, comment: "Fax (Billing)"
    t.string "di_deliviery_contact_fax", limit: 20, comment: "Fax (Lieferung)"
    t.string "di_contact_salutation", limit: 25, comment: "Anrede"
    t.string "di_billing_contact_salutation", limit: 25, comment: "Anrede (Billing)"
    t.string "di_delivery_contact_salutation", limit: 25, comment: "Anrede (Lieferung)"
    t.string "di_contact_mail", limit: 100, comment: "E-Mail"
    t.string "di_billing_contact_mail", limit: 100, comment: "E-Mail (Billing)"
    t.string "di_delivery_contact_mail", limit: 100, comment: "E-Mail (Lieferung)"
    t.string "di_contact_first_name", limit: 30, comment: "Vorname"
    t.string "di_contact_last_name", limit: 30, comment: "Nachname"
    t.string "di_street", limit: 100, comment: "Straße"
    t.string "di_house_number", limit: 10, comment: "Hausnummer"
    t.string "di_zip_code", limit: 22, comment: "Postleitzahl"
    t.string "di_location", limit: 40, comment: "Ort"
    t.string "di_country", limit: 50, default: "Germany", comment: "Land"
    t.string "di_customer_name", limit: 200, comment: "Kundenname"
    t.string "di_address_receiver", limit: 1000, comment: "zus. Empfängerdaten"
    t.string "di_institute_name", limit: 75, comment: "Institut"
    t.string "di_billing_institute_name", limit: 75, comment: "Institut (Billing)"
    t.string "di_delivery_institute_name", limit: 75, comment: "Institut (Lieferung)"
    t.string "di_branch_name", limit: 150, comment: "Geschäftsst."
    t.string "di_billing_branch_name", limit: 150, comment: "Geschäftsst. (Billing)"
    t.string "di_delivery_branch_name", limit: 150, comment: "Geschäftsst. (Lieferung)"
    t.text "di_position", size: :medium, comment: "Lage"
    t.text "di_billing_position", size: :medium, comment: "Lage (Billing)"
    t.text "di_delivery_position", size: :medium, comment: "Lage (Lieferung)"
    t.text "di_information", comment: "Bemerkung"
    t.text "di_billing_information", comment: "Bemerkung (Billing)"
    t.text "di_delivery_information", comment: "Bemerkung (Lieferung)"
    t.index ["original_id"], name: "index_dynamic_location_item_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_dynamic_location_item_histories_on_uuid_and_version"
  end

  create_table "dynamic_location_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 76, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 74, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.float "reference_parent_version", limit: 53
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MCE-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.string "di_billing_street", limit: 250, comment: "Straße (Billing)"
    t.string "di_billing_house_number", limit: 10, comment: "Hausnummer (Billing)"
    t.string "di_billing_zip_code", limit: 10, comment: "PLZ (Billing)"
    t.string "di_billing_location", limit: 50, comment: "Ort (Billing)"
    t.string "di_billing_country", limit: 50, default: "Germany", comment: "Land (Billing)"
    t.string "di_billing_contact_first_name", limit: 30, comment: "Vorname (Billing)"
    t.string "di_billing_contact_last_name", limit: 30, comment: "Nachname (Billing)"
    t.string "di_billing_customer_name", limit: 200, comment: "Kundenname (Billing)"
    t.string "di_delivery_customer_name", limit: 200, comment: "Kundenname (Lieferung)"
    t.string "di_delivery_street", limit: 250, comment: "Straße (Lieferung)"
    t.string "di_delivery_house_number", limit: 10, comment: "Hausnummer (Lieferung)"
    t.string "di_delivery_zip_code", limit: 10, comment: "PLZ (Lieferung)"
    t.string "di_delivery_location", limit: 50, comment: "Ort (Lieferung)"
    t.string "di_delivery_country", limit: 50, default: "Germany", comment: "Land (Lieferung)"
    t.string "di_delivery_contact_first_name", limit: 30, comment: "Vorname (Lieferung)"
    t.string "di_delivery_contact_last_name", limit: 30, comment: "Nachname (Lieferung)"
    t.string "di_billing_address_receiver", limit: 1000, comment: "zus. Empfängerdaten (Billing)"
    t.string "di_delivery_address_receiver", limit: 1000, comment: "zus. Empfängerdaten (Lieferung)"
    t.string "di_billing_contact_phone", limit: 20, comment: "Telefon. (Billing)"
    t.string "di_contact_phone", limit: 20, comment: "Auftraggeber Telefonnr."
    t.string "di_delivery_contact_phone", limit: 20, comment: "Auftraggeber Telefonnr. (Lieferung)"
    t.string "di_contact_fax", limit: 20, comment: "Auftraggeber Fax"
    t.string "di_billing_contact_fax", limit: 20, comment: "Fax (Billing)"
    t.string "di_deliviery_contact_fax", limit: 20, comment: "Fax (Lieferung)"
    t.string "di_contact_salutation", limit: 25, comment: "Anrede"
    t.string "di_billing_contact_salutation", limit: 25, comment: "Anrede (Billing)"
    t.string "di_delivery_contact_salutation", limit: 25, comment: "Anrede (Lieferung)"
    t.string "di_contact_mail", limit: 100, comment: "E-Mail"
    t.string "di_billing_contact_mail", limit: 100, comment: "E-Mail (Billing)"
    t.string "di_delivery_contact_mail", limit: 100, comment: "E-Mail (Lieferung)"
    t.string "di_contact_first_name", limit: 30, comment: "Vorname"
    t.string "di_contact_last_name", limit: 30, comment: "Nachname"
    t.string "di_street", limit: 100, comment: "Straße"
    t.string "di_house_number", limit: 10, comment: "Hausnummer"
    t.string "di_zip_code", limit: 22, comment: "Postleitzahl"
    t.string "di_location", limit: 40, comment: "Ort"
    t.string "di_country", limit: 50, default: "Germany", comment: "Land"
    t.string "di_customer_name", limit: 200, comment: "Kundenname"
    t.string "di_address_receiver", limit: 1000, comment: "zus. Empfängerdaten"
    t.string "di_institute_name", limit: 75, comment: "Institut"
    t.string "di_billing_institute_name", limit: 75, comment: "Institut (Billing)"
    t.string "di_delivery_institute_name", limit: 75, comment: "Institut (Lieferung)"
    t.string "di_branch_name", limit: 150, comment: "Geschäftsst."
    t.string "di_billing_branch_name", limit: 150, comment: "Geschäftsst. (Billing)"
    t.string "di_delivery_branch_name", limit: 150, comment: "Geschäftsst. (Lieferung)"
    t.text "di_position", size: :medium, comment: "Lage"
    t.text "di_billing_position", size: :medium, comment: "Lage (Billing)"
    t.text "di_delivery_position", size: :medium, comment: "Lage (Lieferung)"
    t.text "di_information", comment: "Bemerkung"
    t.text "di_billing_information", comment: "Bemerkung (Billing)"
    t.text "di_delivery_information", comment: "Bemerkung (Lieferung)"
    t.index ["f_type"], name: "index_dynamic_location_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_de1c92569d"
    t.index ["parent_uuid"], name: "fk_rails_08da744e2f"
    t.index ["system_type"], name: "index_dynamic_location_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_dynamic_location_items_on_uuid", unique: true
  end

  create_table "dynamic_tc_system_item_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 77, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 77, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MPLS-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "original_uuid", limit: 77, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 86, comment: "Contains the Universally Unique Identifier of this history element"
    t.string "history_reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need history_reference_id)"
    t.integer "history_reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need history_reference_model)"
    t.string "history_reference_uuid", limit: 150, comment: "Generic attribute which can contain a uuid, which this data set is referenced (need history_reference_model)"
    t.boolean "di_has_remote_maintenance", default: false, comment: "Fernwartung"
    t.string "di_internal_subsystem", limit: 100, comment: "Internes Subsystem"
    t.string "di_external_subsystem", limit: 100, comment: "Externes Subsystem"
    t.string "di_end_of_subsystem_service_date", limit: 100, comment: "Serviceende Subsystem"
    t.string "di_innovaphone_gateway", limit: 100, comment: "innovaphone Gateway"
    t.boolean "di_has_innovaphone_ipva", default: false, comment: "innovaphone IPVA"
    t.boolean "di_has_innovaphone_standby", default: false, comment: "innovaphone Standby"
    t.string "di_innovaphone_smb", limit: 100, comment: "innovaphone SMB"
    t.string "di_innovaphone_version", limit: 100, comment: "innovaphone Version"
    t.boolean "di_has_innovaphone_reverse_proxy", default: false, comment: "Reverse Proxy"
    t.integer "di_amount_innovaphone_ports", comment: "Anzahl Ports"
    t.date "di_end_of_ssa_date", comment: "SSA-Ablaufdatum"
    t.text "di_location_main_equipment", size: :medium, comment: "Standort von Hauptanlage"
    t.string "di_customer_segment", limit: 100, comment: "Kundensegment"
    t.index ["original_id"], name: "index_dynamic_tc_system_item_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_dynamic_tc_system_item_histories_on_uuid_and_version"
  end

  create_table "dynamic_tc_system_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 77, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 77, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:n-Relation,need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MPLS-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.boolean "di_has_remote_maintenance", default: false, comment: "Fernwartung"
    t.string "di_internal_subsystem", limit: 100, comment: "Internes Subsystem"
    t.string "di_external_subsystem", limit: 100, comment: "Externes Subsystem"
    t.string "di_end_of_subsystem_service_date", limit: 100, comment: "Serviceende Subsystem"
    t.string "di_innovaphone_gateway", limit: 100, comment: "innovaphone Gateway"
    t.boolean "di_has_innovaphone_ipva", default: false, comment: "innovaphone IPVA"
    t.boolean "di_has_innovaphone_standby", default: false, comment: "innovaphone Standby"
    t.string "di_innovaphone_smb", limit: 100, comment: "innovaphone SMB"
    t.string "di_innovaphone_version", limit: 100, comment: "innovaphone Version"
    t.boolean "di_has_innovaphone_reverse_proxy", default: false, comment: "Reverse Proxy"
    t.integer "di_amount_innovaphone_ports", comment: "Anzahl Ports"
    t.date "di_end_of_ssa_date", comment: "SSA-Ablaufdatum"
    t.text "di_location_main_equipment", size: :medium, comment: "Standort von Hauptanlage"
    t.string "di_customer_segment", limit: 100, comment: "Kundensegment"
    t.index ["parent_id"], name: "fk_rails_aa1d6dc235"
    t.index ["parent_uuid"], name: "fk_rails_f2aabe51d2"
    t.index ["uuid"], name: "index_dynamic_tc_system_items_on_uuid", unique: true
  end

  create_table "e_mail_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "from", limit: 250
    t.string "to", limit: 1000
    t.string "cc", limit: 1000
    t.string "bcc", limit: 1000
    t.string "subject", limit: 4000
    t.text "body", size: :medium
    t.string "user_login", limit: 256
    t.integer "inventory_id"
    t.string "f_type", limit: 256
    t.text "attach"
    t.boolean "indeed_sent", default: true
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.text "inventory_fields", size: :medium
    t.string "at_reference", limit: 50
    t.string "customer_order_no", limit: 50
    t.integer "mandant_id"
    t.string "order_id"
    t.string "contract_no"
    t.boolean "confirmation_of_receipt", default: true
    t.string "content_type"
    t.datetime "publish_date", precision: nil
    t.string "reference_model", limit: 100
    t.integer "reference_id"
    t.integer "original_id"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil
    t.integer "history_user_id"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "uuid", limit: 60
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 68
    t.string "system_type"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "position", limit: 53
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.boolean "active", default: true, comment: "Is these data set active"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.string "template_item_uuid", limit: 67
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 60
    t.string "inventory_uuid", limit: 63
    t.string "order_uuid", limit: 59
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name", comment: "unique/shortcut hierarchy name of an data set (example MCE-004M)"
    t.boolean "outgoing", default: true, comment: "Ausgehende E-Mail"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.string "attach_functions", limit: 100, comment: "Anhang-Funktionen"
    t.index ["creator_id"], name: "fk_rails_ec2d4a4e8c"
    t.index ["inventory_id"], name: "fk_rails_dc8bb8f28d"
    t.index ["mandant_id"], name: "fk_rails_09033ac582"
    t.index ["reference_model"], name: "index_e_mail_histories_on_reference_model"
  end

  create_table "e_mail_join_attach_page_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "e_mail_id", comment: "e_mail_id"
    t.integer "page_item_id", comment: "page_item_id"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 150
    t.string "e_mail_uuid", limit: 60, comment: "e_mail_uuid"
    t.string "mandant_uuid", limit: 61
    t.string "page_item_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["e_mail_id"], name: "fk_rails_68fb294593"
    t.index ["e_mail_uuid"], name: "fk_rails_5051bcc2dc"
    t.index ["mandant_id"], name: "fk_rails_e19f66de5f"
  end

  create_table "e_mail_join_groups", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "e_mail_id"
    t.integer "group_id", comment: "Gruppe"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 150
    t.string "group_uuid", limit: 59
    t.string "e_mail_uuid", limit: 60, comment: "e_mail_uuid"
    t.string "mandant_uuid", limit: 61
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["e_mail_id"], name: "fk_rails_7102872275"
    t.index ["e_mail_uuid"], name: "fk_rails_c2969aefc2"
    t.index ["group_id"], name: "fk_rails_04106b0a94"
    t.index ["mandant_id"], name: "fk_rails_538a1d4ae6"
  end

  create_table "e_mail_join_roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "e_mail_id"
    t.integer "role_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "role_uuid", limit: 58
    t.string "e_mail_uuid", limit: 60
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["e_mail_id"], name: "fk_rails_c9d95ab594"
    t.index ["e_mail_uuid"], name: "fk_rails_b0db92f1b2"
    t.index ["mandant_id"], name: "fk_rails_5290f85337"
    t.index ["role_id"], name: "fk_rails_87b71976a1"
    t.index ["role_uuid"], name: "fk_rails_22370b0aab"
  end

  create_table "e_mails", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "from", limit: 250
    t.string "to", limit: 1000
    t.string "cc", limit: 1000
    t.string "bcc", limit: 1000
    t.string "subject", limit: 4000
    t.text "body", size: :medium
    t.string "user_login", limit: 256
    t.integer "inventory_id"
    t.string "f_type", limit: 256
    t.text "attach"
    t.boolean "indeed_sent", default: true
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.text "inventory_fields", size: :medium
    t.string "at_reference", limit: 50
    t.string "customer_order_no", limit: 50
    t.integer "mandant_id"
    t.string "order_id"
    t.string "contract_no"
    t.boolean "confirmation_of_receipt", default: true
    t.string "content_type"
    t.datetime "publish_date", precision: nil
    t.string "reference_model", limit: 100
    t.integer "reference_id"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "uuid", limit: 60
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 60
    t.string "system_type"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "position", limit: 53
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.boolean "active", default: true, comment: "Is these data set active"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.string "template_item_uuid", limit: 67
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "inventory_uuid", limit: 63
    t.string "order_uuid", limit: 59
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.boolean "outgoing", default: true, comment: "Ausgehende E-Mail"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.string "attach_functions", limit: 100, comment: "Anhang-Funktionen"
    t.index ["created_at"], name: "index_e_mails_on_created_at"
    t.index ["f_type"], name: "index_e_mails_on_f_type", length: 9
    t.index ["inventory_id"], name: "index_e_mails_on_inventory_id"
    t.index ["parent_id"], name: "fk_rails_350e95daec"
    t.index ["parent_uuid"], name: "fk_rails_95f2389a40"
    t.index ["reference_model"], name: "index_e_mails_on_reference_model"
    t.index ["system_type"], name: "index_e_mails_on_system_type", length: 2
    t.index ["updated_at"], name: "index_e_mails_on_updated_at"
    t.index ["uuid"], name: "index_e_mails_on_uuid", unique: true
  end

  create_table "easytel_account_numbers", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "easytel_account_no"
    t.string "customer_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "customer_uuid", limit: 62
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "uuid", limit: 76, comment: "UUID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 76, comment: "Eltern-Element"
  end

  create_table "event_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "uuid", limit: 64
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.text "tags", size: :medium
    t.string "state"
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 72
    t.datetime "start", precision: nil
    t.datetime "end", precision: nil
    t.string "color"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 64
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_eb37def4e2"
    t.index ["mandant_id"], name: "fk_rails_3ac776914c"
  end

  create_table "event_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 64
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 64
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.datetime "start", precision: nil
    t.datetime "end", precision: nil
    t.string "color"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_171f00bde2"
    t.index ["f_type"], name: "index_event_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_a2f77cbf89"
    t.index ["parent_id"], name: "fk_rails_d90fd22dc8"
    t.index ["parent_uuid"], name: "fk_rails_3fd7853a7e"
    t.index ["system_type"], name: "index_event_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_event_items_on_uuid", unique: true
  end

  create_table "event_log_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.text "event"
    t.text "result"
    t.text "description", size: :long, comment: "Beschreibung"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 63
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type"
    t.string "f_type", limit: 100
    t.string "state"
    t.text "tags", size: :medium
    t.text "name"
    t.text "hierachy_name"
    t.string "title", limit: 1000
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 63
    t.string "history_uuid", limit: 71
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.boolean "real_send", default: false, comment: "real_send"
    t.datetime "send_date", precision: nil, comment: "send_date"
    t.string "target", comment: "target"
    t.text "url", size: :medium, comment: "Link"
    t.text "params", size: :medium, comment: "Parameter"
  end

  create_table "event_logs", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.text "event"
    t.text "result"
    t.text "description", size: :long
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "real_send", default: false, comment: "real_send"
    t.datetime "send_date", precision: nil, comment: "send_date"
    t.string "f_type", limit: 100, default: "system"
    t.string "target"
    t.text "url", size: :long
    t.string "updater_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "uuid", limit: 63, null: false, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 63, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.text "save_info", size: :long
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type"
    t.string "state"
    t.text "tags", size: :medium
    t.text "name"
    t.string "title", limit: 1000
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.text "params", size: :medium, comment: "Parameter"
    t.index ["f_type"], name: "index_event_logs_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_abcfdd5dc4"
    t.index ["parent_uuid"], name: "fk_rails_487be739b7"
    t.index ["system_type"], name: "index_event_logs_on_system_type", length: 2
    t.index ["uuid"], name: "index_event_logs_on_uuid", unique: true
  end

  create_table "events", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title"
    t.datetime "start", precision: nil
    t.datetime "end", precision: nil
    t.string "color"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "uuid", limit: 59, comment: "UUID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 59, comment: "Eltern-Element"
  end

  create_table "ewe_report_incidents", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "Produkt", limit: 30
    t.string "IDFestverbindung", limit: 10
    t.string "Produktbezeichnung", limit: 30
    t.string "Konzerngesellschaft", limit: 50
    t.string "Leitungstyp", limit: 30
    t.string "Ticketnummer", limit: 30
    t.string "Wiedereroeffnung", limit: 30
    t.string "Symptombeschreibung", limit: 2048
    t.integer "Prioritaet", limit: 1
    t.string "betroffeneL3VPNs", limit: 512
    t.string "Loesungsbeschreibung", limit: 2048
    t.string "Stoerungsursache", limit: 1024
    t.datetime "TicketBeginn", precision: nil
    t.datetime "Wiederherstellung", precision: nil
    t.integer "Suspend"
    t.string "Suspends", limit: 2048
    t.string "Stoermelder", limit: 100
    t.string "TicketNrProblem", limit: 30
    t.decimal "SLAVerfuegbarkeitSoll", precision: 10, scale: 4
    t.decimal "SLAVerfuegbarkeitIstInklSuspend", precision: 10, scale: 4
    t.decimal "SLAVerfuegbarkeitIstExklSuspend", precision: 10, scale: 4
    t.decimal "SLAVerfuegbarkeitVerletzung", precision: 5, scale: 4
    t.integer "SLAWiederherstellungSoll", limit: 3
    t.integer "SLAWiederherstellungIstInklSuspend", limit: 3
    t.integer "SLAWiederherstellungIstExklSuspend", limit: 3
    t.bigint "SLAWiederherstellungVerletzung"
    t.integer "SLAReaktionSoll", limit: 3
    t.integer "SLAReaktionIst", limit: 3
    t.bigint "SLAReaktionVerletzung"
    t.integer "SLAInformationSoll", limit: 3
    t.integer "SLAInformationIst", limit: 3
    t.bigint "SLAInformationVerletzung"
    t.integer "ErstattungRelativMonat", limit: 3
    t.string "Bemerkung", limit: 2048
    t.string "Sicherheitsrelevant", limit: 6
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "Leistungsempfaenger", limit: 100
    t.string "Titel", limit: 256
    t.decimal "SLAVerfuegbarkeitPoenale", precision: 10, scale: 2
    t.decimal "SLAWiederherstellungPoenale", precision: 10, scale: 2
    t.decimal "SLAReaktionPoenale", precision: 10, scale: 2
    t.decimal "SLAInformationPoenale", precision: 10, scale: 2
    t.string "Status", limit: 50
    t.string "Standort_A", limit: 256
    t.integer "Servicelevel", limit: 2
    t.integer "customer_id"
  end

  create_table "ewe_report_problems", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "IDFestverbindung", limit: 512
    t.string "Ticketnummer", limit: 30
    t.string "Symptombeschreibung", limit: 256
    t.string "Loesungsbeschreibung", limit: 256
    t.string "Workaround", limit: 256
    t.string "Status", limit: 30
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "Titel", limit: 256
    t.datetime "Beginn", precision: nil
    t.datetime "Ende", precision: nil
  end

  create_table "extension_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 68
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.text "hierachy_name"
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 68
    t.string "history_uuid", limit: 76
    t.string "extension_version", limit: 30, default: "0.0.0"
    t.string "extension_folder", limit: 100
    t.datetime "extension_date", precision: nil, comment: "Erweiterung-Datum"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
  end

  create_table "extension_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 68, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 68, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.text "hierachy_name"
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.string "extension_version", limit: 30, default: "0.0.0"
    t.string "extension_folder", limit: 100
    t.datetime "extension_date", precision: nil, comment: "Erweiterung-Datum"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["f_type"], name: "index_extension_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_7fda935dbe"
    t.index ["parent_uuid"], name: "fk_rails_6d07cb29e3"
    t.index ["system_type"], name: "index_extension_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_extension_items_on_uuid", unique: true
  end

  create_table "gantt_chart_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 150
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, default: 0.0
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.text "hierachy_name"
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 150
    t.string "history_uuid", limit: 150
    t.text "project_data", size: :medium
  end

  create_table "gantt_charts", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 150, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, default: 0.0
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.text "hierachy_name"
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "project_data", size: :medium
    t.index ["f_type"], name: "index_gantt_charts_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_e92a550aed"
    t.index ["parent_uuid"], name: "fk_rails_f2f1046bfa"
    t.index ["system_type"], name: "index_gantt_charts_on_system_type", length: 2
    t.index ["uuid"], name: "index_gantt_charts_on_uuid", unique: true
  end

  create_table "group_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "name", limit: 150
    t.text "description"
    t.integer "parent_id"
    t.integer "mandant_id"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.float "version", limit: 53, default: 0.0
    t.float "position", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "creator_id"
    t.string "f_type", limit: 100, default: "user"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil
    t.integer "history_user_id"
    t.integer "original_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 59
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 67
    t.string "system_type"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "title", limit: 150
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "state", limit: 100
    t.text "tags"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 59
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.text "extra_e_mails", size: :medium
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_cd1eaeec51"
    t.index ["creator_uuid"], name: "fk_rails_b4c26533f6"
    t.index ["mandant_uuid"], name: "fk_rails_eb5a5902f1"
  end

  create_table "group_join_project_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "group_id"
    t.integer "project_item_id"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.float "version", limit: 53
    t.text "save_info", size: :medium
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "uuid", limit: 150
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "group_uuid", limit: 59
    t.string "project_item_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["group_id"], name: "fk_rails_646f81d5e3"
    t.index ["group_uuid"], name: "fk_rails_3fffe34817"
    t.index ["mandant_id"], name: "fk_rails_d5d3f17aff"
    t.index ["mandant_uuid"], name: "fk_rails_a287b6db0f"
    t.index ["project_item_id"], name: "fk_rails_88600bd887"
    t.index ["project_item_uuid"], name: "fk_rails_6f7f5887ea"
  end

  create_table "group_join_todo_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "group_id", comment: "Gruppe"
    t.integer "todo_item_id", comment: "Todo"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.float "version", limit: 53
    t.text "save_info", size: :medium
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "group_uuid", limit: 59
    t.string "todo_item_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["group_id"], name: "fk_rails_93eb07ba83"
    t.index ["mandant_id"], name: "fk_rails_3ada6490db"
    t.index ["todo_item_id"], name: "fk_rails_9b2e9d40af"
    t.index ["todo_item_uuid"], name: "fk_rails_838aacf052"
  end

  create_table "groups", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "mandant_id"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.float "version", limit: 53, default: 0.0
    t.float "position", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "f_type", limit: 100, default: "user"
    t.string "name", limit: 150
    t.text "description"
    t.integer "creator_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 59
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 59
    t.string "system_type"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "title", limit: 150
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "state", limit: 100
    t.text "tags"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.text "extra_e_mails", size: :medium
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_d62517ff60"
    t.index ["creator_uuid"], name: "fk_rails_e876cccf30"
    t.index ["f_type"], name: "index_groups_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_e46030504d"
    t.index ["mandant_uuid"], name: "fk_rails_5bcf5394d6"
    t.index ["parent_id"], name: "fk_rails_be49f097d1"
    t.index ["parent_uuid"], name: "fk_rails_f23e2fd2bc"
    t.index ["system_type"], name: "index_groups_on_system_type", length: 2
    t.index ["uuid"], name: "index_groups_on_uuid", unique: true
  end

  create_table "inventories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "customer_id", comment: "Nutzerkategorie/Kunde"
    t.date "order_date"
    t.string "customer_order_no", limit: 50, comment: "Auftrag"
    t.date "desired_schedule"
    t.string "easytel_contract_no", limit: 180
    t.date "planned_completion_date"
    t.string "institute_name_a", limit: 75
    t.string "address_a", limit: 90
    t.string "location_a", limit: 50
    t.string "zip_code_a", limit: 15
    t.string "institute_name_b", limit: 50
    t.string "address_b", limit: 90
    t.string "location_b", limit: 50
    t.string "zip_code_b", limit: 10
    t.integer "postponement"
    t.string "interface", limit: 45
    t.string "bandwidth", limit: 45
    t.string "distance", limit: 20
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.string "easytel_account_no", limit: 40
    t.string "min_hire_time", limit: 20
    t.bigint "carrier_a", comment: "Carrier A"
    t.bigint "carrier_b", comment: "Carrier B"
    t.string "request_no_a", limit: 50
    t.string "leased_line_no_backup_a", limit: 50
    t.string "leased_line_no_backup_b", limit: 50
    t.string "plattform_no_a", limit: 30
    t.string "plattform_no_b", limit: 30
    t.string "area_code_a", limit: 50
    t.string "area_code_b", limit: 50
    t.string "request_no_b", limit: 50
    t.date "notice_date"
    t.text "information", size: :long
    t.decimal "price_instalment_payment", precision: 16, scale: 4
    t.integer "processor", unsigned: true
    t.integer "signatory", unsigned: true
    t.date "completion_date"
    t.decimal "price_isdn_backup_a", precision: 16, scale: 4
    t.decimal "price_isdn_backup_b", precision: 16, scale: 4
    t.decimal "price_cug_a", precision: 16, scale: 4
    t.decimal "price_cug_b", precision: 16, scale: 4
    t.date "billing_beginning_date"
    t.decimal "decimal_discount", precision: 16, scale: 4, comment: "Rabatt (Grundpreis)"
    t.decimal "price_discount", precision: 16, scale: 4, comment: "Rabatt (Grundpreis)"
    t.date "discount_date"
    t.bigint "realized_via_a", comment: "realisiert über A (B)"
    t.bigint "realized_via_b", comment: "realisiert über B (B)"
    t.integer "discount_reason", unsigned: true
    t.integer "type_of_price", unsigned: true
    t.string "time_to_repair", limit: 5
    t.string "availability", limit: 5
    t.string "sp_no", limit: 30
    t.text "product_name", size: :medium
    t.integer "sla", unsigned: true
    t.integer "connection_type", unsigned: true
    t.boolean "isdn_check_a", default: false, comment: "ISDN_Prüfung A (B)"
    t.boolean "isdn_check_b"
    t.string "at_reference", limit: 50
    t.date "adjusted_desired_schedule"
    t.boolean "hot_switching"
    t.string "onkz_a", limit: 5
    t.string "onkz_b", limit: 5
    t.integer "bandwidth_primary", unsigned: true
    t.integer "bandwidth_secondary", unsigned: true
    t.string "contact_name", limit: 150
    t.string "contact_phone", limit: 50
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "customer_system", limit: 30
    t.text "maintenance_mail"
    t.text "purpose"
    t.string "project_name", limit: 100
    t.date "notice_received"
    t.date "desired_notice_date"
    t.string "country_a", limit: 50, default: "Germany"
    t.text "position_a", size: :medium, comment: "Lage_A"
    t.string "contact_person_a", limit: 50
    t.text "information_a"
    t.string "country_b", limit: 50, default: "Germany"
    t.text "position_b", size: :medium, comment: "Lage B"
    t.string "contact_person_b", limit: 50
    t.text "information_b"
    t.date "contract_type"
    t.integer "product_id"
    t.string "sis_order_no", limit: 20
    t.string "sis_article_no", limit: 50
    t.text "notice_sis_order_no"
    t.text "notice_sis_article_no"
    t.string "history_leased_line_no", limit: 30
    t.date "commited_notice_date"
    t.date "ready_to_accept_date", comment: "Bereitstellung zur Abnahme"
    t.string "name_backup_a", limit: 50
    t.string "address_backup_a", limit: 50
    t.string "zip_code_backup_a", limit: 10
    t.string "location_backup_a", limit: 50
    t.string "country_backup_a", limit: 50, default: "Germany"
    t.text "position_backup_a", size: :medium, comment: "Lage A (B)"
    t.string "contact_person_backup_a", limit: 50
    t.string "area_code_backup_a", limit: 50
    t.string "plattform_no_backup_a", limit: 50
    t.text "information_backup_a", size: :medium
    t.string "name_backup_b", limit: 50
    t.string "address_backup_b", limit: 50
    t.string "zip_code_backup_b", limit: 10
    t.string "location_backup_b", limit: 50
    t.string "country_backup_b", limit: 50, default: "Germany"
    t.text "position_backup_b", size: :medium, comment: "Lage B (B)"
    t.string "contact_person_backup_b", limit: 50
    t.string "area_code_backup_b", limit: 20
    t.string "plattform_no_backup_b", limit: 50
    t.text "information_backup_b", size: :medium
    t.integer "inventory_id"
    t.string "state", limit: 40, default: ""
    t.boolean "export_state", default: false
    t.string "order_state", limit: 50
    t.text "incident_name_role"
    t.string "incident_phone", limit: 50
    t.text "incident_mail"
    t.string "orderer_name", limit: 50
    t.string "manager_name", limit: 50
    t.string "basic_plattform_name", limit: 50
    t.decimal "price_remnant_costs", precision: 16, scale: 4
    t.integer "account_no"
    t.boolean "secondary_line"
    t.integer "sis_oid"
    t.string "medium", limit: 20
    t.string "construction_type", limit: 25, comment: "Bauweise"
    t.bigint "max_quantity_services", comment: "Maximale Anzahl an L3VPN"
    t.string "service_level", limit: 20
    t.text "contact_mail"
    t.integer "offer_id"
    t.text "location"
    t.string "rebuild_state", limit: 50
    t.text "reason_for_rejection"
    t.string "net_name", limit: 50
    t.string "channel_no", limit: 30
    t.string "channel_stm1_pop", limit: 50
    t.date "approval_date"
    t.text "orderer_mail"
    t.text "implementation_time"
    t.string "guid", limit: 60
    t.string "new_order_sis_order_no", limit: 20
    t.string "new_order_sis_article_no", limit: 20
    t.date "new_order_order_date"
    t.datetime "order_state_fertiggestellt_preisanfrage", precision: nil
    t.datetime "order_state_eingang_preisanfrage", precision: nil
    t.datetime "order_state_abgelehnt", precision: nil
    t.datetime "order_state_abgelehnt_alternativangebot", precision: nil
    t.datetime "order_state_abgelehnt_preisanfrage", precision: nil
    t.datetime "order_state_durch_ewe_genehmigt_interne_pruefung", precision: nil
    t.datetime "order_state_durch_ewe_genehmigt_in_umsetzung", precision: nil
    t.datetime "order_state_fertiggestellt_warten_auf_abnahme", precision: nil
    t.datetime "order_state_abnahme", precision: nil
    t.string "project_leader", limit: 50
    t.decimal "price_ratiodata_premium", precision: 16, scale: 4
    t.string "trab_no", limit: 20
    t.string "mce_state", limit: 40
    t.boolean "basisplattform_ssid_ready"
    t.string "branch_name_b", limit: 100
    t.string "branch_name_a", limit: 150
    t.string "actual_date_of_permit", limit: 30
    t.boolean "ewe_vip_flag", default: false, comment: "SLM-Info"
    t.string "first_sis_net_approver", limit: 50
    t.string "second_sis_net_approver", limit: 50
    t.string "hostname_ewe", limit: 50
    t.string "hostname_carrier", limit: 50
    t.integer "bandwidth_step"
    t.text "external_comment", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.text "previous_info"
    t.boolean "add_in_management_mask", default: false, comment: "Is in search page user area enabled"
    t.integer "mandant_id"
    t.string "uuid", limit: 63
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 63
    t.text "system_type"
    t.text "mail_a", size: :medium
    t.float "parent_version", limit: 53
    t.string "billing_system", limit: 50
    t.datetime "billing_date", precision: nil, comment: "Abrechnungsdatum"
    t.string "easytel_state", limit: 40, default: "nicht synchronisieren"
    t.string "leased_line_no", limit: 50
    t.string "billing_period", limit: 20, default: "monatlich"
    t.float "position", limit: 53
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "parent_id", comment: "Eltern-Element"
    t.boolean "antenna_built", default: false, comment: "Antenne gebaut"
    t.integer "sla_item_id"
    t.text "customer_comment", size: :medium
    t.string "customer_state", limit: 40
    t.integer "previous_id", comment: "Vorgänger-Element"
    t.integer "creator_id", comment: "Ersteller"
    t.boolean "active", default: true, comment: "Aktiv"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.string "operation_time", limit: 70
    t.boolean "cluster", default: false, comment: "FW HA-Cluster"
    t.string "ip_net", limit: 50
    t.text "url", size: :medium
    t.text "domain", size: :medium
    t.string "name", limit: 30
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "customer_uuid", limit: 62
    t.string "product_uuid", limit: 61
    t.string "inventory_uuid", limit: 63, comment: "BRM-ID der FV"
    t.string "sla_item_uuid", limit: 150, comment: "SLA"
    t.string "f_type", limit: 70
    t.string "title", limit: 70
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "hostname_cpe1", limit: 50
    t.string "loopback_cpe1", limit: 33
    t.string "address_cpe1", limit: 33
    t.string "subnet_cpe1", limit: 33
    t.text "hierachy_name", comment: "hierachy_name"
    t.string "time_for_payment", limit: 20
    t.integer "notice_period", comment: "Kündigungsfrist"
    t.integer "automatic_contract_extension", comment: "autom. VVL um"
    t.string "gateway", limit: 33
    t.string "account_assignment_no", limit: 40
    t.string "contact_function", limit: 50
    t.text "contact_mail_a"
    t.text "incident_information"
    t.text "product_title", size: :tiny
    t.text "contact_mail_b", size: :tiny, comment: "Ansprechpartner-E-Mail B"
    t.string "billing_customer_name", limit: 150
    t.string "billing_street", limit: 250
    t.string "billing_house_number", limit: 10
    t.string "billing_zip_code", limit: 10
    t.string "billing_location", limit: 50
    t.string "billing_country", limit: 50, default: "Germany"
    t.string "billing_contact_first_name", limit: 30
    t.string "billing_contact_last_name", limit: 30
    t.decimal "price_unit", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, default: "0.0", comment: "Anzahl"
    t.string "sales_opportunity_no", limit: 25
    t.string "request_for_change_no", limit: 15
    t.string "sap_order_no", limit: 10
    t.string "kapsch_contract_no", limit: 40
    t.string "reference_product_id", limit: 100
    t.string "billing_type", limit: 100
    t.text "reference_inventory_id", size: :medium, comment: "Referenz-Bestand"
    t.string "manual_billing_state", limit: 40
    t.text "manual_billing_comment", size: :medium
    t.string "realization_type", limit: 30, comment: "Realisierungsart"
    t.string "input", limit: 30
    t.string "psp_element", limit: 50, comment: "PSP-Element"
    t.string "cost_location", limit: 50, comment: "Kostenstelle"
    t.text "billing_text_prefix", size: :medium, comment: "Rechnungstextanfang"
    t.integer "order_id", comment: "Auftrag"
    t.string "order_uuid", limit: 59, comment: "Auftrag"
    t.string "offer_no", limit: 50, comment: "Angebotsnummer"
    t.text "sum_detail", size: :medium, comment: "Summe im Detail"
    t.date "delivery_date", comment: "Lieferdatum"
    t.text "serial_no", size: :tiny, comment: "Seriennummer"
    t.text "inventory_no", size: :tiny, comment: "Inventarnummer"
    t.text "range_of_customers", size: :tiny, comment: "Kundenkreis"
    t.date "offer_date", comment: "Angebotsdatum"
    t.integer "reporting_item_id", comment: "Reporting"
    t.string "reporting_item_uuid", limit: 68, comment: "Reporting"
    t.decimal "decimal_unit_discount", precision: 10, scale: 2, comment: "Rabatt (Summe des Einzelpreises)"
    t.decimal "price_unit_discount", precision: 16, scale: 4, comment: "Rabatt (Summe des Einzelpreises)"
    t.decimal "decimal_one_time_discount", precision: 10, scale: 2, comment: "Rabatt (Einmalpreis)"
    t.decimal "price_one_time_discount", precision: 16, scale: 4, comment: "Rabatt (Einmalpreis)"
    t.datetime "last_billed_date", precision: nil, comment: "letztes Abgerechnungsdatum"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["creator_id"], name: "fk_rails_bbf64ef98c"
    t.index ["creator_uuid"], name: "fk_rails_98aef9afdd"
    t.index ["customer_id"], name: "index_inventories_on_customer_id"
    t.index ["customer_uuid"], name: "fk_rails_d48dd0ba73"
    t.index ["del_flag"], name: "index_inventories_on_del_flag"
    t.index ["f_type"], name: "index_inventories_on_f_type", length: 2
    t.index ["inventory_id"], name: "index_inventories_on_inventory_id"
    t.index ["inventory_uuid"], name: "fk_rails_629a0f555c"
    t.index ["mandant_id"], name: "fk_rails_2b73aaae46"
    t.index ["mandant_uuid"], name: "fk_rails_1b641350c8"
    t.index ["offer_id"], name: "index_inventories_on_offer_id"
    t.index ["order_state"], name: "index_inventories_on_order_state", length: 3
    t.index ["parent_id"], name: "fk_rails_50efae3a58"
    t.index ["parent_uuid"], name: "fk_rails_d5e256462c"
    t.index ["product_id"], name: "fk_rails_e94eb46135"
    t.index ["product_name"], name: "index_inventories_on_product_name", length: 15
    t.index ["product_uuid"], name: "fk_rails_d7238cb4b3"
    t.index ["state"], name: "index_inventories_on_state", length: 11
    t.index ["system_type"], name: "index_inventories_on_system_type", length: 5
    t.index ["updater_id"], name: "fk_rails_12b713bf34"
    t.index ["updater_uuid"], name: "fk_rails_74b084e179"
    t.index ["uuid"], name: "index_inventories_on_uuid", unique: true
  end

  create_table "inventory_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=DYNAMIC", force: :cascade do |t|
    t.integer "customer_id", comment: "Nutzerkategorie/Kunde"
    t.integer "original_id", null: false
    t.date "order_date"
    t.string "customer_order_no", limit: 50, comment: "Auftrag"
    t.date "desired_schedule"
    t.string "easytel_contract_no", limit: 180
    t.date "planned_completion_date"
    t.string "institute_name_a", limit: 75
    t.string "address_a", limit: 90
    t.string "location_a", limit: 50
    t.string "zip_code_a", limit: 15
    t.string "institute_name_b", limit: 50
    t.string "address_b", limit: 90
    t.string "location_b", limit: 50
    t.string "zip_code_b", limit: 10
    t.integer "postponement"
    t.string "interface", limit: 45
    t.string "bandwidth", limit: 45
    t.string "distance", limit: 20
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.string "easytel_account_no", limit: 40
    t.string "min_hire_time", limit: 20
    t.bigint "carrier_a", comment: "Carrier A"
    t.bigint "carrier_b", comment: "Carrier B"
    t.string "request_no_a", limit: 50
    t.string "leased_line_no_backup_a", limit: 50
    t.string "leased_line_no_backup_b", limit: 50
    t.string "plattform_no_a", limit: 30
    t.string "plattform_no_b", limit: 30
    t.string "area_code_a", limit: 50
    t.string "area_code_b", limit: 50
    t.string "request_no_b", limit: 50
    t.date "notice_date"
    t.text "information", size: :long
    t.decimal "price_instalment_payment", precision: 16, scale: 4
    t.integer "processor"
    t.integer "signatory"
    t.date "completion_date"
    t.decimal "price_isdn_backup_a", precision: 16, scale: 4
    t.decimal "price_isdn_backup_b", precision: 16, scale: 4
    t.decimal "price_cug_a", precision: 16, scale: 4
    t.decimal "price_cug_b", precision: 16, scale: 4
    t.date "billing_beginning_date"
    t.decimal "decimal_discount", precision: 16, scale: 4, comment: "Rabatt (Grundpreis)"
    t.decimal "price_discount", precision: 16, scale: 4, comment: "Rabatt (Grundpreis)"
    t.date "discount_date"
    t.integer "realized_via_a"
    t.integer "realized_via_b"
    t.integer "discount_reason"
    t.integer "type_of_price"
    t.string "time_to_repair", limit: 5
    t.string "availability", limit: 5
    t.string "sp_no", limit: 30
    t.text "product_name", size: :medium
    t.integer "sla"
    t.integer "connection_type"
    t.boolean "isdn_check_a"
    t.boolean "isdn_check_b"
    t.string "at_reference", limit: 50
    t.date "adjusted_desired_schedule"
    t.boolean "hot_switching"
    t.string "onkz_a", limit: 5
    t.string "onkz_b", limit: 5
    t.integer "bandwidth_primary"
    t.integer "bandwidth_secondary"
    t.string "contact_name", limit: 150
    t.string "contact_phone", limit: 50
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "customer_system", limit: 30
    t.text "maintenance_mail"
    t.text "purpose"
    t.string "project_name", limit: 100
    t.date "notice_received"
    t.date "desired_notice_date"
    t.string "country_a", limit: 50, default: "Germany"
    t.text "position_a", size: :medium, comment: "Lage_A"
    t.string "contact_person_a", limit: 50
    t.text "information_a"
    t.string "country_b", limit: 50, default: "Germany"
    t.text "position_b", size: :medium, comment: "Lage B"
    t.string "contact_person_b", limit: 50
    t.text "information_b"
    t.date "contract_type"
    t.integer "product_id"
    t.string "sis_order_no", limit: 20
    t.string "sis_article_no", limit: 50
    t.text "notice_sis_order_no"
    t.text "notice_sis_article_no"
    t.string "history_leased_line_no", limit: 30
    t.date "commited_notice_date"
    t.date "ready_to_accept_date"
    t.string "name_backup_a", limit: 50
    t.string "address_backup_a", limit: 50
    t.string "zip_code_backup_a", limit: 10
    t.string "location_backup_a", limit: 50
    t.string "country_backup_a", limit: 50, default: "Germany"
    t.text "position_backup_a", size: :medium, comment: "Lage A (B)"
    t.string "contact_person_backup_a", limit: 50
    t.string "area_code_backup_a", limit: 50
    t.string "plattform_no_backup_a", limit: 50
    t.string "information_backup_a", limit: 50
    t.string "name_backup_b", limit: 50
    t.string "address_backup_b", limit: 50
    t.string "zip_code_backup_b", limit: 10
    t.string "location_backup_b", limit: 50
    t.string "country_backup_b", limit: 50, default: "Germany"
    t.text "position_backup_b", size: :medium, comment: "Lage B (B)"
    t.string "contact_person_backup_b", limit: 50
    t.string "area_code_backup_b", limit: 20
    t.string "plattform_no_backup_b", limit: 50
    t.string "information_backup_b", limit: 50
    t.integer "inventory_id"
    t.string "state", limit: 40, default: ""
    t.boolean "export_state", default: false
    t.string "order_state", limit: 50
    t.text "incident_name_role"
    t.string "incident_phone", limit: 50
    t.text "incident_mail"
    t.string "orderer_name", limit: 50
    t.string "manager_name", limit: 50
    t.string "basic_plattform_name", limit: 50
    t.decimal "price_remnant_costs", precision: 16, scale: 4
    t.integer "sis_oid"
    t.integer "account_no"
    t.boolean "secondary_line"
    t.string "medium", limit: 20
    t.string "construction_type", limit: 25, comment: "Bauweise"
    t.integer "max_quantity_services", limit: 2
    t.string "service_level", limit: 20
    t.string "history_type", default: "update"
    t.text "contact_mail"
    t.integer "offer_id"
    t.text "location"
    t.string "rebuild_state", limit: 50
    t.text "reason_for_rejection"
    t.string "net_name", limit: 50
    t.string "channel_no", limit: 30
    t.string "channel_stm1_pop", limit: 50
    t.date "approval_date"
    t.text "orderer_mail"
    t.text "implementation_time"
    t.string "guid", limit: 60
    t.string "new_order_sis_order_no", limit: 20
    t.string "new_order_sis_article_no", limit: 20
    t.date "new_order_order_date"
    t.datetime "order_state_fertiggestellt_preisanfrage", precision: nil
    t.datetime "order_state_eingang_preisanfrage", precision: nil
    t.datetime "order_state_abgelehnt", precision: nil
    t.datetime "order_state_abgelehnt_alternativangebot", precision: nil
    t.datetime "order_state_abgelehnt_preisanfrage", precision: nil
    t.datetime "order_state_durch_ewe_genehmigt_interne_pruefung", precision: nil
    t.datetime "order_state_durch_ewe_genehmigt_in_umsetzung", precision: nil
    t.datetime "order_state_fertiggestellt_warten_auf_abnahme", precision: nil
    t.datetime "order_state_abnahme", precision: nil
    t.string "project_leader", limit: 50
    t.decimal "price_ratiodata_premium", precision: 16, scale: 4
    t.string "trab_no", limit: 20
    t.datetime "history_date", precision: nil
    t.string "mce_state", limit: 40
    t.boolean "basisplattform_ssid_ready"
    t.string "branch_name_b", limit: 100
    t.string "branch_name_a", limit: 150
    t.string "actual_date_of_permit", limit: 30
    t.integer "history_parent_id"
    t.boolean "ewe_vip_flag", default: false, comment: "SLM-Info"
    t.string "first_sis_net_approver", limit: 50
    t.string "second_sis_net_approver", limit: 50
    t.string "hostname_ewe", limit: 50
    t.string "hostname_carrier", limit: 50
    t.integer "bandwidth_step"
    t.integer "history_user_id"
    t.text "external_comment", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.text "history_info", size: :long
    t.text "previous_info"
    t.boolean "add_in_management_mask", default: false, comment: "Is in search page user area enabled"
    t.integer "mandant_id"
    t.string "uuid", limit: 63
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 71
    t.text "system_type"
    t.text "mail_a", size: :medium
    t.float "parent_version", limit: 53
    t.string "billing_system", limit: 50
    t.datetime "billing_date", precision: nil, comment: "Abrechnungsdatum"
    t.string "easytel_state", limit: 40, default: "nicht synchronisieren"
    t.string "leased_line_no", limit: 50
    t.string "billing_period", limit: 20, default: "monatlich"
    t.float "position", limit: 53
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "parent_id", comment: "Eltern-Element"
    t.boolean "antenna_built", default: false, comment: "Antenne gebaut"
    t.integer "sla_item_id"
    t.text "customer_comment", size: :medium
    t.string "customer_state", limit: 40
    t.integer "previous_id", comment: "Vorgänger-Element"
    t.integer "creator_id", comment: "Ersteller"
    t.boolean "active", default: true, comment: "Aktiv"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.string "operation_time", limit: 70
    t.boolean "cluster", default: false, comment: "FW HA-Cluster"
    t.string "ip_net", limit: 50
    t.text "url", size: :medium
    t.text "domain", size: :medium
    t.string "name", limit: 30
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 63
    t.string "customer_uuid", limit: 62
    t.string "product_uuid", limit: 61
    t.string "inventory_uuid", limit: 63
    t.string "sla_item_uuid", limit: 150, comment: "SLA"
    t.string "f_type", limit: 70
    t.string "title", limit: 70
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "hostname_cpe1", limit: 50
    t.string "loopback_cpe1", limit: 33
    t.string "address_cpe1", limit: 33
    t.string "subnet_cpe1", limit: 33
    t.text "hierachy_name", comment: "hierachy_name"
    t.string "time_for_payment", limit: 20, comment: "SAP-Zahlungsziel"
    t.integer "notice_period", comment: "Kündigungsfrist"
    t.integer "automatic_contract_extension", comment: "autom. VVL um"
    t.string "gateway", limit: 33
    t.string "account_assignment_no", limit: 40
    t.string "contact_function", limit: 50
    t.text "contact_mail_a", comment: "Ansprechpartner-E-Mail A"
    t.text "incident_information"
    t.text "product_title", size: :tiny
    t.text "contact_mail_b", size: :tiny, comment: "Ansprechpartner-E-Mail B"
    t.string "billing_customer_name", limit: 150
    t.string "billing_street", limit: 250
    t.string "billing_house_number", limit: 10
    t.string "billing_zip_code", limit: 10
    t.string "billing_location", limit: 50
    t.string "billing_country", limit: 50, default: "Germany"
    t.string "billing_contact_first_name", limit: 30
    t.string "billing_contact_last_name", limit: 30
    t.decimal "price_unit", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, default: "0.0", comment: "Anzahl"
    t.string "sales_opportunity_no", limit: 25
    t.string "request_for_change_no", limit: 15
    t.string "sap_order_no", limit: 10
    t.string "kapsch_contract_no", limit: 40, comment: "Kaptsch-Vertragsnummer"
    t.string "reference_product_id", limit: 100
    t.string "billing_type", limit: 100
    t.text "reference_inventory_id", size: :medium, comment: "Referenz-Bestand"
    t.string "manual_billing_state", limit: 40
    t.text "manual_billing_comment", size: :medium
    t.string "realization_type", limit: 30, comment: "Realisierungsart"
    t.string "input", limit: 30, comment: "Vorleistung"
    t.string "psp_element", limit: 50, comment: "PSP-Element"
    t.string "cost_location", limit: 50, comment: "Kostenstelle"
    t.text "billing_text_prefix", size: :medium, comment: "Rechnungstextanfang"
    t.integer "order_id", comment: "Auftrag"
    t.string "order_uuid", limit: 59, comment: "Auftrag"
    t.string "offer_no", limit: 50, comment: "Angebotsnummer"
    t.text "sum_detail", size: :medium, comment: "Summe im Detail"
    t.date "delivery_date", comment: "Lieferdatum"
    t.text "serial_no", size: :tiny, comment: "Seriennummer"
    t.text "inventory_no", size: :tiny, comment: "Inventarnummer"
    t.text "range_of_customers", size: :tiny, comment: "Kundenkreis"
    t.date "offer_date", comment: "Angebotsdatum"
    t.integer "reporting_item_id", comment: "Reporting"
    t.string "reporting_item_uuid", limit: 68, comment: "Reporting"
    t.decimal "decimal_unit_discount", precision: 10, scale: 2, comment: "Rabatt (Summe des Einzelpreises)"
    t.decimal "price_unit_discount", precision: 16, scale: 4, comment: "Rabatt (Summe des Einzelpreises)"
    t.decimal "decimal_one_time_discount", precision: 10, scale: 2, comment: "Rabatt (Einmalpreis)"
    t.decimal "price_one_time_discount", precision: 16, scale: 4, comment: "Rabatt (Einmalpreis)"
    t.datetime "last_billed_date", precision: nil, comment: "letztes Abgerechnungsdatum"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["history_type"], name: "index_inventory_histories_on_history_type", length: 2
    t.index ["inventory_id"], name: "index_inventory_histories_on_inventory_id"
    t.index ["inventory_uuid"], name: "index_inventory_histories_on_inventory_uuid", length: 10
    t.index ["leased_line_no"], name: "index_inventory_histories_on_leased_line_no", length: 13
    t.index ["mandant_id"], name: "fk_rails_5fa5d7b3af"
    t.index ["original_id"], name: "index_inventory_histories_on_original_id"
    t.index ["product_id"], name: "fk_rails_6547aea2f3"
    t.index ["state"], name: "index_inventory_histories_on_state", length: 8
    t.index ["uuid", "version"], name: "index_inventory_histories_on_uuid_and_version"
  end

  create_table "inventory_hotspot_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "name"
    t.string "location", limit: 2000
    t.date "billing_beginning_date"
    t.date "notice_date"
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.integer "inventory_id", null: false
    t.integer "mandant_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "history_inventory_id", default: 0
    t.datetime "history_date", precision: nil
    t.string "bandwidth", limit: 10, default: "55"
    t.text "history_info", size: :long
    t.integer "history_user_id"
    t.integer "duration"
    t.string "at_reference", limit: 50
    t.integer "original_id"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "sp_no"
    t.date "completion_date", comment: "Fertigstellung"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.boolean "del_flag", default: false, comment: "Is these data set active"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.string "reference_uuid", limit: 150
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "parent_uuid", limit: 150
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "uuid", limit: 71
    t.string "history_uuid", limit: 79
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 71
    t.string "inventory_uuid", limit: 63
    t.string "history_inventory_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_2b579ba8cc"
    t.index ["inventory_id"], name: "fk_rails_b3c92763c4"
  end

  create_table "inventory_hotspots", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name"
    t.string "location", limit: 2000
    t.date "billing_beginning_date"
    t.date "notice_date"
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.integer "inventory_id", null: false
    t.integer "mandant_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "history_inventory_id", default: 0
    t.datetime "history_date", precision: nil
    t.text "bandwidth", size: :medium
    t.integer "duration"
    t.string "at_reference", limit: 50
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "sp_no"
    t.date "completion_date", comment: "Fertigstellung"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.boolean "del_flag", default: false, comment: "Is these data set active"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.string "reference_uuid", limit: 150
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "parent_uuid", limit: 71
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "uuid", limit: 71
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "inventory_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_abb25ca98c"
    t.index ["inventory_id"], name: "fk_rails_15eb8ad108"
    t.index ["mandant_id"], name: "fk_rails_590a7ae83b"
    t.index ["parent_id"], name: "fk_rails_01e3a7d6f2"
    t.index ["parent_uuid"], name: "fk_rails_b5716de3a0"
    t.index ["uuid"], name: "index_inventory_hotspots_on_uuid", unique: true
  end

  create_table "inventory_join_sis_group_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "inventory_id"
    t.integer "sis_group_id"
    t.string "basic_plattform_name"
    t.string "sis_organization_no"
    t.string "inventory_uuid", limit: 63
    t.string "sis_group_uuid", limit: 150
    t.integer "history_inventory_id"
    t.integer "history_sis_group_id"
    t.string "history_inventory_uuid", limit: 150
    t.string "history_sis_group_uuid", limit: 150
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "mandant_id"
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "history_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_f7a7c7adf8"
    t.index ["sis_group_uuid"], name: "fk_rails_487edab012"
  end

  create_table "inventory_join_sis_groups", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "inventory_id"
    t.integer "sis_group_id"
    t.string "basic_plattform_name"
    t.string "sis_organization_no"
    t.string "inventory_uuid", limit: 63
    t.string "sis_group_uuid", limit: 150
    t.integer "mandant_id"
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["inventory_id"], name: "fk_rails_7057a169cf"
    t.index ["mandant_id"], name: "fk_rails_695d691169"
    t.index ["sis_group_id"], name: "fk_rails_67b5dc74fc"
    t.index ["sis_group_uuid"], name: "fk_rails_d41adc889c"
  end

  create_table "inventory_location_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "inventory_id", null: false, unsigned: true
    t.string "state", default: "Aktiviert", null: false
    t.string "condis_location_no"
    t.string "sis_location_no"
    t.integer "history_inventory_id"
    t.datetime "history_date", precision: nil
    t.datetime "save_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "at_reference", limit: 50
    t.string "customer_order_no", limit: 50
    t.text "history_info", size: :long
    t.integer "history_user_id"
    t.string "switch_name", limit: 150
    t.integer "original_id"
    t.integer "mandant_id", default: 7
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.boolean "del_flag", default: false, comment: "Is these data set active"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.string "reference_uuid", limit: 150
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "parent_uuid", limit: 150
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "uuid", limit: 72
    t.string "history_uuid", limit: 80
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 72
    t.string "inventory_uuid", limit: 63
    t.string "history_inventory_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_64f31c279f"
  end

  create_table "inventory_locations", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "inventory_id", null: false, unsigned: true
    t.string "state", default: "Aktiviert", null: false
    t.string "condis_location_no"
    t.string "sis_location_no"
    t.integer "history_inventory_id"
    t.datetime "save_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "at_reference", limit: 50
    t.string "customer_order_no", limit: 50
    t.datetime "history_date", precision: nil
    t.string "switch_name", limit: 150
    t.integer "mandant_id", default: 0
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.boolean "del_flag", default: false, comment: "Is these data set active"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.string "reference_uuid", limit: 150
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "parent_uuid", limit: 72
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "uuid", limit: 72
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "inventory_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_c255c04685"
    t.index ["parent_id"], name: "fk_rails_adf87d14e0"
    t.index ["parent_uuid"], name: "fk_rails_4e00bbf86e"
    t.index ["uuid"], name: "index_inventory_locations_on_uuid", unique: true
  end

  create_table "inventory_service_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "inventory_id", null: false
    t.integer "original_id", null: false
    t.string "name", limit: 50
    t.string "user", limit: 50
    t.string "bandwidth"
    t.string "gateway"
    t.string "router_0"
    t.string "router_1"
    t.string "network"
    t.string "subnetmask"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "state", limit: 30, default: "angelegt"
    t.boolean "export_state", default: false
    t.integer "inventory_service_id"
    t.string "ip_editable_ewe", limit: 30, default: "Nutzer"
    t.boolean "f_automatic", default: false, null: false
    t.integer "history_inventory_id"
    t.datetime "history_date", precision: nil
    t.datetime "save_at", precision: nil
    t.string "circa_quantity_ports"
    t.string "at_reference", limit: 50
    t.string "customer_order_no", limit: 50
    t.datetime "businesscase_start", precision: nil
    t.datetime "change_KM_in_between_times", precision: nil
    t.datetime "businesscase_end", precision: nil
    t.string "businesscase_state", limit: 30
    t.text "object_fields_before_change", size: :medium
    t.text "object_fields_of_the_businesscase_change", size: :medium
    t.text "object_fields_of_the_km_change", size: :medium
    t.integer "history_user_id"
    t.integer "mandant_id"
    t.string "history_type", limit: 50, default: "update"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info"
    t.text "history_info"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.boolean "del_flag", default: false, comment: "Is these data set active"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.string "reference_uuid", limit: 150
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "parent_uuid", limit: 150
    t.string "uuid", limit: 71
    t.string "history_uuid", limit: 79
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 71
    t.string "inventory_uuid", limit: 63
    t.string "inventory_service_uuid", limit: 71
    t.string "history_inventory_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_6d55344f5d"
    t.index ["inventory_id"], name: "index_inventory_service_histories_on_inventory_id"
    t.index ["mandant_id"], name: "fk_rails_6a9d382397"
    t.index ["name"], name: "index_inventory_service_histories_on_name", length: 8
    t.index ["state"], name: "index_inventory_service_histories_on_state", length: 8
  end

  create_table "inventory_services", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "inventory_id", null: false, unsigned: true
    t.string "name", limit: 50
    t.string "user", limit: 50
    t.string "bandwidth"
    t.string "gateway"
    t.string "router_0"
    t.string "router_1"
    t.string "network"
    t.string "subnetmask"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "state", limit: 30, default: "angelegt"
    t.boolean "export_state", default: false
    t.integer "inventory_service_id"
    t.string "ip_editable_ewe", limit: 30, default: "Nutzer"
    t.boolean "f_automatic", default: false, null: false
    t.datetime "save_at", precision: nil
    t.string "circa_quantity_ports"
    t.string "at_reference", limit: 50
    t.string "customer_order_no", limit: 50
    t.datetime "businesscase_start", precision: nil
    t.datetime "change_KM_in_between_times", precision: nil
    t.datetime "businesscase_end", precision: nil
    t.string "businesscase_state", limit: 30
    t.text "object_fields_before_change", size: :long
    t.text "object_fields_of_the_businesscase_change", size: :long
    t.text "object_fields_of_the_km_change", size: :long
    t.integer "mandant_id"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.boolean "del_flag", default: false, comment: "Is these data set active"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.string "reference_uuid", limit: 150
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "parent_uuid", limit: 71
    t.string "uuid", limit: 71
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "inventory_uuid", limit: 63
    t.string "inventory_service_uuid", limit: 71
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_c5b5c5a5da"
    t.index ["creator_uuid"], name: "fk_rails_06f9bda8a8"
    t.index ["inventory_id"], name: "index_inventory_services_on_inventory_id"
    t.index ["mandant_id"], name: "fk_rails_2896913136"
    t.index ["mandant_uuid"], name: "fk_rails_574c40e195"
    t.index ["name"], name: "index_inventory_services_on_name", length: 8
    t.index ["state"], name: "index_inventory_services_on_state", length: 8
  end

  create_table "invoice_number_range_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 74
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.text "hierachy_name"
    t.string "title", limit: 1000
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 74
    t.string "history_uuid", limit: 82
  end

  create_table "invoice_number_ranges", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 74, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 74, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.text "hierachy_name"
    t.string "title", limit: 1000
    t.text "description"
    t.index ["f_type"], name: "index_invoice_number_ranges_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_d89b132af6"
    t.index ["parent_uuid"], name: "fk_rails_7c313058c9"
    t.index ["system_type"], name: "index_invoice_number_ranges_on_system_type", length: 2
    t.index ["uuid"], name: "index_invoice_number_ranges_on_uuid", unique: true
  end

  create_table "invoice_transfer_article_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 78, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 78, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 86, comment: "Contains the Universally Unique Identifier of this history element"
    t.datetime "billing_date", precision: nil, comment: "Abrechnungsdatum"
    t.decimal "value_added_tax", precision: 10, scale: 2, comment: "MWST"
    t.string "profit_center_no", limit: 100, comment: "Profitcenter"
    t.string "cost_location", comment: "Kostenstelle"
    t.string "material_no", limit: 30, comment: "Materialnummer"
    t.text "extra_fields", size: :medium, comment: "Extrafelder"
    t.decimal "price_unit_gross", precision: 16, scale: 4
    t.text "group_description", size: :medium, comment: "Rechnungstext (Gruppierung)"
    t.decimal "price_unit", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, comment: "Menge"
    t.integer "reference_history_id", comment: "Referenz-Histiorie-ID"
    t.string "reference_history_uuid", limit: 100, comment: "Referenz-Histiorie-ID"
    t.index ["uuid", "version"], name: "index_invoice_transfer_article_histories_on_uuid_and_version"
  end

  create_table "invoice_transfer_articles", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 78, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 78, comment: "Eltern-UIID"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.datetime "billing_date", precision: nil, comment: "Abrechnungsdatum"
    t.decimal "value_added_tax", precision: 10, scale: 2, comment: "MWST"
    t.string "profit_center_no", limit: 100, comment: "Profitcenter"
    t.string "cost_location", comment: "Kostenstelle"
    t.string "material_no", limit: 30, comment: "Materialnummer"
    t.text "extra_fields", size: :medium, comment: "Extrafelder"
    t.decimal "price_unit_gross", precision: 16, scale: 4
    t.text "group_description", size: :medium, comment: "Rechnungstext (Gruppierung)"
    t.decimal "price_unit", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, comment: "Menge"
    t.integer "reference_history_id", comment: "Referenz-Histiorie-ID"
    t.string "reference_history_uuid", limit: 100, comment: "Referenz-Histiorie-ID"
    t.index ["f_type"], name: "index_invoice_transfer_articles_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_a3e5f479d7"
    t.index ["parent_uuid"], name: "fk_rails_9b65bb5bae"
    t.index ["system_type"], name: "index_invoice_transfer_articles_on_system_type", length: 2
    t.index ["uuid"], name: "index_invoice_transfer_articles_on_uuid", unique: true
  end

  create_table "invoice_transfer_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 70, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, default: "afoot", comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 70, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 78, comment: "Contains the Universally Unique Identifier of this history element"
    t.string "old_customer_name", limit: 150, comment: "Kundenname (Alt)"
    t.string "old_contact_first_name", limit: 150, comment: "Vorname (Alt)"
    t.string "old_contact_last_name", limit: 150, comment: "Nachname (Alt)"
    t.string "old_street", limit: 100, comment: "Straße (Alt)"
    t.string "old_zip_code", limit: 22, comment: "Postleitzahl (Alt)"
    t.string "old_location", limit: 40, comment: "Ort (Alt)"
    t.integer "old_billing_account_id", comment: "Abrechnungskonto (Alt)"
    t.string "old_billing_account_uuid", limit: 100, comment: "Abrechnungskonto (Alt)"
    t.integer "customer_id", comment: "Kunde"
    t.string "customer_uuid", limit: 62, comment: "Kunde"
    t.text "old_receiver", size: :medium, comment: "zus. Empfänger (Alt)"
    t.string "invoice_transfer_type", limit: 100, comment: "Rechn-Umschreibung-Typ"
    t.integer "processor_id", comment: "Bearbeiter"
    t.string "processor_uuid", limit: 58, comment: "Bearbeiter"
    t.boolean "processed", default: false, comment: "bearbeitet"
    t.date "processing_date", comment: "Bearbeitungssdatum"
    t.integer "approver_id", comment: "Genehmiger"
    t.string "approver_uuid", limit: 58, comment: "Genehmiger"
    t.boolean "approved", default: false, comment: "ist gehnehmigt"
    t.date "approval_date", comment: "Genehmigungsdatum"
    t.date "send_date", comment: "Versanddatum"
    t.integer "biller_id", comment: "Abrechner"
    t.string "biller_uuid", limit: 58, comment: "Abrechner"
    t.boolean "billed", default: false, comment: "ist abgerechnet"
    t.datetime "manual_billing_date", precision: nil, comment: "m. Abrechn.-Datum"
    t.date "invoice_transfer_date", comment: "Rechn-Umschreibung-Datum"
    t.text "comment", comment: "Interner Kommentar"
    t.text "manual_billing_comment", size: :medium, comment: "Kommentar für die m. Abrechn."
    t.text "external_comment", size: :medium, comment: "Kurzbeschreibung (Kunde)"
    t.text "manual_billing_mail_attachments", size: :medium, comment: "Anhang für die man. Abrechn."
    t.text "mail_attachments", size: :medium, comment: "Anhänge int. Mail (Bearbeitung)"
    t.decimal "value_added_tax", precision: 10, scale: 2, comment: "MWST"
    t.string "old_contact_phone", limit: 20, comment: "Telefonnr. (Alt)"
    t.string "new_contact_first_name", limit: 150, comment: "Vorname (Neu)"
    t.string "new_contact_last_name", limit: 150, comment: "Nachname (Neu)"
    t.string "new_contact_phone", limit: 20, comment: "Telefonnr. (Neu)"
    t.string "old_sap_customer_no", comment: "SAP-Kunde (Alt)"
    t.string "new_location", limit: 40, comment: "Ort (Neu)"
    t.string "new_street", limit: 100, comment: "Straße (Neu)"
    t.string "new_zip_code", limit: 22, comment: "Postleitzahl (Neu)"
    t.string "new_customer_name", limit: 150, comment: "Kundenname (Neu)"
    t.string "new_sap_customer_no", comment: "SAP-Kunde (Neu)"
    t.text "new_receiver", size: :medium, comment: "zus. Empfänger (Neu)"
    t.integer "new_billing_account_id", comment: "Abrechnungskonto (Neu)"
    t.string "new_billing_account_uuid", limit: 100, comment: "Abrechnungskonto (Neu)"
    t.string "material_no", limit: 30, comment: "Materialnummer"
    t.string "cost_location", comment: "Kostenstelle"
    t.string "wba_no", comment: "WBA-Nummer"
    t.string "profit_center_no", limit: 100, comment: "Profitcenter"
    t.string "old_cost_location", comment: "Kostenstelle (Alt)"
    t.string "old_profit_center_no", limit: 100, comment: "Profitcenter (Alt)"
    t.string "old_vp_no", comment: "Vertriebspartner-Nr (Alt)"
    t.string "old_wba_no", comment: "WBA-Nummer (Alt)"
    t.decimal "old_value_added_tax", precision: 10, scale: 2, comment: "MWST (Alt)"
    t.decimal "new_value_added_tax", precision: 10, scale: 2, comment: "MWST (Neu)"
    t.string "new_vp_no", comment: "Vertriebspartner-Nr (Neu)"
    t.string "new_wba_no", comment: "WBA-Nummer (Neu)"
    t.string "new_profit_center_no", limit: 100, comment: "Profitcenter (Neu)"
    t.string "new_cost_location", comment: "Kostenstelle (Neu)"
    t.boolean "billing_copy_to_processor", default: false, comment: "SAP-Rechn. an Bearbeiter"
    t.boolean "sent", default: false, comment: "sent"
    t.boolean "customer_e_mail_after_billing", default: false, comment: "Kunden-Info nach Abrechnung"
    t.string "new_country", limit: 50, default: "Germany", comment: "Land"
    t.string "old_country", limit: 50, default: "Germany", comment: "Land (Alt)"
    t.index ["uuid", "version"], name: "index_invoice_transfer_histories_on_uuid_and_version"
  end

  create_table "invoice_transfers", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 70, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 70, comment: "Eltern-UIID"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, default: "afoot", comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "old_customer_name", limit: 150, comment: "Kundenname (Alt)"
    t.string "old_contact_first_name", limit: 150, comment: "Vorname (Alt)"
    t.string "old_contact_last_name", limit: 150, comment: "Nachname (Alt)"
    t.string "old_street", limit: 100, comment: "Straße (Alt)"
    t.string "old_zip_code", limit: 22, comment: "Postleitzahl (Alt)"
    t.string "old_location", limit: 40, comment: "Ort (Alt)"
    t.integer "old_billing_account_id", comment: "Abrechnungskonto (Alt)"
    t.string "old_billing_account_uuid", limit: 100, comment: "Abrechnungskonto (Alt)"
    t.integer "customer_id", comment: "Kunde"
    t.string "customer_uuid", limit: 62, comment: "Kunde"
    t.text "old_receiver", size: :medium, comment: "zus. Empfänger (Alt)"
    t.string "invoice_transfer_type", limit: 100, comment: "Rechn-Umschreibung-Typ"
    t.integer "processor_id", comment: "Bearbeiter"
    t.string "processor_uuid", limit: 58, comment: "Bearbeiter"
    t.boolean "processed", default: false, comment: "bearbeitet"
    t.date "processing_date", comment: "Bearbeitungssdatum"
    t.integer "approver_id", comment: "Genehmiger"
    t.string "approver_uuid", limit: 58, comment: "Genehmiger"
    t.boolean "approved", default: false, comment: "ist gehnehmigt"
    t.date "approval_date", comment: "Genehmigungsdatum"
    t.date "send_date", comment: "Versanddatum"
    t.integer "biller_id", comment: "Abrechner"
    t.string "biller_uuid", limit: 58, comment: "Abrechner"
    t.boolean "billed", default: false, comment: "ist abgerechnet"
    t.datetime "manual_billing_date", precision: nil, comment: "m. Abrechn.-Datum"
    t.date "invoice_transfer_date", comment: "Rechn-Umschreibung-Datum"
    t.text "comment", comment: "Interner Kommentar"
    t.text "manual_billing_comment", size: :medium, comment: "Kommentar für die m. Abrechn."
    t.text "external_comment", size: :medium, comment: "Kurzbeschreibung (Kunde)"
    t.text "manual_billing_mail_attachments", size: :medium, comment: "Anhang für die man. Abrechn."
    t.text "mail_attachments", size: :medium, comment: "Anhänge int. Mail (Bearbeitung)"
    t.decimal "value_added_tax", precision: 10, scale: 2, comment: "MWST"
    t.string "old_contact_phone", limit: 20, comment: "Telefonnr. (Alt)"
    t.string "new_contact_first_name", limit: 150, comment: "Vorname (Neu)"
    t.string "new_contact_last_name", limit: 150, comment: "Nachname (Neu)"
    t.string "new_contact_phone", limit: 20, comment: "Telefonnr. (Neu)"
    t.string "old_sap_customer_no", comment: "SAP-Kunde (Alt)"
    t.string "new_location", limit: 40, comment: "Ort (Neu)"
    t.string "new_street", limit: 100, comment: "Straße (Neu)"
    t.string "new_zip_code", limit: 22, comment: "Postleitzahl (Neu)"
    t.string "new_customer_name", limit: 150, comment: "Kundenname (Neu)"
    t.string "new_sap_customer_no", comment: "SAP-Kunde (Neu)"
    t.text "new_receiver", size: :medium, comment: "zus. Empfänger (Neu)"
    t.integer "new_billing_account_id", comment: "Abrechnungskonto (Neu)"
    t.string "new_billing_account_uuid", limit: 100, comment: "Abrechnungskonto (Neu)"
    t.string "material_no", limit: 30, comment: "Materialnummer"
    t.string "cost_location", comment: "Kostenstelle"
    t.string "wba_no", comment: "WBA-Nummer"
    t.string "profit_center_no", limit: 100, comment: "Profitcenter"
    t.string "old_cost_location", comment: "Kostenstelle (Alt)"
    t.string "old_profit_center_no", limit: 100, comment: "Profitcenter (Alt)"
    t.string "old_vp_no", comment: "Vertriebspartner-Nr (Alt)"
    t.string "old_wba_no", comment: "WBA-Nummer (Alt)"
    t.decimal "old_value_added_tax", precision: 10, scale: 2, comment: "MWST (Alt)"
    t.decimal "new_value_added_tax", precision: 10, scale: 2, comment: "MWST (Neu)"
    t.string "new_vp_no", comment: "Vertriebspartner-Nr (Neu)"
    t.string "new_wba_no", comment: "WBA-Nummer (Neu)"
    t.string "new_profit_center_no", limit: 100, comment: "Profitcenter (Neu)"
    t.string "new_cost_location", comment: "Kostenstelle (Neu)"
    t.boolean "billing_copy_to_processor", default: false, comment: "SAP-Rechn. an Bearbeiter"
    t.boolean "sent", default: false, comment: "sent"
    t.boolean "customer_e_mail_after_billing", default: false, comment: "Kunden-Info nach Abrechnung"
    t.string "new_country", limit: 50, default: "Germany", comment: "Land"
    t.string "old_country", limit: 50, default: "Germany", comment: "Land (Alt)"
    t.index ["f_type"], name: "index_invoice_transfers_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_fe52c93833"
    t.index ["parent_uuid"], name: "fk_rails_153d5fb89c"
    t.index ["system_type"], name: "index_invoice_transfers_on_system_type", length: 2
    t.index ["uuid"], name: "index_invoice_transfers_on_uuid", unique: true
  end

  create_table "letter_creators", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "recipient_name"
    t.string "event_name"
    t.datetime "date_and_time"
    t.string "location"
    t.string "recipient_likes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "letters", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.bigint "letter_creator_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["letter_creator_id"], name: "index_letters_on_letter_creator_id"
  end

  create_table "link_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :long
    t.float "version", limit: 53, default: 0.0
    t.string "f_type", limit: 100
    t.text "tags", size: :medium
    t.string "state"
    t.text "name", size: :medium
    t.text "controller_name", size: :medium
    t.text "action_name", size: :medium
    t.text "id_key", size: :medium
    t.text "url", size: :medium
    t.text "onclick", size: :medium
    t.boolean "include_search_link", default: false, comment: "include_search_link"
    t.text "title", size: :medium
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "Historie-Datum"
    t.bigint "history_user_id", comment: "Historie-Benutzer"
    t.bigint "original_id", comment: "Original-ID"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 63
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 71
    t.string "system_type"
    t.float "reference_version", limit: 53, default: 0.0
    t.float "parent_version", limit: 53, default: 0.0
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 63
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "target", limit: 50, default: "_self"
    t.text "main_link", size: :medium
    t.text "edit_link", size: :medium
    t.text "search_link", size: :medium
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.boolean "reload_allways_link", default: false, comment: "Link immer neu laden"
  end

  create_table "link_item_join_groups", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "link_item_id"
    t.integer "group_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "group_uuid", limit: 59
    t.string "link_item_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["group_id"], name: "fk_rails_c572125058"
    t.index ["link_item_uuid"], name: "fk_rails_3161174ebf"
    t.index ["mandant_id"], name: "fk_rails_314e80fcb5"
  end

  create_table "link_item_join_mandants", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "link_item_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "link_item_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["link_item_uuid"], name: "fk_rails_e0bb07733e"
    t.index ["mandant_id"], name: "fk_rails_2bcb8d24da"
  end

  create_table "link_item_join_roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "link_item_id"
    t.integer "role_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "role_uuid", limit: 58
    t.string "link_item_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["link_item_uuid"], name: "fk_rails_8ef47427ef"
    t.index ["mandant_id"], name: "fk_rails_fd7d9f329a"
    t.index ["role_id"], name: "fk_rails_8a5411a04a"
    t.index ["role_uuid"], name: "fk_rails_6a42a7298d"
  end

  create_table "link_item_join_users", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "link_item_id"
    t.integer "user_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "user_uuid", limit: 58
    t.string "link_item_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["link_item_uuid"], name: "fk_rails_756ef0f085"
    t.index ["mandant_id"], name: "fk_rails_f87d6f4753"
    t.index ["user_id"], name: "fk_rails_ae22921695"
  end

  create_table "link_items", id: { comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant-ID"
    t.bigint "parent_id", comment: "Eltern-Element"
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :long
    t.float "version", limit: 53, default: 0.0
    t.string "f_type", limit: 100
    t.string "state"
    t.text "tags", size: :medium
    t.text "name", size: :medium
    t.text "controller_name", size: :medium
    t.text "action_name", size: :medium
    t.text "id_key", size: :medium
    t.text "url", size: :medium
    t.text "onclick", size: :medium
    t.text "title", size: :medium
    t.text "description", size: :medium
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.boolean "include_search_link", default: false, comment: "include_search_link"
    t.string "uuid", limit: 63
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 63
    t.string "system_type"
    t.float "reference_version", limit: 53, default: 0.0
    t.float "parent_version", limit: 53, default: 0.0
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "target", limit: 50, default: "_self"
    t.text "main_link", size: :medium
    t.text "edit_link", size: :medium
    t.text "search_link", size: :medium
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.boolean "reload_allways_link", default: false, comment: "Link immer neu laden"
    t.index ["f_type"], name: "index_link_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_60d9418e14"
    t.index ["parent_uuid"], name: "fk_rails_4c1cf2a4ed"
    t.index ["system_type"], name: "index_link_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_link_items_on_uuid", unique: true
  end

  create_table "lookup_group_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "name", limit: 50, comment: "Name"
    t.decimal "position", precision: 10, comment: "Position"
    t.boolean "active", default: true, comment: "Aktiv"
    t.text "description", comment: "Beschreibung"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.decimal "version", precision: 10, default: "0", comment: "Version"
    t.text "save_info", size: :long, comment: "Original-Info"
    t.integer "original_id", comment: "Original-ID"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "Historie-Datum"
    t.string "history_user_id", limit: 100
    t.string "title", limit: 70, comment: "Titel"
    t.integer "creator_id", comment: "Ersteller"
    t.string "state", limit: 50, comment: "Status"
    t.string "uuid", limit: 66, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 74
    t.string "system_type", comment: "Systemtyp"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 66
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.string "mandant_uuids", limit: 150, comment: "Mandant"
    t.boolean "select_current_mandant", default: false, comment: "Mandant auswählen?"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.string "validation_regex_for_name", limit: 250, comment: "Validierung-Name"
    t.text "validation_text_for_name", size: :medium, comment: "Validierungstext-Name"
    t.string "validation_regex_for_title", limit: 250, comment: "Validierung-Titel"
    t.text "validation_text_for_title", size: :medium, comment: "Validierungstext-Titel"
    t.index ["creator_id"], name: "fk_rails_821c226bf5"
    t.index ["creator_uuid"], name: "fk_rails_8bb68f6abf"
    t.index ["mandant_id"], name: "fk_rails_a2730cf327"
    t.index ["mandant_uuid"], name: "fk_rails_bdf7513c9f"
  end

  create_table "lookup_group_join_role_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lookup_group_id"
    t.integer "role_id"
    t.string "lookup_group_uuid", limit: 66
    t.string "role_uuid", limit: 58
    t.integer "history_lookup_group_id"
    t.integer "history_role_id"
    t.string "history_lookup_group_uuid", limit: 150
    t.string "history_role_uuid", limit: 150
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "history_info", size: :long
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 150
  end

  create_table "lookup_group_join_roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lookup_group_id"
    t.integer "role_id"
    t.string "lookup_group_uuid", limit: 66
    t.string "role_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.index ["uuid"], name: "index_lookup_group_join_roles_on_uuid", unique: true
  end

  create_table "lookup_groups", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "name", limit: 50, comment: "Name"
    t.decimal "position", precision: 10, comment: "Position"
    t.boolean "active", default: true, comment: "Aktiv"
    t.text "description", comment: "Beschreibung"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.decimal "version", precision: 10, default: "0", comment: "Version"
    t.text "save_info", size: :long, comment: "Original-Info"
    t.string "title", limit: 70, comment: "Titel"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.integer "creator_id", comment: "Ersteller"
    t.string "state", limit: 50, comment: "Status"
    t.string "uuid", limit: 66, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 66, comment: "Eltern-UIID"
    t.string "system_type", comment: "Systemtyp"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.string "mandant_uuids", limit: 150, comment: "Mandant"
    t.boolean "select_current_mandant", default: false, comment: "Mandant auswählen?"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.string "validation_regex_for_name", limit: 250, comment: "Validierung-Name"
    t.text "validation_text_for_name", size: :medium, comment: "Validierungstext-Name"
    t.string "validation_regex_for_title", limit: 250, comment: "Validierung-Titel"
    t.text "validation_text_for_title", size: :medium, comment: "Validierungstext-Titel"
    t.index ["creator_id"], name: "fk_rails_e9ffb2dfa3"
    t.index ["creator_uuid"], name: "fk_rails_28e44a2bf4"
    t.index ["f_type"], name: "index_lookup_groups_on_f_type", length: 10
    t.index ["mandant_id"], name: "fk_rails_369108acbd"
    t.index ["mandant_uuid"], name: "fk_rails_947c337a49"
    t.index ["name"], name: "index_lookup_groups_on_name", length: 10
    t.index ["parent_id"], name: "fk_rails_9960ab5f8c"
    t.index ["parent_uuid"], name: "fk_rails_638960ba65"
    t.index ["system_type"], name: "index_lookup_groups_on_system_type", length: 2
    t.index ["uuid"], name: "index_lookup_groups_on_uuid", unique: true
  end

  create_table "lookup_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "title", limit: 150
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.integer "lookup_group_id", comment: "Eltern-Element"
    t.string "name", limit: 150
    t.text "description", size: :medium
    t.float "position", limit: 53
    t.boolean "active", default: true, comment: "Aktiv"
    t.integer "mandant_id"
    t.text "history_info", size: :long
    t.string "history_user_id", limit: 100
    t.datetime "history_date", precision: nil, comment: "Historie-Datum"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "original_id", comment: "Original-ID"
    t.text "tags"
    t.string "f_type", limit: 100
    t.string "uuid", limit: 60
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 60, comment: "Eltern-Element"
    t.string "history_uuid", limit: 68
    t.string "system_type"
    t.string "lookup_group_uuid", limit: 66, comment: "Gruppen-UIID"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 60
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "creator_id", comment: "Ersteller"
    t.string "creator_uuid", limit: 58
    t.string "value", limit: 1000
    t.text "mandant_uuids", size: :medium
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.integer "parent_id", comment: "Eltern-Element"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
  end

  create_table "lookup_join_role_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lookup_id"
    t.integer "role_id"
    t.string "lookup_uuid", limit: 60
    t.string "role_uuid", limit: 58
    t.integer "history_lookup_id"
    t.integer "history_role_id"
    t.string "history_lookup_uuid"
    t.string "history_role_uuid"
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", comment: "Contains the Universally Unique Identifier of this history element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
  end

  create_table "lookup_join_roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "lookup_id"
    t.integer "role_id"
    t.string "lookup_uuid", limit: 60
    t.string "role_uuid", limit: 58
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
    t.index ["uuid"], name: "index_lookup_join_roles_on_uuid", unique: true
  end

  create_table "lookups", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "title", limit: 150
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.integer "lookup_group_id", comment: "Eltern-Element"
    t.string "name", limit: 150
    t.text "description", size: :medium
    t.float "position", limit: 53
    t.boolean "active", default: true, comment: "Aktiv"
    t.integer "mandant_id"
    t.text "history_info", size: :long
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.text "tags"
    t.string "f_type", limit: 100
    t.string "uuid", limit: 60
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "system_type"
    t.string "lookup_group_uuid", limit: 66, comment: "Gruppen-UIID"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "creator_id", comment: "Ersteller"
    t.string "creator_uuid", limit: 58
    t.string "value", limit: 1000
    t.datetime "history_date", precision: nil, comment: "Historie-Datum"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.text "mandant_uuids", size: :medium
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.integer "parent_id", comment: "Eltern-Element"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.index ["f_type"], name: "index_lookups_on_f_type", length: 2
    t.index ["lookup_group_id"], name: "fk_rails_9ca3c2a519"
    t.index ["lookup_group_uuid"], name: "fk_rails_265f037e0b"
    t.index ["mandant_uuid"], name: "fk_rails_9d4111f14b"
    t.index ["system_type"], name: "index_lookups_on_system_type", length: 2
    t.index ["uuid"], name: "index_lookups_on_uuid", unique: true
  end

  create_table "mandant_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "name", limit: 50
    t.text "description", size: :medium
    t.boolean "deprecated_preselected", default: false, comment: "preselected"
    t.float "position", limit: 53
    t.string "sis_organization_no", limit: 20
    t.boolean "deprecated_sis_group", default: false, comment: "sis_group"
    t.string "code", limit: 30, comment: "Code"
    t.integer "parent_id", comment: "Eltern-Element"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.float "version", limit: 53, default: 0.0
    t.integer "creator_id", comment: "creator_id"
    t.text "save_info", size: :long
    t.integer "original_id"
    t.text "history_info", size: :long
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "title", limit: 150
    t.boolean "deprecated_enable_inventory_order_process", default: false, comment: "enable_inventory_order_process"
    t.string "uuid", limit: 61
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 69
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.string "reference_model"
    t.integer "reference_id", comment: "Referenz-ID"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.float "reference_version", limit: 53, default: 0.0
    t.float "parent_version", limit: 53, default: 0.0
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 61
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "sender_fax", limit: 25
    t.string "sender_first_name", limit: 30
    t.string "sender_last_name", limit: 30
    t.string "sender_mail", limit: 100
    t.string "sender_phone", limit: 25
    t.string "sender_house_number", limit: 10
    t.string "sender_location", limit: 40
    t.string "sender_name", limit: 150
    t.string "sender_street", limit: 100
    t.string "sender_zip_code", limit: 10
    t.text "footer_enterprise", size: :medium
    t.text "footer_bank", size: :medium
    t.text "footer_description", size: :medium
    t.string "sender_service_time", limit: 100
    t.text "sender_contact", size: :medium
    t.string "iban", limit: 100
    t.string "bank_name", limit: 100
    t.string "bic", limit: 100
    t.text "sender_contact_international", size: :medium
    t.text "footer_bank_international", size: :medium
    t.text "footer_description_international", size: :medium
    t.text "footer_enterprise_international", size: :medium
    t.text "mail_signature", size: :medium
    t.text "mail_signature_international", size: :medium
    t.string "sender_country", limit: 50, default: "Germany"
    t.boolean "enable_iso_certificate_27001", default: true, comment: "Zertifikat 27001 Aktiv?"
    t.string "sender_service_time_international", limit: 100
    t.string "sender_url", limit: 100
    t.text "sender_contact_eu", size: :medium
    t.text "footer_bank_eu", size: :medium
    t.text "footer_description_eu", size: :medium
    t.text "footer_enterprise_eu", size: :medium
    t.string "sender_service_time_eu", limit: 100
    t.text "mail_signature_eu", size: :medium
    t.text "footer_description_international_eu", size: :medium
    t.string "sender_country_code", limit: 5, default: "DE"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.binary "logo_image", size: :medium, comment: "Kundenlogo"
    t.binary "signature_image", size: :medium, comment: "Unterschrift-Logo"
    t.string "signature_text", limit: 100, comment: "Unterschrift-Textformat"
    t.text "footer_separator_text", size: :tiny, comment: "Footer Separator (Deutsch)"
    t.text "footer_separator_text_international", size: :tiny, comment: "Footer Separator (Internat.)"
    t.binary "certificate_image", size: :medium, comment: "Zertifikat"
    t.boolean "certificate_image_compressed", default: false, comment: "Logo komprmiert?"
    t.string "certificate_image_content_type", limit: 250, comment: "Logo-Content-Type"
    t.string "certificate_image_file_name", limit: 250, comment: "Logo-File-Name"
    t.boolean "logo_image_compressed", default: false, comment: "Logo komprmiert?"
    t.string "logo_image_content_type", limit: 250, comment: "Logo-Content-Type"
    t.string "logo_image_file_name", limit: 250, comment: "Logo-File-Name"
    t.boolean "signature_image_compressed", default: false, comment: "Signature_image komprmiert?"
    t.string "signature_image_content_type", limit: 250, comment: "Signature_image-Content-Type"
    t.string "signature_image_file_name", limit: 250, comment: "Signature_image-File-Name"
    t.index ["creator_id"], name: "fk_rails_c8efca0474"
    t.index ["creator_uuid"], name: "fk_rails_a463384893"
    t.index ["mandant_id"], name: "fk_rails_d060b5ed0a"
    t.index ["mandant_uuid"], name: "fk_rails_8f85d6de3c"
  end

  create_table "mandant_join_widget_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "mandant_id"
    t.integer "widget_item_id"
    t.string "mandant_uuid", limit: 61
    t.string "widget_item_uuid", limit: 65
    t.integer "history_mandant_id"
    t.integer "history_widget_item_id"
    t.string "history_mandant_uuid"
    t.string "history_widget_item_uuid"
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", comment: "Contains the Universally Unique Identifier of this history element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
  end

  create_table "mandant_join_widget_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "mandant_id"
    t.integer "widget_item_id"
    t.string "mandant_uuid", limit: 61
    t.string "widget_item_uuid", limit: 65
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
    t.index ["uuid"], name: "index_mandant_join_widget_items_on_uuid", unique: true
  end

  create_table "mandants", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 50
    t.text "description", size: :medium
    t.boolean "deprecated_preselected", default: false, comment: "preselected"
    t.float "position", limit: 53
    t.string "sis_organization_no", limit: 20
    t.boolean "deprecated_sis_group", default: false, comment: "sis_group"
    t.string "code", limit: 30, comment: "Code"
    t.integer "parent_id", comment: "Eltern-Element"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.float "version", limit: 53, default: 0.0
    t.integer "creator_id", comment: "creator_id"
    t.text "save_info", size: :long
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "title", limit: 150
    t.boolean "deprecated_enable_inventory_order_process", default: false, comment: "enable_inventory_order_process"
    t.string "uuid", limit: 61
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 61
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.string "reference_model"
    t.integer "reference_id", comment: "Referenz-ID"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.float "reference_version", limit: 53, default: 0.0
    t.float "parent_version", limit: 53, default: 0.0
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "sender_fax", limit: 25
    t.string "sender_first_name", limit: 30
    t.string "sender_last_name", limit: 30
    t.string "sender_mail", limit: 100
    t.string "sender_phone", limit: 25
    t.string "sender_house_number", limit: 10
    t.string "sender_location", limit: 40
    t.string "sender_name", limit: 150
    t.string "sender_street", limit: 100
    t.string "sender_zip_code", limit: 10
    t.text "footer_enterprise", size: :medium
    t.text "footer_bank", size: :medium
    t.text "footer_description", size: :medium
    t.string "sender_service_time", limit: 100
    t.text "sender_contact", size: :medium
    t.string "iban", limit: 100
    t.string "bank_name", limit: 100
    t.string "bic", limit: 100
    t.text "sender_contact_international", size: :medium
    t.text "footer_bank_international", size: :medium
    t.text "footer_description_international", size: :medium
    t.text "footer_enterprise_international", size: :medium
    t.text "mail_signature", size: :medium
    t.text "mail_signature_international", size: :medium
    t.string "sender_country", limit: 50, default: "Germany"
    t.boolean "enable_iso_certificate_27001", default: true, comment: "Zertifikat 27001 Aktiv?"
    t.string "sender_service_time_international", limit: 100
    t.string "sender_url", limit: 100
    t.text "sender_contact_eu", size: :medium
    t.text "footer_bank_eu", size: :medium
    t.text "footer_description_eu", size: :medium
    t.text "footer_enterprise_eu", size: :medium
    t.string "sender_service_time_eu", limit: 100
    t.text "mail_signature_eu", size: :medium
    t.text "footer_description_international_eu", size: :medium
    t.string "sender_country_code", limit: 5, default: "DE"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.binary "logo_image", size: :medium, comment: "Kundenlogo"
    t.binary "signature_image", size: :medium, comment: "Unterschrift-Logo"
    t.string "signature_text", limit: 100, comment: "Unterschrift-Textformat"
    t.text "footer_separator_text", size: :tiny, comment: "Footer Separator (Deutsch)"
    t.text "footer_separator_text_international", size: :tiny, comment: "Footer Separator (Internat.)"
    t.binary "certificate_image", size: :medium, comment: "Zertifikat"
    t.boolean "certificate_image_compressed", default: false, comment: "Logo komprmiert?"
    t.string "certificate_image_content_type", limit: 250, comment: "Logo-Content-Type"
    t.string "certificate_image_file_name", limit: 250, comment: "Logo-File-Name"
    t.boolean "logo_image_compressed", default: false, comment: "Logo komprmiert?"
    t.string "logo_image_content_type", limit: 250, comment: "Logo-Content-Type"
    t.string "logo_image_file_name", limit: 250, comment: "Logo-File-Name"
    t.boolean "signature_image_compressed", default: false, comment: "Signature_image komprmiert?"
    t.string "signature_image_content_type", limit: 250, comment: "Signature_image-Content-Type"
    t.string "signature_image_file_name", limit: 250, comment: "Signature_image-File-Name"
    t.index ["creator_id"], name: "fk_rails_eaa773ba04"
    t.index ["creator_uuid"], name: "fk_rails_e979daf6aa"
    t.index ["f_type"], name: "index_mandants_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_3007dbb3d4"
    t.index ["mandant_uuid"], name: "fk_rails_84f1fde94f"
    t.index ["parent_id"], name: "fk_rails_c2d40e0efb"
    t.index ["parent_uuid"], name: "fk_rails_9969faf5d6"
    t.index ["system_type"], name: "index_mandants_on_system_type", length: 2
    t.index ["uuid"], name: "index_mandants_on_uuid", unique: true
  end

  create_table "message_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.text "content", size: :medium
    t.integer "user_id"
    t.integer "chatroom_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "url", limit: 3000
    t.string "url_title", limit: 1000
    t.string "receiver_id", limit: 3000
    t.datetime "publish_date", precision: nil
    t.boolean "puplished", default: false
    t.boolean "send_mail", default: false
    t.string "f_type", limit: 100, default: "chat-message"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.string "reference_model", limit: 100
    t.integer "reference_id"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "subject", limit: 2500
    t.integer "original_id"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil
    t.integer "history_user_id"
    t.string "uuid", limit: 61
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 69
    t.string "system_type"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.float "position", limit: 53
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "state"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 61
    t.string "chatroom_uuid", limit: 62
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["chatroom_id"], name: "fk_rails_52782b072a"
    t.index ["creator_id"], name: "fk_rails_7c4a0b011a"
    t.index ["creator_uuid"], name: "fk_rails_2ef0f61d39"
    t.index ["mandant_uuid"], name: "fk_rails_91b9eb611f"
    t.index ["user_id"], name: "fk_rails_b724557a24"
  end

  create_table "messages", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "content", size: :medium
    t.integer "user_id"
    t.integer "chatroom_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.string "url", limit: 3000
    t.string "url_title", limit: 1000
    t.string "receiver_id", limit: 3000
    t.datetime "publish_date", precision: nil
    t.boolean "puplished", default: false
    t.boolean "send_mail", default: false
    t.string "f_type", limit: 100, default: "chat-message"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.string "reference_model", limit: 100
    t.integer "reference_id"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "subject", limit: 2500
    t.string "uuid", limit: 61
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 61
    t.string "system_type"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.float "position", limit: 53
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "state"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "chatroom_uuid", limit: 62
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["chatroom_uuid"], name: "fk_rails_b8c794bb37"
    t.index ["creator_id"], name: "fk_rails_761a2f12b3"
    t.index ["f_type"], name: "index_messages_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_8be7be363b"
    t.index ["parent_id"], name: "fk_rails_aafcb31dbf"
    t.index ["parent_uuid"], name: "fk_rails_afde216749"
    t.index ["system_type"], name: "index_messages_on_system_type", length: 2
    t.index ["user_id"], name: "index_messages_on_user_id"
    t.index ["uuid"], name: "index_messages_on_uuid", unique: true
  end

  create_table "notification_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "uuid", limit: 66
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.text "tags"
    t.string "state"
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 74
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 66
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_403e1f8eb2"
    t.index ["mandant_id"], name: "fk_rails_b4cda2bc39"
  end

  create_table "notifications", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 66
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 66
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags"
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_cc62845c82"
    t.index ["f_type"], name: "index_notifications_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_96781279ee"
    t.index ["parent_id"], name: "fk_rails_275627f2bf"
    t.index ["parent_uuid"], name: "fk_rails_402707d8d5"
    t.index ["system_type"], name: "index_notifications_on_system_type", length: 2
    t.index ["uuid"], name: "index_notifications_on_uuid", unique: true
  end

  create_table "on_prem", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "VERTRAG_NR", limit: 8, collation: "utf8mb3_general_ci"
    t.string "Typ", limit: 46, collation: "utf8mb3_general_ci"
    t.string "Servicelevel", limit: 68, collation: "utf8mb3_general_ci"
    t.string "AUFTRAGDATUM", limit: 8, collation: "utf8mb3_general_ci"
    t.string "STARTDATUM_Fertigstellung", limit: 8, collation: "utf8mb3_general_ci"
    t.string "Vertragslaufzeit_Monate", limit: 3, collation: "utf8mb3_general_ci"
    t.string "VLZ_Beginn_Billing_date_oder_billing_beginning_date", limit: 10, collation: "utf8mb3_general_ci"
    t.string "Endebzw_ENDEDATUM_Billing_date_oder_K_ndigungsdatum_bei_Miete", limit: 10, collation: "utf8mb3_general_ci"
    t.string "ENDEDATUM", limit: 8, collation: "utf8mb3_general_ci"
    t.string "STATUS_VERTRAGORDER_STATUS", limit: 9, collation: "utf8mb3_general_ci"
    t.integer "EASY_KONTO"
    t.bigint "HAUPTKONTO"
    t.bigint "ACCT_NUMBER"
    t.string "Kunde", limit: 107, collation: "utf8mb3_general_ci"
    t.string "KUNDENSEGMENT", limit: 7, collation: "utf8mb3_general_ci"
    t.string "Vertriebsbeauftragter", limit: 22, collation: "utf8mb3_general_ci"
    t.string "TK_Anlagentyp", limit: 52, collation: "utf8mb3_general_ci"
    t.string "CPU_IDMAC_Adresse", limit: 28, collation: "utf8mb3_general_ci"
    t.string "Standort_von_Hauptanlage", limit: 34, collation: "utf8mb3_general_ci"
    t.string "Fernwartung", limit: 2, collation: "utf8mb3_general_ci"
    t.string "Internes_Subsystem", limit: 76, collation: "utf8mb3_general_ci"
    t.string "Externes_Subsystem", limit: 35, collation: "utf8mb3_general_ci"
    t.integer "Serviceende_Subsystem"
    t.string "innovaphoneGateway", limit: 6, collation: "utf8mb3_general_ci"
    t.string "innovaphoneIPVA", limit: 4, collation: "utf8mb3_general_ci"
    t.string "innovaphoneStandby", limit: 4, collation: "utf8mb3_general_ci"
    t.string "innovaphoneSMB", limit: 4, collation: "utf8mb3_general_ci"
    t.string "innovaphoneVersion", limit: 3, collation: "utf8mb3_general_ci"
    t.string "innovaphoneReverse_Proxy", limit: 4, collation: "utf8mb3_general_ci"
    t.integer "innovaphoneAnzahl_Ports"
    t.string "innovaphoneSSA_Ablauf", limit: 10, collation: "utf8mb3_general_ci"
    t.integer "Kommentarfeld_Historie_Letzte_nderung"
    t.string "BRM_ID", limit: 5, collation: "utf8mb3_general_ci"
    t.string "BRM_Link", limit: 244, collation: "utf8mb3_general_ci"
    t.string "Column_35", limit: 1, collation: "utf8mb3_general_ci"
  end

  create_table "order_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "original_id"
    t.string "customer_order_no", limit: 50
    t.string "storno_order", limit: 20, comment: "Storno-Auftrag"
    t.date "order_date"
    t.string "f_type", limit: 32
    t.string "customer_number", limit: 20
    t.string "contact_title", limit: 4
    t.string "contact_first_name", limit: 30
    t.string "contact_last_name", limit: 30
    t.string "contact_phone", limit: 35, comment: "Auftraggeber Telefonnr."
    t.string "contact_fax", limit: 20
    t.string "contact_mail", limit: 100
    t.string "at_reference", limit: 50
    t.string "contract_no", limit: 14
    t.string "contract_name", limit: 25
    t.string "contract_no_old", limit: 14
    t.string "contract_name_old", limit: 15
    t.string "product", limit: 100
    t.string "product_old", limit: 100
    t.string "product_name", limit: 150, comment: "Produktname"
    t.string "onkz_a", limit: 9
    t.string "onkz_b", limit: 9
    t.string "indenture_number", limit: 40
    t.string "sla", limit: 25
    t.date "desired_schedule"
    t.date "desired_schedule_old"
    t.string "short_text"
    t.text "special_request"
    t.string "call_no_block", limit: 20
    t.string "tel_2", limit: 20
    t.string "tel_3", limit: 20
    t.string "institut_a", limit: 5
    t.string "institute_name_a", limit: 80
    t.string "branch_name_a", limit: 75
    t.string "street_a", limit: 50
    t.string "house_number_a", limit: 15, comment: "Hausnummer A"
    t.string "zip_code_a", limit: 22
    t.string "location_a", limit: 40
    t.string "room_a", limit: 30
    t.string "branch_name_a_old", limit: 60, comment: "Geschäftsst. A (alt)"
    t.string "street_a_old", limit: 50
    t.string "house_number_a_old", limit: 15, comment: "Hausnummer A (alt)"
    t.string "zip_code_a_old", limit: 22
    t.string "location_a_old", limit: 40
    t.string "room_a_old", limit: 30
    t.string "apl_a", limit: 20
    t.string "apl_description_a", limit: 64
    t.string "contact_title_a", limit: 4
    t.string "contact_first_name_a", limit: 30
    t.string "contact_last_name_a", limit: 30
    t.string "contact_phone_a", limit: 35, comment: "Ansprechpartner A Telefonnr."
    t.string "contact_fax_a", limit: 50, comment: "Ansprechpartner A Faxnr."
    t.string "terminal_a", limit: 20
    t.string "model_a", limit: 15
    t.string "interface_a", limit: 100
    t.text "special_request_a"
    t.string "institut_b", limit: 5
    t.string "institute_name_b", limit: 80
    t.string "branch_name_b", limit: 45
    t.string "street_b", limit: 50
    t.string "house_number_b", limit: 15, comment: "Hausnummer B"
    t.string "zip_code_b", limit: 22
    t.string "location_b", limit: 40
    t.string "room_b", limit: 30
    t.string "branch_name_b_old", limit: 45
    t.string "street_b_old", limit: 50
    t.string "house_number_b_old", limit: 15, comment: "Hausnummer B (alt)"
    t.string "zip_code_b_old", limit: 22
    t.string "location_b_old", limit: 40
    t.string "room_b_old", limit: 30
    t.string "apl_b", limit: 15
    t.string "apl_description_b", limit: 64
    t.string "contact_title_b", limit: 4
    t.string "contact_first_name_b", limit: 30
    t.string "contact_last_name_b", limit: 30
    t.string "contact_phone_b", limit: 35, comment: "Ansprechpartner B Telefonnr."
    t.string "contact_fax_b", limit: 20
    t.string "terminal_b", limit: 20
    t.string "model_b", limit: 15
    t.string "interface_b", limit: 100
    t.text "special_request_b"
    t.string "cpe1", limit: 33
    t.string "loopback_cpe1", limit: 33
    t.string "cpe2", limit: 33
    t.string "loopback_cpe2", limit: 33
    t.string "hsrp", limit: 33
    t.string "accounting_nr", limit: 15
    t.string "fkto", limit: 15
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.integer "min_hire_time"
    t.string "customer", limit: 100
    t.string "contractor", limit: 32
    t.string "reference_number", limit: 50
    t.string "vrz_identifier", limit: 1
    t.string "instance_name"
    t.string "state", limit: 55, default: "new", comment: "Status"
    t.string "state_info", limit: 50
    t.string "inventory_id", limit: 15, default: "0"
    t.integer "lock_user_id", default: 0
    t.date "mail_received"
    t.boolean "sent_last", default: false
    t.string "note_type", limit: 10
    t.string "note_ack", limit: 3
    t.date "note_date"
    t.string "note_time"
    t.string "order_no", limit: 10
    t.date "date_qeb"
    t.date "date_ab"
    t.date "date_bza"
    t.date "date_fm"
    t.text "comment"
    t.string "hostname_cpe1", limit: 70
    t.string "hostname_cpe2", limit: 50
    t.text "remarks"
    t.string "order_type_tsi", limit: 50
    t.string "call_number_2", limit: 30
    t.string "call_number_3", limit: 30
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "history_type", default: "update"
    t.text "old_comment", size: :medium
    t.string "indenture_number_from_customer", limit: 40
    t.datetime "history_date", precision: nil
    t.string "survey_order_detail_no", limit: 30
    t.string "survey_contact_mail_a", limit: 250
    t.string "survey_carrier_contract", limit: 50
    t.string "survey_preexplore_desired_date", limit: 20
    t.string "oasb", limit: 20
    t.integer "history_user_id"
    t.string "create_type", limit: 100, default: "fi-xml-import"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "order_change_type", limit: 50, default: ""
    t.string "contact_mail_a"
    t.string "contact_mail_b"
    t.text "customer_remark"
    t.integer "customer_id"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.text "history_info", size: :long
    t.string "uuid", limit: 150
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 59, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 67
    t.string "system_type", limit: 50, comment: "Systemtyp"
    t.integer "parent_id", comment: "Eltern-Element"
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 59
    t.string "inventory_uuid", limit: 63
    t.string "customer_uuid", limit: 62
    t.text "customer_comment", size: :medium
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name", comment: "unique/shortcut hierarchy name of an data set (example MCE-004M)"
    t.text "ipbsa_response_key", size: :medium, comment: "IPBSA-Rückm.-Schlüssel"
    t.text "ipbsa_response_text", comment: "IPBSA-Rückm.-Text"
    t.integer "research_item_id", comment: "IPBSA-Element"
    t.string "research_item_uuid", limit: 150
    t.string "leased_line_no", limit: 50
    t.boolean "is_secondary_completed", default: false, comment: "Sekundär fertig gestellt"
    t.boolean "is_primary_completed", default: false, comment: "Primär fertig gestellt"
    t.boolean "is_project", comment: "Projekt"
    t.date "date_ab_old", comment: "1. AB Termin"
    t.integer "processor_id", comment: "Bearbeiter"
    t.string "processor_uuid", limit: 58, comment: "Bearbeiter"
    t.text "reason_for_shift_for_ab", comment: "Grund der Verschiebung (AB)"
    t.datetime "one_click_finish_date", precision: nil, comment: "One-Click-Datum"
    t.integer "new_inventory_id", comment: "Neuer Bestand"
    t.string "new_inventory_uuid", limit: 150, comment: "Neuer Bestand"
    t.decimal "provisioning_suspended_days", precision: 10, scale: 2, comment: "Bereitstellung angehalten"
    t.decimal "binding_delivery_suspended_days", precision: 10, scale: 2, comment: "Lieferzeit angehalten"
    t.integer "sla_item_id", comment: "SLA"
    t.string "sla_item_uuid", limit: 62, comment: "SLA"
    t.string "customer_order_guid", comment: "Auftrag (GUID)"
    t.integer "product_id", comment: "Produkt"
    t.string "product_uuid", limit: 61, comment: "Produkt"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["mandant_id"], name: "fk_rails_b29bec372a"
    t.index ["original_id"], name: "index_order_histories_on_original_id"
    t.index ["parent_id"], name: "fk_rails_d390f02ebb"
    t.index ["parent_uuid"], name: "fk_rails_36246c7540"
    t.index ["product_id"], name: "fk_rails_51ea291dfb"
    t.index ["product_uuid"], name: "fk_rails_9bb72d60f1"
  end

  create_table "order_product_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "survey_order_detail_no", limit: 100, default: ""
    t.string "product_name", limit: 100, default: ""
    t.string "result", limit: 100, default: ""
    t.string "carrier", limit: 100
    t.string "research_no", limit: 100, default: ""
    t.string "physical_change", limit: 100, default: ""
    t.string "desired_date", default: ""
    t.string "apl_remark", limit: 250
    t.string "remark", limit: 2048, default: ""
    t.integer "order_id"
    t.integer "original_id", default: 0
    t.integer "history_order_id", default: 0
    t.date "history_date"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "history_type", limit: 50, default: "update"
    t.integer "history_user_id"
    t.integer "mandant_id", default: 34
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.text "history_info", size: :long
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "parent_uuid", limit: 150
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "reference_uuid", limit: 150
    t.string "uuid", limit: 150
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "history_uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 150
    t.string "order_uuid", limit: 59
    t.string "history_order_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.string "ipbsa_response_text"
    t.string "ipbsa_response_key"
    t.integer "research_item_id", comment: "IPBSA-Element"
    t.string "research_item_uuid", limit: 150
    t.index ["mandant_id"], name: "fk_rails_5460b787bf"
  end

  create_table "order_products", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "survey_order_detail_no", limit: 100
    t.string "product_name", limit: 100, default: ""
    t.string "result", limit: 100, default: ""
    t.string "carrier", limit: 100
    t.string "research_no", limit: 100, default: ""
    t.string "physical_change", limit: 100, default: ""
    t.string "desired_date", default: ""
    t.string "apl_remark", limit: 250
    t.string "remark", limit: 2048, default: ""
    t.integer "order_id"
    t.integer "original_id", default: 0
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "mandant_id", default: 34
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "parent_uuid", limit: 150
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "reference_uuid", limit: 150
    t.string "uuid", limit: 150
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "order_uuid", limit: 59
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.string "ipbsa_response_text"
    t.string "ipbsa_response_key"
    t.integer "research_item_id", comment: "IPBSA-Element"
    t.string "research_item_uuid", limit: 150
    t.index ["f_type"], name: "index_order_products_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_12d1eeb9fa"
    t.index ["parent_id"], name: "fk_rails_1d81c4fd74"
    t.index ["parent_uuid"], name: "fk_rails_bfa5f9ed7e"
    t.index ["system_type"], name: "index_order_products_on_system_type", length: 2
    t.index ["uuid"], name: "index_order_products_on_uuid", unique: true
  end

  create_table "ordering_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 74, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 74, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "reference_parent_id", comment: "Referenz-Eltern-ID"
    t.string "reference_parent_uuid", limit: 150, comment: "Referenz-Eltern-UUID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :medium, comment: "Historie-Info"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.string "history_user_uuid", limit: 58, comment: "Historie-Benutzer"
    t.integer "original_id", comment: "Original-ID"
    t.string "original_uuid", limit: 68, comment: "Original-ID"
    t.string "history_uuid", limit: 150, comment: "Historie-UUID"
    t.string "history_reference_model", comment: "Historie-Referenz-Model"
    t.integer "history_reference_id", comment: "Historie-Referenz"
    t.string "history_reference_uuid", limit: 100, comment: "Historie-Referenz"
    t.string "accounting_nr", limit: 15, comment: "BKTO"
    t.string "apl_a", limit: 20, comment: "APL A"
    t.string "apl_b", limit: 12, comment: "APL B"
    t.string "apl_description_a", limit: 64, comment: "APL Beschreibung A"
    t.string "apl_description_b", limit: 64, comment: "APL Beschreibung B"
    t.string "at_reference", limit: 12, comment: "AT-Referenz"
    t.decimal "binding_delivery_suspended_days", precision: 10, scale: 2, comment: "Lieferzeit angehalten"
    t.string "branch_name_a", limit: 75, comment: "Geschäftsst. A"
    t.string "branch_name_a_old", limit: 60, comment: "Geschäftsst. A (alt)"
    t.string "branch_name_b", limit: 45, comment: "Geschäftsst. B"
    t.string "branch_name_b_old", limit: 45, comment: "Geschäftsst. B (alt)"
    t.string "call_no_block", limit: 20, comment: "Rufnummernsperre"
    t.string "call_number_3", limit: 20, comment: "Telefonnummer 3"
    t.text "comment", size: :medium, comment: "Bemerkung an Kunde"
    t.string "call_number_2", limit: 20, comment: "Telefonnummer 2"
    t.string "contact_last_name_b", limit: 30, comment: "Ansprechpartner B Name"
    t.string "contact_last_name_a", limit: 30, comment: "Ansprechpartner A Name"
    t.string "contact_last_name", limit: 30, comment: "Auftraggeber Name"
    t.string "contact_first_name_b", limit: 30, comment: "Ansprechpartner B Vorname"
    t.string "contact_first_name_a", limit: 30, comment: "Ansprechpartner A Vorname"
    t.string "contact_first_name", limit: 30, comment: "Auftraggeber Vorname"
    t.string "contact_fax_b", limit: 15, comment: "Ansprechpartner B Faxnr."
    t.string "contact_fax_a", limit: 50, comment: "Ansprechpartner A Faxnr."
    t.string "contact_fax", limit: 15, comment: "Auftraggeber Fax"
    t.string "contact_mail", limit: 100, comment: "Auftraggeber Mail"
    t.string "contact_mail_a", limit: 30, comment: "Ansprechpartner A E-Mail"
    t.string "contact_mail_b", limit: 30, comment: "Ansprechpartner B E-Mail"
    t.string "contact_phone", limit: 35, comment: "Auftraggeber Telefonnr."
    t.string "contact_phone_a", limit: 35, comment: "Ansprechpartner A Telefonnr."
    t.string "contact_phone_b", limit: 35, comment: "Ansprechpartner B Telefonnr."
    t.string "contact_title", limit: 4, comment: "Auftraggeber Anrede"
    t.string "contact_title_a", limit: 4, comment: "Ansprechpartner A Anrede"
    t.string "contact_title_b", limit: 4, comment: "Ansprechpartner B Anrede"
    t.string "contract_name", limit: 15, comment: "Vertragsname"
    t.string "contract_name_old", limit: 15, comment: "Vertragsname (alt)"
    t.string "contract_no", limit: 14, comment: "Vertragsnummer"
    t.string "contract_no_old", limit: 14, comment: "Vertragsnummer (alt)"
    t.string "contractor", limit: 32, comment: "Auftragnehmer"
    t.string "cpe1", limit: 33, comment: "CPE 1-Adresse"
    t.string "cpe2", limit: 33, comment: "CPE 2-Adresse"
    t.string "create_type", limit: 100, default: "fi-xml-import", comment: "Erstellart"
    t.string "customer", limit: 100, comment: "Auftraggeber (Firma)"
    t.text "customer_comment", size: :medium, comment: "Kommentar vom Kunden"
    t.integer "customer_id", comment: "Kunde"
    t.string "customer_number", limit: 15, comment: "Kundennummer"
    t.string "customer_order_no", comment: "Auftrag"
    t.text "customer_remark", size: :medium, comment: "Kundenbemerkung"
    t.string "customer_uuid", limit: 150, comment: "Kunde"
    t.date "date_ab", comment: "Bestätigter Termin in der AB"
    t.date "date_ab_old", comment: "1. AB Termin"
    t.date "date_bza", comment: "Bestätigter Termin in der BZA"
    t.date "date_fm", comment: "Bestätigter Termin in der Fertigmeldung"
    t.date "date_qeb", comment: "Datum der QEB (Tagesdat., nicht Wunscht.)"
    t.date "desired_schedule", comment: "Termin (Wunsch)"
    t.date "desired_schedule_old", comment: "Erstmaliger Termin (Wunsch)"
    t.string "fkto", limit: 15, comment: "FKTO"
    t.string "hostname_cpe1", limit: 70, comment: "Hostname für CPE1"
    t.string "hostname_cpe2", limit: 50, comment: "Hostname für CPE2"
    t.string "house_number_a", limit: 10, comment: "Hausnummer A"
    t.string "house_number_a_old", limit: 10, comment: "Hausnummer A (alt)"
    t.string "house_number_b", limit: 10, comment: "Hausnummer B"
    t.string "house_number_b_old", limit: 10, comment: "Hausnummer B (alt)"
    t.string "hsrp", limit: 33, comment: "HSRP-Adresse"
    t.string "zip_code_b_old", limit: 22, comment: "Postleitzahl B (alt)"
    t.string "zip_code_b", limit: 22, comment: "Postleitzahl B"
    t.string "zip_code_a_old", limit: 22, comment: "Postleitzahl A (alt)"
    t.string "zip_code_a", limit: 22, comment: "Postleitzahl A"
    t.string "vrz_identifier", limit: 1, comment: "VRZ-Kennung"
    t.string "terminal_b", limit: 20, comment: "Endgerät B"
    t.string "terminal_a", limit: 20, comment: "Endgerät A"
    t.string "tel_3", limit: 20, comment: "3. Rufnummer"
    t.string "tel_2", limit: 20, comment: "2. Rufnummer"
    t.string "survey_preexplore_desired_date", limit: 20, comment: "Zieltermin Bereitstell. Carrier-Anschluss"
    t.string "survey_order_detail_no", limit: 30, comment: "ID Auskundung"
    t.string "survey_contact_mail_a", limit: 250, comment: "Ansprechpartner Mail"
    t.string "survey_carrier_contract", limit: 50, comment: "Carrier-Vertrag"
    t.string "street_b_old", limit: 50, comment: "Straße B (alt)"
    t.string "street_b", limit: 50, comment: "Straße B"
    t.string "street_a", limit: 50, comment: "Straße A"
    t.string "street_a_old", limit: 50, comment: "Straße A (alt)"
    t.string "storno_order", limit: 20, comment: "Storno-Auftrag"
    t.text "special_request_b", size: :medium, comment: "Wünsche (Endpunkt)"
    t.text "special_request_a", size: :medium, comment: "Wünsche (Startpunkt)"
    t.text "special_request", size: :medium, comment: "Sonderwünsche (Liste)"
    t.string "sla_item_uuid", limit: 62, comment: "SLA"
    t.integer "sla_item_id", comment: "SLA"
    t.string "sla", limit: 25, comment: "SLA"
    t.string "short_text", comment: "Kurztext"
    t.boolean "sent_last", default: false, comment: "zuletzt gesendet"
    t.string "room_b_old", limit: 30, comment: "Raum B (alt)"
    t.string "room_b", limit: 30, comment: "Raum B"
    t.string "state_info", limit: 50, comment: "Statusinfo"
    t.string "room_a_old", limit: 30, comment: "Raum A (alt)"
    t.string "room_a", limit: 30, comment: "Raum A"
    t.string "research_item_uuid", limit: 150, comment: "IPBSA-Element"
    t.integer "research_item_id", comment: "IPBSA-Element"
    t.text "remarks", size: :medium, comment: "Bemerkungen"
    t.text "reason_for_shift_for_ab", size: :medium, comment: "Grund der Verschiebung (AB)"
    t.decimal "provisioning_suspended_days", precision: 10, scale: 2, comment: "Bereitstellung angehalten"
    t.string "product_old", limit: 100, comment: "Produktbezeichnung (alt)"
    t.string "product_name", limit: 150, comment: "Produktname"
    t.string "product", limit: 100, comment: "Produktbezeichnung"
    t.integer "processor_id", comment: "Bearbeiter"
    t.string "reference_number", limit: 50, comment: "Referenz-Nummer"
    t.string "processor_uuid", limit: 58, comment: "Bearbeiter"
    t.decimal "price_periodical", precision: 16, scale: 4, comment: "Grundpreis periodisch"
    t.decimal "price_one_time", precision: 16, scale: 4, comment: "Preis einmalig"
    t.string "order_type_tsi", limit: 32, comment: "Schnittstellentyp (TSI, Versatel)"
    t.string "order_no", limit: 10, comment: "Auftragsnummer von Versatel "
    t.date "order_date", comment: "Auftragsdatum"
    t.string "order_change_type", limit: 50, comment: "Änderungsstyp"
    t.string "onkz_b", limit: 9, comment: "ONKZ (Stamdort B)"
    t.string "onkz_a", limit: 9, comment: "ONKZ A"
    t.datetime "one_click_finish_date", precision: nil, comment: "One-Click-Datum"
    t.text "old_comment", size: :medium, comment: "Vorherige Bemerkungen"
    t.string "oasb", limit: 20, comment: "OASB"
    t.string "note_type", limit: 10, comment: "Nachrichtentyp"
    t.string "note_time", limit: 8, comment: "Zeit Versand der Nachricht"
    t.datetime "note_date", precision: nil, comment: "Datum Versand der Nachricht"
    t.string "note_ack", limit: 3, comment: "Ergebnis"
    t.string "new_inventory_uuid", limit: 100, comment: "Neuer Bestand"
    t.integer "new_inventory_id", comment: "Neuer Bestand"
    t.string "model_b", limit: 15, comment: "Bauform B"
    t.string "model_a", limit: 15, comment: "Bauform A"
    t.integer "min_hire_time", comment: "Mindestmietzeit (Monate)"
    t.date "mail_received", comment: "E-Mail empfangen"
    t.string "loopback_cpe2", limit: 33, comment: "Loopback-Adresse CPE 2"
    t.string "loopback_cpe1", limit: 33, comment: "Loopback-Adresse CPE 1"
    t.string "location_b_old", limit: 40, comment: "Ort B (alt)"
    t.string "location_b", limit: 40, comment: "Ort B"
    t.string "location_a_old", limit: 40, comment: "Ort A (alt)"
    t.string "location_a", limit: 40, comment: "Ort A"
    t.string "leased_line_no", limit: 50, comment: "Festverbindung"
    t.boolean "is_secondary_completed", default: false, comment: "Sekundär fertig gestellt"
    t.boolean "is_project", comment: "Projekt"
    t.boolean "is_primary_completed", default: false, comment: "Primär fertig gestellt"
    t.text "ipbsa_response_text", size: :medium, comment: "IPBSA-Rückm.-Text"
    t.text "ipbsa_response_key", size: :medium, comment: "IPBSA-Rückm.-Schlüssel"
    t.string "inventory_uuid", limit: 63, comment: "BRM-ID der FV"
    t.integer "inventory_id", comment: "BRM-ID der FV"
    t.string "interface_b", limit: 30, comment: "Schnittstelle B"
    t.string "interface_a", limit: 30, comment: "Schnittstelle A"
    t.string "institute_name_b", limit: 80, comment: "Institutsname B"
    t.string "institute_name_a", limit: 80, comment: "Institutsname A"
    t.string "institut_b", limit: 5, comment: "Institut B"
    t.string "institut_a", limit: 5, comment: "Institut A"
    t.string "instance_name", limit: 100, comment: "Instanzname"
    t.string "indenture_number_from_customer", limit: 40, comment: "Ordn.-Nr. von FI"
    t.string "indenture_number", limit: 40, comment: "Ordnungsnummer"
    t.text "history_type", size: :medium, comment: "Historie-Grund"
    t.integer "product_id", comment: "Produkt"
    t.string "product_uuid", limit: 61, comment: "Produkt"
    t.string "customer_order_guid", comment: "Auftrag (GUID)"
    t.integer "order_id", comment: "Auftrag"
    t.string "order_uuid", limit: 59, comment: "Auftrag"
    t.integer "reference_order_no", comment: "Referenz-Auftrag"
    t.text "product_title", size: :tiny, comment: "Produkt"
    t.datetime "date_teb", precision: nil, comment: "Datum der TEB (Tagesdat., nicht Wunscht.)"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["creator_id"], name: "fk_rails_6ef961d000"
    t.index ["creator_uuid"], name: "fk_rails_1845ef0cf3"
    t.index ["lock_user_id"], name: "fk_rails_4a0fe27f1d"
    t.index ["lock_user_uuid"], name: "fk_rails_675b817cdf"
    t.index ["mandant_id"], name: "fk_rails_68a8999730"
    t.index ["mandant_uuid"], name: "fk_rails_f6f9039b01"
    t.index ["original_id"], name: "index_ordering_item_histories_on_original_id"
    t.index ["parent_uuid"], name: "fk_rails_84f275a949"
    t.index ["product_id"], name: "fk_rails_ab9c673180"
    t.index ["product_uuid"], name: "fk_rails_7147141e42"
    t.index ["updater_id"], name: "fk_rails_665f05ba53"
    t.index ["updater_uuid"], name: "fk_rails_056a477587"
    t.index ["uuid", "version"], name: "index_ordering_item_histories_on_uuid_and_version"
  end

  create_table "ordering_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 68, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 68, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "reference_parent_id", comment: "Referenz-Eltern-ID"
    t.string "reference_parent_uuid", limit: 150, comment: "Referenz-Eltern-UUID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "customer_order_no", comment: "Auftrag"
    t.string "storno_order", limit: 20, comment: "Storno-Auftrag"
    t.date "order_date", comment: "Auftragsdatum"
    t.string "customer_number", limit: 15, comment: "Kundennummer"
    t.string "contact_title", limit: 4, comment: "Auftraggeber Anrede"
    t.string "contact_first_name", limit: 30, comment: "Auftraggeber Vorname"
    t.string "contact_last_name", limit: 30, comment: "Auftraggeber Name"
    t.string "contact_phone", limit: 35, comment: "Auftraggeber Telefonnr."
    t.string "contact_fax", limit: 20, comment: "Auftraggeber Fax"
    t.string "contact_mail", limit: 100, comment: "Auftraggeber Mail"
    t.string "at_reference", limit: 12, comment: "AT-Referenz"
    t.string "contract_no", limit: 14, comment: "Vertragsnummer"
    t.string "contract_name", limit: 15, comment: "Vertragsname"
    t.string "contract_no_old", limit: 14, comment: "Vertragsnummer (alt)"
    t.string "contract_name_old", limit: 15, comment: "Vertragsname (alt)"
    t.string "product", limit: 100, comment: "Produktbezeichnung"
    t.string "product_old", limit: 100, comment: "Produktbezeichnung (alt)"
    t.string "product_name", limit: 150, comment: "Produktname"
    t.string "onkz_a", limit: 9, comment: "ONKZ A"
    t.string "onkz_b", limit: 9, comment: "ONKZ (Stamdort B)"
    t.string "indenture_number", limit: 40, comment: "Ordnungsnummer"
    t.string "sla", limit: 25, comment: "SLA"
    t.date "desired_schedule", comment: "Termin (Wunsch)"
    t.date "desired_schedule_old", comment: "Erstmaliger Termin (Wunsch)"
    t.string "short_text", comment: "Kurztext"
    t.text "special_request", size: :medium, comment: "Sonderwünsche (Liste)"
    t.string "call_no_block", limit: 20, comment: "Rufnummernsperre"
    t.string "tel_2", limit: 20, comment: "2. Rufnummer"
    t.string "tel_3", limit: 20, comment: "3. Rufnummer"
    t.string "institut_a", limit: 5, comment: "Institut A"
    t.string "institute_name_a", limit: 80, comment: "Institutsname A"
    t.string "branch_name_a", limit: 75, comment: "Geschäftsst. A"
    t.string "street_a", limit: 50, comment: "Straße A"
    t.string "house_number_a", limit: 10, comment: "Hausnummer A"
    t.string "zip_code_a", limit: 22, comment: "Postleitzahl A"
    t.string "location_a", limit: 40, comment: "Ort A"
    t.string "room_a", limit: 30, comment: "Raum A"
    t.string "branch_name_a_old", limit: 60, comment: "Geschäftsst. A (alt)"
    t.string "street_a_old", limit: 50, comment: "Straße A (alt)"
    t.string "house_number_a_old", limit: 10, comment: "Hausnummer A (alt)"
    t.string "zip_code_a_old", limit: 22, comment: "Postleitzahl A (alt)"
    t.string "location_a_old", limit: 40, comment: "Ort A (alt)"
    t.string "room_a_old", limit: 30, comment: "Raum A (alt)"
    t.string "apl_a", limit: 20, comment: "APL A"
    t.string "apl_description_a", limit: 64, comment: "APL Beschreibung A"
    t.string "contact_title_a", limit: 4, comment: "Ansprechpartner A Anrede"
    t.string "contact_first_name_a", limit: 30, comment: "Ansprechpartner A Vorname"
    t.string "contact_last_name_a", limit: 30, comment: "Ansprechpartner A Name"
    t.string "contact_phone_a", limit: 35, comment: "Ansprechpartner A Telefonnr."
    t.string "contact_fax_a", limit: 50, comment: "Ansprechpartner A Faxnr."
    t.string "terminal_a", limit: 20, comment: "Endgerät A"
    t.string "model_a", limit: 15, comment: "Bauform A"
    t.string "interface_a", limit: 30, comment: "Schnittstelle A"
    t.text "special_request_a", size: :medium, comment: "Wünsche (Startpunkt)"
    t.string "institut_b", limit: 5, comment: "Institut B"
    t.string "institute_name_b", limit: 80, comment: "Institutsname B"
    t.string "branch_name_b", limit: 45, comment: "Geschäftsst. B"
    t.string "street_b", limit: 50, comment: "Straße B"
    t.string "house_number_b", limit: 10, comment: "Hausnummer B"
    t.string "zip_code_b", limit: 22, comment: "Postleitzahl B"
    t.string "location_b", limit: 40, comment: "Ort B"
    t.string "room_b", limit: 30, comment: "Raum B"
    t.string "branch_name_b_old", limit: 45, comment: "Geschäftsst. B (alt)"
    t.string "street_b_old", limit: 50, comment: "Straße B (alt)"
    t.string "house_number_b_old", limit: 10, comment: "Hausnummer B (alt)"
    t.string "zip_code_b_old", limit: 22, comment: "Postleitzahl B (alt)"
    t.string "location_b_old", limit: 40, comment: "Ort B (alt)"
    t.string "room_b_old", limit: 30, comment: "Raum B (alt)"
    t.string "apl_b", limit: 12, comment: "APL B"
    t.string "apl_description_b", limit: 64, comment: "APL Beschreibung B"
    t.string "contact_title_b", limit: 4, comment: "Ansprechpartner B Anrede"
    t.string "contact_first_name_b", limit: 30, comment: "Ansprechpartner B Vorname"
    t.string "contact_last_name_b", limit: 30, comment: "Ansprechpartner B Name"
    t.string "contact_phone_b", limit: 35, comment: "Ansprechpartner B Telefonnr."
    t.string "contact_fax_b", limit: 15, comment: "Ansprechpartner B Faxnr."
    t.string "terminal_b", limit: 20, comment: "Endgerät B"
    t.string "model_b", limit: 15, comment: "Bauform B"
    t.string "interface_b", limit: 30, comment: "Schnittstelle B"
    t.text "special_request_b", size: :medium, comment: "Wünsche (Endpunkt)"
    t.string "cpe1", limit: 33, comment: "CPE 1-Adresse"
    t.string "loopback_cpe1", limit: 33, comment: "Loopback-Adresse CPE 1"
    t.string "cpe2", limit: 33, comment: "CPE 2-Adresse"
    t.string "loopback_cpe2", limit: 33, comment: "Loopback-Adresse CPE 2"
    t.string "hsrp", limit: 33, comment: "HSRP-Adresse"
    t.string "accounting_nr", limit: 15, comment: "BKTO"
    t.string "fkto", limit: 15, comment: "FKTO"
    t.decimal "price_periodical", precision: 16, scale: 4, comment: "Grundpreis periodisch"
    t.decimal "price_one_time", precision: 16, scale: 4, comment: "Preis einmalig"
    t.integer "min_hire_time", comment: "Mindestmietzeit (Monate)"
    t.string "customer", limit: 100, comment: "Auftraggeber (Firma)"
    t.string "contractor", limit: 32, comment: "Auftragnehmer"
    t.string "reference_number", limit: 50, comment: "Referenz-Nummer"
    t.string "vrz_identifier", limit: 1, comment: "VRZ-Kennung"
    t.string "instance_name", limit: 100, comment: "Instanzname"
    t.string "state_info", limit: 50, comment: "Statusinfo"
    t.integer "inventory_id", comment: "BRM-ID der FV"
    t.date "mail_received", comment: "E-Mail empfangen"
    t.boolean "sent_last", default: false, comment: "zuletzt gesendet"
    t.string "note_type", limit: 10, comment: "Nachrichtentyp"
    t.string "note_ack", limit: 3, comment: "Ergebnis"
    t.datetime "note_date", precision: nil, comment: "Datum Versand der Nachricht"
    t.string "note_time", limit: 8, comment: "Zeit Versand der Nachricht"
    t.string "order_no", limit: 10, comment: "Auftragsnummer von Versatel "
    t.date "date_qeb", comment: "Datum der QEB (Tagesdat., nicht Wunscht.)"
    t.date "date_ab", comment: "Bestätigter Termin in der AB"
    t.date "date_bza", comment: "Bestätigter Termin in der BZA"
    t.date "date_fm", comment: "Bestätigter Termin in der Fertigmeldung"
    t.text "comment", size: :medium, comment: "Bemerkung an Kunde"
    t.string "hostname_cpe1", limit: 70, comment: "Hostname für CPE1"
    t.string "hostname_cpe2", limit: 50, comment: "Hostname für CPE2"
    t.text "remarks", size: :medium, comment: "Bemerkungen"
    t.string "order_type_tsi", limit: 32, comment: "Schnittstellentyp (TSI, Versatel)"
    t.string "call_number_2", limit: 20, comment: "Telefonnummer 2"
    t.string "call_number_3", limit: 20, comment: "Telefonnummer 3"
    t.text "old_comment", size: :medium, comment: "Vorherige Bemerkungen"
    t.string "indenture_number_from_customer", limit: 40, comment: "Ordn.-Nr. von FI"
    t.string "survey_order_detail_no", limit: 30, comment: "ID Auskundung"
    t.string "survey_contact_mail_a", limit: 250, comment: "Ansprechpartner Mail"
    t.string "survey_carrier_contract", limit: 50, comment: "Carrier-Vertrag"
    t.string "survey_preexplore_desired_date", limit: 20, comment: "Zieltermin Bereitstell. Carrier-Anschluss"
    t.string "oasb", limit: 20, comment: "OASB"
    t.text "history_type", size: :medium, comment: "Historie-Grund"
    t.string "create_type", limit: 100, default: "fi-xml-import", comment: "Erstellart"
    t.string "order_change_type", limit: 50, comment: "Änderungsstyp"
    t.string "contact_mail_a", comment: "Ansprechpartner A E-Mail"
    t.string "contact_mail_b", comment: "Ansprechpartner B E-Mail"
    t.text "customer_remark", size: :medium, comment: "Kundenbemerkung"
    t.integer "customer_id", comment: "Kunde"
    t.string "inventory_uuid", limit: 63, comment: "BRM-ID der FV"
    t.string "customer_uuid", limit: 150, comment: "Kunde"
    t.text "customer_comment", size: :medium, comment: "Kommentar vom Kunden"
    t.text "ipbsa_response_key", size: :medium, comment: "IPBSA-Rückm.-Schlüssel"
    t.text "ipbsa_response_text", size: :medium, comment: "IPBSA-Rückm.-Text"
    t.integer "research_item_id", comment: "IPBSA-Element"
    t.string "research_item_uuid", limit: 150, comment: "IPBSA-Element"
    t.string "leased_line_no", limit: 50, comment: "Festverbindung"
    t.boolean "is_secondary_completed", default: false, comment: "Sekundär fertig gestellt"
    t.boolean "is_primary_completed", default: false, comment: "Primär fertig gestellt"
    t.boolean "is_project", comment: "Projekt"
    t.date "date_ab_old", comment: "1. AB Termin"
    t.integer "processor_id", comment: "Bearbeiter"
    t.string "processor_uuid", limit: 58, comment: "Bearbeiter"
    t.text "reason_for_shift_for_ab", size: :medium, comment: "Grund der Verschiebung (AB)"
    t.datetime "one_click_finish_date", precision: nil, comment: "One-Click-Datum"
    t.decimal "binding_delivery_suspended_days", precision: 10, scale: 2, comment: "Lieferzeit angehalten"
    t.integer "new_inventory_id", comment: "Neuer Bestand"
    t.string "new_inventory_uuid", limit: 100, comment: "Neuer Bestand"
    t.decimal "provisioning_suspended_days", precision: 10, scale: 2, comment: "Bereitstellung angehalten"
    t.integer "sla_item_id", comment: "SLA"
    t.string "sla_item_uuid", limit: 62, comment: "SLA"
    t.string "customer_order_guid", comment: "Auftrag (GUID)"
    t.integer "order_id", comment: "Auftrag"
    t.string "order_uuid", limit: 59, comment: "Auftrag"
    t.integer "reference_order_no", comment: "Referenz-Auftrag"
    t.integer "product_id", comment: "Produkt"
    t.string "product_uuid", limit: 61, comment: "Produkt"
    t.text "product_title", size: :tiny, comment: "Produkt"
    t.datetime "date_teb", precision: nil, comment: "Datum der TEB (Tagesdat., nicht Wunscht.)"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["creator_id"], name: "fk_rails_4c9328abca"
    t.index ["creator_uuid"], name: "fk_rails_6fd8edf1e1"
    t.index ["lock_user_id"], name: "fk_rails_869617eaef"
    t.index ["lock_user_uuid"], name: "fk_rails_fc0cbe5289"
    t.index ["mandant_id"], name: "fk_rails_a69fd89a8b"
    t.index ["mandant_uuid"], name: "fk_rails_0fbe84ffa4"
    t.index ["parent_id"], name: "fk_rails_923ff38da9"
    t.index ["parent_uuid"], name: "fk_rails_0eedae1eec"
    t.index ["product_id"], name: "fk_rails_f6d488446a"
    t.index ["product_uuid"], name: "fk_rails_21adc1d7b8"
    t.index ["updater_id"], name: "fk_rails_212dfefb1c"
    t.index ["updater_uuid"], name: "fk_rails_068907613c"
    t.index ["uuid"], name: "index_ordering_items_on_uuid", unique: true
  end

  create_table "orders", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "customer_order_no", comment: "Auftrag"
    t.string "storno_order", limit: 20, comment: "Storno-Auftrag"
    t.date "order_date", comment: "Auftragsdatum"
    t.string "f_type", limit: 32, comment: "Auftragstyp"
    t.string "customer_number", limit: 15, comment: "Kundennummer"
    t.string "contact_title", limit: 4, comment: "Auftraggeber Anrede"
    t.string "contact_first_name", limit: 30, comment: "Auftraggeber Vorname"
    t.string "contact_last_name", limit: 30, comment: "Auftraggeber Name"
    t.string "contact_phone", limit: 35, comment: "Auftraggeber Telefonnr."
    t.string "contact_fax", limit: 20
    t.string "contact_mail", limit: 100, comment: "Auftraggeber Mail"
    t.string "at_reference", limit: 12, comment: "AT-Referenz"
    t.string "contract_no", limit: 14, comment: "Vertragsnummer"
    t.string "contract_name", limit: 25
    t.string "contract_no_old", limit: 14, comment: "Vertragsnummer (alt)"
    t.string "contract_name_old", limit: 15, comment: "Vertragsname (alt)"
    t.string "product", limit: 100, comment: "Produktbezeichnung"
    t.string "product_old", limit: 100, comment: "Produktbezeichnung (alt)"
    t.string "product_name", limit: 150, comment: "Produktname"
    t.string "onkz_a", limit: 9, comment: "ONKZ A"
    t.string "onkz_b", limit: 9, comment: "ONKZ (Stamdort B)"
    t.string "indenture_number", limit: 40, comment: "Ordnungsnummer"
    t.string "sla", limit: 25, comment: "SLA"
    t.date "desired_schedule", comment: "Termin (Wunsch)"
    t.date "desired_schedule_old", comment: "Erstmaliger Termin (Wunsch)"
    t.string "short_text", comment: "Kurztext"
    t.text "special_request", size: :medium, comment: "Sonderwünsche (Liste)"
    t.string "call_no_block", limit: 20, comment: "Rufnummernsperre"
    t.string "tel_2", limit: 20, comment: "2. Rufnummer"
    t.string "tel_3", limit: 20, comment: "3. Rufnummer"
    t.string "institut_a", limit: 5, comment: "Institut A"
    t.string "institute_name_a", limit: 80, comment: "Institutsname A"
    t.string "branch_name_a", limit: 75, comment: "Geschäftsst. A"
    t.string "street_a", limit: 50, comment: "Straße A"
    t.string "house_number_a", limit: 15, comment: "Hausnummer A"
    t.string "zip_code_a", limit: 22, comment: "Postleitzahl A"
    t.string "location_a", limit: 40, comment: "Ort A"
    t.string "room_a", limit: 30, comment: "Raum A"
    t.string "branch_name_a_old", limit: 60, comment: "Geschäftsst. A (alt)"
    t.string "street_a_old", limit: 50, comment: "Straße A (alt)"
    t.string "house_number_a_old", limit: 10, comment: "Hausnummer A (alt)"
    t.string "zip_code_a_old", limit: 22, comment: "Postleitzahl A (alt)"
    t.string "location_a_old", limit: 40, comment: "Ort A (alt)"
    t.string "room_a_old", limit: 30, comment: "Raum A (alt)"
    t.string "apl_a", limit: 20, comment: "APL A"
    t.string "apl_description_a", limit: 64, comment: "APL Beschreibung A"
    t.string "contact_title_a", limit: 4, comment: "Ansprechpartner A Anrede"
    t.string "contact_first_name_a", limit: 30, comment: "Ansprechpartner A Vorname"
    t.string "contact_last_name_a", limit: 30, comment: "Ansprechpartner A Name"
    t.string "contact_phone_a", limit: 35, comment: "Ansprechpartner A Telefonnr."
    t.string "contact_fax_a", limit: 50, comment: "Ansprechpartner A Faxnr."
    t.string "terminal_a", limit: 20, comment: "Endgerät A"
    t.string "model_a", limit: 15, comment: "Bauform A"
    t.string "interface_a", limit: 100
    t.text "special_request_a", size: :medium, comment: "Wünsche (Startpunkt)"
    t.string "institut_b", limit: 5, comment: "Institut B"
    t.string "institute_name_b", limit: 80, comment: "Institutsname B"
    t.string "branch_name_b", limit: 45, comment: "Geschäftsst. B"
    t.string "street_b", limit: 50, comment: "Straße B"
    t.string "house_number_b", limit: 10, comment: "Hausnummer B"
    t.string "zip_code_b", limit: 22, comment: "Postleitzahl B"
    t.string "location_b", limit: 40, comment: "Ort B"
    t.string "room_b", limit: 30, comment: "Raum B"
    t.string "branch_name_b_old", limit: 45, comment: "Geschäftsst. B (alt)"
    t.string "street_b_old", limit: 50, comment: "Straße B (alt)"
    t.string "house_number_b_old", limit: 10, comment: "Hausnummer B (alt)"
    t.string "zip_code_b_old", limit: 22, comment: "Postleitzahl B (alt)"
    t.string "location_b_old", limit: 40, comment: "Ort B (alt)"
    t.string "room_b_old", limit: 30, comment: "Raum B (alt)"
    t.string "apl_b", limit: 15
    t.string "apl_description_b", limit: 64, comment: "APL Beschreibung B"
    t.string "contact_title_b", limit: 4, comment: "Ansprechpartner B Anrede"
    t.string "contact_first_name_b", limit: 30, comment: "Ansprechpartner B Vorname"
    t.string "contact_last_name_b", limit: 30, comment: "Ansprechpartner B Name"
    t.string "contact_phone_b", limit: 35, comment: "Ansprechpartner B Telefonnr."
    t.string "contact_fax_b", limit: 20
    t.string "terminal_b", limit: 20, comment: "Endgerät B"
    t.string "model_b", limit: 15, comment: "Bauform B"
    t.string "interface_b", limit: 100
    t.text "special_request_b", size: :medium, comment: "Wünsche (Endpunkt)"
    t.string "cpe1", limit: 33, comment: "CPE 1-Adresse"
    t.string "loopback_cpe1", limit: 33, comment: "Loopback-Adresse CPE 1"
    t.string "cpe2", limit: 33, comment: "CPE 2-Adresse"
    t.string "loopback_cpe2", limit: 33, comment: "Loopback-Adresse CPE 2"
    t.string "hsrp", limit: 33, comment: "HSRP-Adresse"
    t.string "accounting_nr", limit: 15, comment: "BKTO"
    t.string "fkto", limit: 15, comment: "FKTO"
    t.decimal "price_periodical", precision: 16, scale: 4, comment: "Grundpreis periodisch"
    t.decimal "price_one_time", precision: 16, scale: 4, comment: "Preis einmalig"
    t.integer "min_hire_time", comment: "Mindestmietzeit (Monate)"
    t.string "customer", limit: 100, comment: "Auftraggeber (Firma)"
    t.string "contractor", limit: 32, comment: "Auftragnehmer"
    t.string "reference_number", limit: 50, comment: "Referenz-Nummer"
    t.string "vrz_identifier", limit: 1, comment: "VRZ-Kennung"
    t.string "instance_name", limit: 100, comment: "Instanzname"
    t.string "state", limit: 55, comment: "Status"
    t.string "state_info", limit: 50, comment: "Statusinfo"
    t.integer "inventory_id", comment: "BRM-ID der FV"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.date "mail_received", comment: "E-Mail empfangen"
    t.boolean "sent_last", default: false, comment: "zuletzt gesendet"
    t.string "note_type", limit: 10, comment: "Nachrichtentyp"
    t.string "note_ack", limit: 3, comment: "Ergebnis"
    t.date "note_date", comment: "Datum Versand der Nachricht"
    t.string "note_time", limit: 55
    t.string "order_no", limit: 10, comment: "Auftragsnummer von Versatel "
    t.date "date_qeb", comment: "Datum der QEB (Tagesdat., nicht Wunscht.)"
    t.date "date_ab", comment: "Bestätigter Termin in der AB"
    t.date "date_bza", comment: "Bestätigter Termin in der BZA"
    t.date "date_fm", comment: "Bestätigter Termin in der Fertigmeldung"
    t.text "comment", size: :medium, comment: "Bemerkung an Kunde"
    t.string "hostname_cpe1", limit: 70, comment: "Hostname für CPE1"
    t.string "hostname_cpe2", limit: 50, comment: "Hostname für CPE2"
    t.text "remarks", size: :medium, comment: "Bemerkungen"
    t.string "order_type_tsi", limit: 32, comment: "Schnittstellentyp (TSI, Versatel)"
    t.string "call_number_2", limit: 20, comment: "Telefonnummer 2"
    t.string "call_number_3", limit: 20, comment: "Telefonnummer 3"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.text "old_comment", size: :medium
    t.string "indenture_number_from_customer", limit: 40, comment: "Ordn.-Nr. von FI"
    t.string "survey_order_detail_no", limit: 30, comment: "ID Auskundung"
    t.string "survey_contact_mail_a", limit: 250, comment: "Ansprechpartner Mail"
    t.string "survey_carrier_contract", limit: 50, comment: "Carrier-Vertrag"
    t.string "survey_preexplore_desired_date", limit: 20, comment: "Zieltermin Bereitstell. Carrier-Anschluss"
    t.string "oasb", limit: 20, comment: "OASB"
    t.string "create_type", limit: 100, default: "fi-xml-import", comment: "Erstellart"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "order_change_type", limit: 50, comment: "Änderungsstyp"
    t.string "contact_mail_a"
    t.string "contact_mail_b"
    t.text "customer_remark", size: :medium, comment: "Kundenbemerkung"
    t.integer "customer_id", comment: "Kunde"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.text "save_info", size: :long, comment: "Original-Info"
    t.string "uuid", limit: 59, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 59, comment: "Eltern-UIID"
    t.string "system_type", limit: 50, comment: "Systemtyp"
    t.integer "parent_id", comment: "Eltern-Element"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.text "reference_model", size: :tiny, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "lock_user_uuid", limit: 58
    t.string "inventory_uuid", limit: 63
    t.string "customer_uuid", limit: 150, comment: "Kunde"
    t.text "customer_comment", size: :medium, comment: "Kommentar vom Kunden"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.text "ipbsa_response_key", size: :medium, comment: "IPBSA-Rückm.-Schlüssel"
    t.text "ipbsa_response_text", size: :medium, comment: "IPBSA-Rückm.-Text"
    t.integer "research_item_id", comment: "IPBSA-Element"
    t.string "research_item_uuid", limit: 150, comment: "IPBSA-Element"
    t.string "leased_line_no", limit: 50, comment: "Festverbindung"
    t.boolean "is_secondary_completed", default: false, comment: "Sekundär fertig gestellt"
    t.boolean "is_primary_completed", default: false, comment: "Primär fertig gestellt"
    t.boolean "is_project", comment: "Projekt"
    t.date "date_ab_old", comment: "1. AB Termin"
    t.integer "processor_id", comment: "Bearbeiter"
    t.string "processor_uuid", limit: 58, comment: "Bearbeiter"
    t.text "reason_for_shift_for_ab", size: :medium, comment: "Grund der Verschiebung (AB)"
    t.datetime "one_click_finish_date", precision: nil, comment: "One-Click-Datum"
    t.integer "new_inventory_id", comment: "Neuer Bestand"
    t.string "new_inventory_uuid", limit: 150, comment: "Neuer Bestand"
    t.decimal "provisioning_suspended_days", precision: 10, scale: 2, comment: "Bereitstellung angehalten"
    t.decimal "binding_delivery_suspended_days", precision: 10, scale: 2, comment: "Lieferzeit angehalten"
    t.integer "sla_item_id", comment: "SLA"
    t.string "sla_item_uuid", limit: 62, comment: "SLA"
    t.string "customer_order_guid", comment: "Auftrag (GUID)"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.text "history_type", size: :medium, comment: "Historie-Grund"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.integer "product_id", comment: "Produkt"
    t.string "product_uuid", limit: 61, comment: "Produkt"
    t.string "vkst_no_a", limit: 10, comment: "Verkaufstelle (Standort A)"
    t.string "vkst_no_b", limit: 10, comment: "Verkaufstelle (Standort B)"
    t.index ["f_type"], name: "index_orders_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_3d4d1dcdd5"
    t.index ["parent_id"], name: "fk_rails_39ac3adb21"
    t.index ["parent_uuid"], name: "fk_rails_3d0282db74"
    t.index ["product_id"], name: "fk_rails_dfb33b2de0"
    t.index ["product_uuid"], name: "fk_rails_050674f986"
    t.index ["system_type"], name: "index_orders_on_system_type", length: 2
    t.index ["uuid"], name: "index_orders_on_uuid", unique: true
  end

  create_table "page_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "parent_id", comment: "Eltern-Element"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.text "name", size: :tiny, comment: "Name"
    t.text "short_title", size: :tiny, comment: "Kurztitel"
    t.text "title", size: :tiny, comment: "Titel"
    t.text "description", comment: "Beschreibung"
    t.text "table_type", size: :tiny, comment: "Tabellen-Typ"
    t.text "edit_type", size: :tiny, comment: "Editier-Typ"
    t.boolean "quick_editable", default: false, comment: "Quick-Edit"
    t.string "table_name", comment: "Tabelle"
    t.text "f_model_name", size: :tiny, comment: "Model"
    t.boolean "importable", default: false, comment: "Importierbar"
    t.boolean "f_readonly", default: false, comment: "Nur lesend"
    t.string "limit", limit: 100, comment: "Länge"
    t.boolean "admin_field", default: false, comment: "Admin-Feld"
    t.text "default", size: :medium, comment: "Standardwert"
    t.boolean "required", default: false, comment: "Pflichtfeld"
    t.boolean "search_input", default: false, comment: "Suche-Eingabefeld"
    t.boolean "search_output", default: false, comment: "Suche-Ausgabefeld"
    t.boolean "output_selected", default: false, comment: "Standard-Ausgabe"
    t.boolean "input_selected", default: false, comment: "Standard-Eingabe"
    t.text "history_type"
    t.datetime "history_date", precision: nil
    t.bigint "history_user_id"
    t.bigint "original_id"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.integer "attribute_item_id", comment: "Tabellenattribut"
    t.string "selection_group", limit: 100, comment: "Auswahlgruppe"
    t.boolean "selected", default: false, comment: "ausgew. Element"
    t.text "style", size: :tiny, comment: "CSS-Styöe"
    t.text "f_class", size: :tiny, comment: "Standardwert"
    t.text "group_sign", comment: "Gruppierungszeichen"
    t.boolean "include_blank", default: false, comment: "Leerfeld"
    t.boolean "show_label", default: true, comment: "Text-Label"
    t.integer "column_count", comment: "Spaltenanzahl"
    t.boolean "multiple", default: false, comment: "Mehrfachauswahl"
    t.boolean "add_button_modal", default: false, comment: "Modaler Hinzufügen-Button"
    t.boolean "enable_updated_at_area", default: false, comment: "Letzte Änderung aktiv"
    t.boolean "enable_option_area", default: false, comment: "Optionbereich aktiv"
    t.string "option_area_select_group", limit: 100, comment: "Optionenauswahl"
    t.boolean "enable_state_area", default: false, comment: "Statusbereich aktiv"
    t.boolean "enable_limit_area", default: false, comment: "Limitbereich aktiv"
    t.boolean "enable_f_type_area", default: false, comment: "Typbereich aktiv"
    t.boolean "enable_user_area", default: false, comment: "Benutzerbereich aktiv"
    t.boolean "exportable", default: false, comment: "Exportierbar"
    t.string "uuid", limit: 150, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 71
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "f_type_filter", limit: 100, comment: "Typ-Filter"
    t.string "form_config_uuid", limit: 150, comment: "form_config_uuid"
    t.boolean "table_show_footer", default: false, comment: "Footer anzeigen"
    t.string "table_footer_function", limit: 100, comment: "Footer-Funktion"
    t.integer "creator_id", comment: "Ersteller"
    t.text "history_info", size: :long
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", comment: "parent_version"
    t.integer "lookup_group_id", comment: "Konfig.-Gruppe"
    t.boolean "show_table_add_button", default: true, comment: "Add-Button (Tabelle)"
    t.boolean "show_tree_add_button", default: true, comment: "Add-Button (Baum)"
    t.string "select_option_title", limit: 100, comment: "Optionstitel"
    t.string "selection_group_filter", limit: 500, comment: "A-Gruppen-Filter"
    t.string "add_url_path", limit: 100, comment: "URL-Pfad (Add-Button)"
    t.string "json_url_path", limit: 100, comment: "URL-Pfad (JSON-Request)"
    t.boolean "enable_reference_model_area", default: false, comment: "Referenzbereich aktiv"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 63
    t.string "attribute_item_uuid", limit: 68
    t.string "lookup_group_uuid", limit: 66
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.boolean "always_quick_editable", default: false, comment: "Always-Quick-Edit"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.text "mandant_uuids", size: :medium, comment: "Mandant"
    t.boolean "table_cookie_active", default: false, comment: "Cookie-Aktiv"
    t.boolean "searchable", default: true, comment: "Durchsuchbar"
    t.text "javascript_code", size: :medium, comment: "Javascript-Code"
    t.string "output_format", limit: 100, comment: "Ausgabeformat"
    t.boolean "sortable", default: true, comment: "Sortierbar"
    t.boolean "show_multiple_change", default: false, comment: "Mehrfachänderung anzeigen"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.string "modal_window_width", limit: 25, comment: "Modale Fensterbreite"
    t.text "validation_regex", size: :medium, comment: "Validierungstext"
    t.string "validation_regex_text", limit: 100, comment: "Validierungshinweis"
    t.boolean "enable_order_area", default: false, comment: "Sortierungbereich aktiv"
    t.boolean "create_dynamic", default: true, comment: "Dynamic erzeugen"
    t.text "label_onclick", size: :medium, comment: "Label-OnClick"
    t.text "label_ondblclick", size: :medium, comment: "Label-OnDblClick"
    t.text "group_sign_onclick", size: :medium, comment: "Gruppenzeichen-OnClick"
    t.text "group_sign_ondblclick", size: :medium, comment: "Gruppenzeichen-OnDblClick"
    t.boolean "show_detail_view_button", default: false, comment: "Detail-Ansicht"
    t.string "edit_url_path", limit: 100, comment: "URL-Pfad (Edit-Button)"
    t.string "delete_url_path", limit: 100, comment: "URL-Pfad (Delete-Button)"
    t.string "foreign_key_table", limit: 100, comment: "Fremdschlüsseltabelle"
    t.string "f_readonly_condition", limit: 25, default: "0", comment: "Nur Lesend-Bedingung"
    t.text "search_output_name", size: :medium, comment: "Name (Such-Ausgabe)"
    t.text "onchange", size: :medium, comment: "OnChange"
    t.text "onblur", size: :medium, comment: "OnBlur"
    t.text "ondblclick", size: :medium, comment: "OnDblClick"
    t.text "onclick", size: :medium, comment: "On-Click-Event"
    t.text "onfocus", size: :medium, comment: "On-Focus-Event"
    t.text "stylesheet_code", size: :medium, comment: "Stylesheet-Code"
    t.integer "load_timeout_in_ms", default: 10, comment: "Timeout in Millisekunden"
    t.boolean "add_dynamics_to_the_import_file", default: false, comment: "Dynamics in Import hinzufügen"
    t.boolean "enable_created_at_area", default: false, comment: "Erstellungsdatum aktiv"
    t.index ["mandant_id"], name: "fk_rails_25a7f61f90"
  end

  create_table "page_item_join_role_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "page_item_id"
    t.integer "role_id"
    t.string "page_item_uuid", limit: 63
    t.string "role_uuid", limit: 58
    t.integer "history_page_item_id"
    t.integer "history_role_id"
    t.string "history_page_item_uuid"
    t.string "history_role_uuid"
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", comment: "Contains the Universally Unique Identifier of this history element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
  end

  create_table "page_item_join_roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "page_item_id"
    t.integer "role_id"
    t.string "page_item_uuid", limit: 63
    t.string "role_uuid", limit: 58
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
    t.index ["uuid"], name: "index_page_item_join_roles_on_uuid", unique: true
  end

  create_table "page_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "parent_id", comment: "Eltern-Element"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.text "name", size: :tiny, comment: "Name"
    t.text "short_title", size: :tiny, comment: "Kurztitel"
    t.text "title", size: :tiny, comment: "Titel"
    t.text "description", comment: "Beschreibung"
    t.text "table_type", size: :tiny, comment: "Tabellen-Typ"
    t.text "edit_type", size: :tiny, comment: "Editier-Typ"
    t.string "table_name", comment: "Tabelle"
    t.text "f_model_name", size: :tiny, comment: "Model"
    t.boolean "quick_editable", default: false, comment: "Quick-Edit"
    t.boolean "importable", default: false, comment: "Importierbar"
    t.boolean "f_readonly", default: false, comment: "Nur lesend"
    t.string "limit", limit: 100, comment: "Länge"
    t.boolean "admin_field", default: false, comment: "Admin-Feld"
    t.text "default", size: :medium, comment: "Standardwert"
    t.boolean "required", default: false, comment: "Pflichtfeld"
    t.boolean "search_input", default: false, comment: "Suche-Eingabefeld"
    t.boolean "search_output", default: false, comment: "Suche-Ausgabefeld"
    t.boolean "output_selected", default: false, comment: "Standard-Ausgabe"
    t.boolean "input_selected", default: false, comment: "Standard-Eingabe"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.integer "attribute_item_id", comment: "Tabellenattribut"
    t.string "selection_group", limit: 100, comment: "Auswahlgruppe"
    t.boolean "selected", default: false, comment: "ausgew. Element"
    t.text "style", size: :tiny, comment: "CSS-Styöe"
    t.text "f_class", size: :tiny, comment: "Standardwert"
    t.boolean "include_blank", default: false, comment: "Leerfeld"
    t.boolean "show_label", default: true, comment: "Text-Label"
    t.integer "column_count", comment: "Spaltenanzahl"
    t.text "group_sign", comment: "Gruppierungszeichen"
    t.boolean "multiple", default: false, comment: "Mehrfachauswahl"
    t.boolean "add_button_modal", default: false, comment: "Modaler Hinzufügen-Button"
    t.boolean "enable_updated_at_area", default: false, comment: "Letzte Änderung aktiv"
    t.boolean "enable_option_area", default: false, comment: "Optionbereich aktiv"
    t.string "option_area_select_group", limit: 100, comment: "Optionenauswahl"
    t.boolean "enable_state_area", default: false, comment: "Statusbereich aktiv"
    t.boolean "enable_limit_area", default: false, comment: "Limitbereich aktiv"
    t.boolean "enable_f_type_area", default: false, comment: "Typbereich aktiv"
    t.boolean "enable_user_area", default: false, comment: "Benutzerbereich aktiv"
    t.boolean "exportable", default: false, comment: "Exportierbar"
    t.string "uuid", limit: 63, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 63, comment: "Eltern-UIID"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "f_type_filter", limit: 100, comment: "Typ-Filter"
    t.string "form_config_uuid", limit: 150, comment: "form_config_uuid"
    t.boolean "table_show_footer", default: false, comment: "Footer anzeigen"
    t.string "table_footer_function", limit: 100, comment: "Footer-Funktion"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", comment: "parent_version"
    t.integer "lookup_group_id", comment: "Konfig.-Gruppe"
    t.boolean "show_table_add_button", default: true, comment: "Add-Button (Tabelle)"
    t.boolean "show_tree_add_button", default: true, comment: "Add-Button (Baum)"
    t.string "select_option_title", limit: 100, comment: "Optionstitel"
    t.string "selection_group_filter", limit: 500, comment: "A-Gruppen-Filter"
    t.string "add_url_path", limit: 100, comment: "URL-Pfad (Add-Button)"
    t.string "json_url_path", limit: 100, comment: "URL-Pfad (JSON-Request)"
    t.boolean "enable_reference_model_area", default: false, comment: "Referenzbereich aktiv"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "attribute_item_uuid", limit: 68
    t.string "lookup_group_uuid", limit: 66
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.boolean "always_quick_editable", default: false, comment: "Always-Quick-Edit"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "Hierachie-Name"
    t.text "mandant_uuids", size: :medium, comment: "Mandant"
    t.boolean "table_cookie_active", default: false, comment: "Cookie-Aktiv"
    t.boolean "searchable", default: true, comment: "Durchsuchbar"
    t.text "javascript_code", size: :medium, comment: "Javascript-Code"
    t.string "output_format", limit: 100, comment: "Ausgabeformat"
    t.boolean "sortable", default: true, comment: "Sortierbar"
    t.boolean "show_multiple_change", default: false, comment: "Mehrfachänderung anzeigen"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.string "modal_window_width", limit: 25, comment: "Modale Fensterbreite"
    t.text "validation_regex", size: :medium, comment: "Validierungstext"
    t.string "validation_regex_text", limit: 100, comment: "Validierungshinweis"
    t.boolean "enable_order_area", default: false, comment: "Sortierungbereich aktiv"
    t.boolean "create_dynamic", default: true, comment: "Dynamic erzeugen"
    t.text "label_onclick", size: :medium, comment: "Label-OnClick"
    t.text "label_ondblclick", size: :medium, comment: "Label-OnDblClick"
    t.text "group_sign_onclick", size: :medium, comment: "Gruppenzeichen-OnClick"
    t.text "group_sign_ondblclick", size: :medium, comment: "Gruppenzeichen-OnDblClick"
    t.boolean "show_detail_view_button", default: false, comment: "Detail-Ansicht"
    t.string "edit_url_path", limit: 100, comment: "URL-Pfad (Edit-Button)"
    t.string "delete_url_path", limit: 100, comment: "URL-Pfad (Delete-Button)"
    t.string "foreign_key_table", limit: 100, comment: "Fremdschlüsseltabelle"
    t.string "f_readonly_condition", limit: 25, default: "0", comment: "Nur Lesend-Bedingung"
    t.text "search_output_name", size: :medium, comment: "Name (Such-Ausgabe)"
    t.text "onchange", size: :medium, comment: "OnChange"
    t.text "onblur", size: :medium, comment: "OnBlur"
    t.text "ondblclick", size: :medium, comment: "OnDblClick"
    t.text "onclick", size: :medium, comment: "On-Click-Event"
    t.text "onfocus", size: :medium, comment: "On-Focus-Event"
    t.text "stylesheet_code", size: :medium, comment: "Stylesheet-Code"
    t.integer "load_timeout_in_ms", default: 10, comment: "Timeout in Millisekunden"
    t.boolean "add_dynamics_to_the_import_file", default: false, comment: "Dynamics in Import hinzufügen"
    t.boolean "enable_created_at_area", default: false, comment: "Erstellungsdatum aktiv"
    t.index ["f_type"], name: "index_page_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_87bdea0b31"
    t.index ["name"], name: "index_page_items_on_name", length: 20
    t.index ["parent_id"], name: "fk_rails_3bc5ed75c0"
    t.index ["parent_uuid"], name: "fk_rails_b4da665710"
    t.index ["system_type"], name: "index_page_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_page_items_on_uuid", unique: true
  end

  create_table "price_list_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 69
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 77
    t.string "product_name", limit: 100
    t.decimal "price_product", precision: 16, scale: 4
    t.decimal "price_instalment_payment", precision: 16, scale: 4
    t.decimal "price_notice", precision: 16, scale: 4
    t.decimal "price_userchange", precision: 16, scale: 4
    t.decimal "price_organizationchange", precision: 16, scale: 4
    t.integer "min_hire_time"
    t.decimal "price_remnant_costs", precision: 16, scale: 4
    t.integer "sorting", comment: "sorting"
    t.decimal "price_reloaction", precision: 16, scale: 4
    t.decimal "price_change_name", precision: 16, scale: 4
    t.decimal "price_change_data", precision: 16, scale: 4
    t.decimal "price_organizationschange_and_relocation", precision: 16, scale: 4
    t.decimal "price_userchange_and_reloaction", precision: 16, scale: 4
    t.decimal "price_product_fourteen", precision: 16, scale: 4
    t.decimal "price_product_fifteen", precision: 16, scale: 4
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 69
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_a8a966a6cb"
    t.index ["mandant_id"], name: "fk_rails_fca1bb5b18"
  end

  create_table "price_list_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 69
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 69
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.string "product_name", limit: 100
    t.decimal "price_product", precision: 16, scale: 4
    t.decimal "price_instalment_payment", precision: 16, scale: 4
    t.decimal "price_notice", precision: 16, scale: 4
    t.decimal "price_userchange", precision: 16, scale: 4
    t.decimal "price_organizationchange", precision: 16, scale: 4
    t.integer "min_hire_time"
    t.decimal "price_remnant_costs", precision: 16, scale: 4
    t.integer "sorting", comment: "sorting"
    t.decimal "price_reloaction", precision: 16, scale: 4
    t.decimal "price_change_name", precision: 16, scale: 4
    t.decimal "price_change_data", precision: 16, scale: 4
    t.decimal "price_organizationschange_and_relocation", precision: 16, scale: 4
    t.decimal "price_userchange_and_reloaction", precision: 16, scale: 4
    t.decimal "price_product_fourteen", precision: 16, scale: 4
    t.decimal "price_product_fifteen", precision: 16, scale: 4
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_a196e08bf3"
    t.index ["f_type"], name: "index_price_list_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_ffe491b7a0"
    t.index ["parent_id"], name: "fk_rails_a830a6e117"
    t.index ["parent_uuid"], name: "fk_rails_b26fe29ee7"
    t.index ["system_type"], name: "index_price_list_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_price_list_items_on_uuid", unique: true
  end

  create_table "product_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "name", limit: 100, comment: "Name (Intern)"
    t.text "description", size: :medium, comment: "Bemerkungen"
    t.string "f_group", limit: 30, comment: "Produktgruppe"
    t.boolean "active", default: true, comment: "Aktiv"
    t.string "contract", limit: 30, comment: "Produktvertrag"
    t.string "sub_type", limit: 30, default: "-", comment: "Unterruppe"
    t.string "bandwidth", limit: 30, comment: "Bandbreite"
    t.string "medium", limit: 30, comment: "Medium"
    t.string "construction_type", limit: 30, comment: "Bauweise"
    t.string "interface", limit: 30, comment: "Schnittstelle"
    t.integer "max_quantity_services", comment: "Max Anzahl L3VPN"
    t.string "service_level", limit: 30, comment: "Servicelevel"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "bandwidth_available", default: "", null: false
    t.string "bandwidth_step", default: "", null: false
    t.string "group_price_request", limit: 50, comment: "Request-Gruppe"
    t.integer "sla", comment: "SLA"
    t.decimal "price_one_time", precision: 16, scale: 4
    t.decimal "price_mce_one_year", precision: 16, scale: 4
    t.decimal "price_mce_three_years", precision: 16, scale: 4
    t.decimal "price_mce_five_years", precision: 16, scale: 4
    t.decimal "price_ll_one_year_lower_five_km", precision: 16, scale: 4
    t.decimal "price_ll_one_year_lower_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_one_year_greater_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_three_years_lower_five_km", precision: 16, scale: 4
    t.decimal "price_ll_three_years_lower_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_three_years_greater_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_five_years_lower_five_km", precision: 16, scale: 4
    t.decimal "price_ll_five_years_lower_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_five_years_greater_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_five_years_lower_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_five_years_greater_than_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_five_years_greater_than_fifty_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_three_years_lower_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_three_years_greater_than_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_three_years_greater_than_fifty_km", precision: 16, scale: 4
    t.decimal "price_df_three_years", precision: 16, scale: 4
    t.decimal "price_df_five_years", precision: 16, scale: 4
    t.boolean "bandwidth_disabled", default: false, comment: "Bandbreite ausblenden"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.decimal "price_periodical", precision: 16, scale: 4
    t.string "availability", limit: 50, comment: "Verfügbarkeit"
    t.string "time_to_repair", limit: 50, comment: "Entstörzeit"
    t.string "user_name", limit: 50, comment: "user_name"
    t.string "connection_type", limit: 50, comment: "OSPN-Anschlusstyp"
    t.string "type_of_price", limit: 50, comment: "Preisart"
    t.string "bandwidth_secondary", limit: 50, comment: "Bandbreite Sekundär"
    t.string "history_type", limit: 4000, default: "update"
    t.integer "original_id", null: false
    t.integer "history_user_id"
    t.datetime "history_date", precision: nil
    t.decimal "price_one_time_one_year", precision: 16, scale: 4
    t.decimal "price_one_time_three_years", precision: 16, scale: 4
    t.decimal "price_one_time_five_years", precision: 16, scale: 4
    t.string "wba_no", comment: "WBA-Nummer"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.text "save_info", size: :long, comment: "Original-Info"
    t.text "history_info", size: :long
    t.boolean "editable", default: false, comment: "Editierbar"
    t.boolean "show_inventory_service", default: false, comment: "Dienst anzeigen"
    t.boolean "show_inventory_hotspot", default: false, comment: "Hotspot anzeigen"
    t.boolean "show_inventory_location", default: false, comment: "Sis-Standort anzeigen"
    t.boolean "use_default_inventory_page_config", default: true, comment: "use_default_inventory_page_config"
    t.string "f_type", limit: 100, comment: "Typ"
    t.integer "parent_id", comment: "Eltern-Element"
    t.integer "creator_id", comment: "Ersteller"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.text "tags", size: :medium, comment: "Marker"
    t.text "min_hire_times", comment: "Empfohlene Laufzeiten (Mon.)"
    t.integer "default_page_config_product_id", comment: "default_page_config_product_id"
    t.string "inventory_template", limit: 150, default: "form_inventory__edit_element", comment: "Bestandsvorlage"
    t.string "uuid", limit: 61, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 69
    t.string "system_type", limit: 150, comment: "Systemtyp"
    t.string "ordering_template", limit: 150, comment: "Bestellvorlage"
    t.string "order_template", limit: 150, comment: "Auftragsvorlage"
    t.string "survey_template", comment: "Auskundungsvorlage"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "title", limit: 100, comment: "Titel (Extern)"
    t.string "material_no", limit: 30, comment: "Materialnummer"
    t.string "material_group_no", limit: 30, comment: "Materialgruppennummer"
    t.integer "sla_item_id", comment: "SLA"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 61
    t.string "sla_item_uuid", limit: 62
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "hierachy_name"
    t.string "general_ledger_account_no", limit: 30, comment: "Sachkonto"
    t.string "family", limit: 100, comment: "Produktfamilie"
    t.string "sap_family", limit: 100, comment: "SAP-Produktfamilie"
    t.string "sap_group", limit: 100, comment: "SAP-Produktgruppe"
    t.string "sap_product_no", limit: 100, comment: "SAP-Produktnummer"
    t.decimal "price_unit", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, default: "0.0", comment: "Anzahl"
    t.string "article_no", limit: 50, comment: "Artikelnummer"
    t.string "service_catalogue", limit: 100, comment: "Leistungskatalog"
    t.string "package_name", limit: 100, comment: "Paket"
    t.string "article_name", limit: 100, comment: "Artikel"
    t.string "unit_type", limit: 50, comment: "Einheit"
    t.string "discount_group", comment: "Rabattgruppe"
    t.decimal "decimal_surcharge", precision: 10, scale: 2, default: "0.0", comment: "Preisaufschlag"
    t.string "first_product_class", limit: 100, comment: "1. Produktklasse"
    t.string "third_product_class", limit: 100, comment: "3. Produktklasse"
    t.string "second_product_class", limit: 100, comment: "2. Produktklasse"
    t.string "product_class_structure", limit: 150, comment: "Produktklassenaufbau"
    t.decimal "price_df_two_years", precision: 16, scale: 4
    t.decimal "price_df_per_metre_two_years_lower_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_two_years_greater_than_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_two_years_greater_than_fifty_km", precision: 16, scale: 4
    t.decimal "price_one_time_two_years", precision: 16, scale: 4
    t.decimal "price_mce_two_years", precision: 16, scale: 4
    t.string "min_hire_time", limit: 20, comment: "Laufzeit"
    t.decimal "decimal_max_discount", precision: 10, scale: 2, comment: "Maximaler Rabatt"
    t.decimal "price_df_per_metre_one_year_lower_ten_km", precision: 16, scale: 4, default: "0.0", comment: "kl. 10km 1 Jahr"
    t.decimal "price_df_per_metre_one_year_greater_than_ten_km", precision: 16, scale: 4, default: "0.0", comment: "kl. 50km 1 Jahr"
    t.decimal "price_df_per_metre_one_year_greater_than_fifty_km", precision: 16, scale: 4, default: "0.0", comment: ">= 50km 1 Jahr"
    t.decimal "price_df_one_year", precision: 16, scale: 4, default: "0.0", comment: "Mindestpr. 1 Jahr"
    t.string "international_title", limit: 100, comment: "Titel (International)"
    t.string "cost_location", limit: 50, comment: "Kostenstelle"
    t.index ["creator_id"], name: "fk_rails_c45ccfd141"
    t.index ["mandant_id"], name: "fk_rails_d77bcf05a1"
  end

  create_table "products", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "name", limit: 100, comment: "Name (Intern)"
    t.text "description", size: :medium, comment: "Bemerkungen"
    t.string "f_group", limit: 30, comment: "Produktgruppe"
    t.boolean "active", default: true, comment: "Aktiv"
    t.string "contract", limit: 30, comment: "Produktvertrag"
    t.string "sub_type", limit: 30, default: "-", comment: "Unterruppe"
    t.string "bandwidth", limit: 30, comment: "Bandbreite"
    t.string "medium", limit: 30, comment: "Medium"
    t.string "construction_type", limit: 30, comment: "Bauweise"
    t.string "interface", limit: 30, comment: "Schnittstelle"
    t.integer "max_quantity_services", comment: "Max Anzahl L3VPN"
    t.string "service_level", limit: 30, comment: "Servicelevel"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.integer "bandwidth_available", default: 0, comment: "Bandbreite Nutzbar"
    t.integer "bandwidth_step", default: 0, comment: "Bandbreite Schritte"
    t.string "group_price_request", limit: 50, comment: "Request-Gruppe"
    t.integer "sla", comment: "SLA"
    t.decimal "price_one_time", precision: 16, scale: 4
    t.decimal "price_mce_one_year", precision: 16, scale: 4
    t.decimal "price_mce_three_years", precision: 16, scale: 4
    t.decimal "price_mce_five_years", precision: 16, scale: 4
    t.decimal "price_ll_one_year_lower_five_km", precision: 16, scale: 4
    t.decimal "price_ll_one_year_lower_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_one_year_greater_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_three_years_lower_five_km", precision: 16, scale: 4
    t.decimal "price_ll_three_years_lower_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_three_years_greater_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_five_years_lower_five_km", precision: 16, scale: 4
    t.decimal "price_ll_five_years_lower_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_ll_five_years_greater_twenty_five_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_five_years_lower_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_five_years_greater_than_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_five_years_greater_than_fifty_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_three_years_lower_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_three_years_greater_than_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_three_years_greater_than_fifty_km", precision: 16, scale: 4
    t.decimal "price_df_three_years", precision: 16, scale: 4
    t.decimal "price_df_five_years", precision: 16, scale: 4
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.decimal "price_periodical", precision: 16, scale: 4
    t.string "availability", limit: 50, comment: "Verfügbarkeit"
    t.string "time_to_repair", limit: 50, comment: "Entstörzeit"
    t.string "user_name", limit: 50, comment: "user_name"
    t.string "connection_type", limit: 50, comment: "OSPN-Anschlusstyp"
    t.string "type_of_price", limit: 50, comment: "Preisart"
    t.string "bandwidth_secondary", limit: 50, comment: "Bandbreite Sekundär"
    t.boolean "bandwidth_disabled", default: false, comment: "Bandbreite ausblenden"
    t.decimal "price_one_time_one_year", precision: 16, scale: 4
    t.decimal "price_one_time_three_years", precision: 16, scale: 4
    t.decimal "price_one_time_five_years", precision: 16, scale: 4
    t.string "wba_no", comment: "WBA-Nummer"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.text "save_info", size: :long, comment: "Original-Info"
    t.boolean "editable", default: false, comment: "Editierbar"
    t.boolean "show_inventory_service", default: false, comment: "Dienst anzeigen"
    t.boolean "show_inventory_hotspot", default: false, comment: "Hotspot anzeigen"
    t.boolean "show_inventory_location", default: false, comment: "Sis-Standort anzeigen"
    t.boolean "use_default_inventory_page_config", default: true, comment: "use_default_inventory_page_config"
    t.string "f_type", limit: 100, comment: "Typ"
    t.integer "parent_id", comment: "Eltern-Element"
    t.integer "creator_id", comment: "Ersteller"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.text "tags", size: :medium, comment: "Marker"
    t.text "min_hire_times", comment: "Empfohlene Laufzeiten (Mon.)"
    t.integer "default_page_config_product_id", comment: "default_page_config_product_id"
    t.string "inventory_template", limit: 150, default: "form_inventory__edit_element", comment: "Bestandsvorlage"
    t.string "uuid", limit: 61, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 61, comment: "Eltern-UIID"
    t.string "system_type", limit: 150, comment: "Systemtyp"
    t.string "ordering_template", limit: 150, comment: "Bestellvorlage"
    t.string "order_template", limit: 150, comment: "Auftragsvorlage"
    t.string "survey_template", comment: "Auskundungsvorlage"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "title", limit: 100, comment: "Titel (Extern)"
    t.string "material_no", limit: 30, comment: "Materialnummer"
    t.string "material_group_no", limit: 30, comment: "Materialgruppennummer"
    t.integer "sla_item_id", comment: "SLA"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "sla_item_uuid", limit: 62
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.text "hierachy_name", size: :medium, comment: "hierachy_name"
    t.string "general_ledger_account_no", limit: 30, comment: "Sachkonto"
    t.string "family", limit: 100, comment: "Produktfamilie"
    t.string "sap_family", limit: 100, comment: "SAP-Produktfamilie"
    t.string "sap_group", limit: 100, comment: "SAP-Produktgruppe"
    t.string "sap_product_no", limit: 100, comment: "SAP-Produktnummer"
    t.decimal "price_unit", precision: 16, scale: 4
    t.decimal "decimal_quantity", precision: 10, scale: 2, default: "0.0", comment: "Anzahl"
    t.string "article_no", limit: 50, comment: "Artikelnummer"
    t.string "service_catalogue", limit: 100, comment: "Leistungskatalog"
    t.string "package_name", limit: 100, comment: "Paket"
    t.string "article_name", limit: 100, comment: "Artikel"
    t.string "unit_type", limit: 50, comment: "Einheit"
    t.string "discount_group", comment: "Rabattgruppe"
    t.decimal "decimal_surcharge", precision: 10, scale: 2, default: "0.0", comment: "Preisaufschlag"
    t.string "first_product_class", limit: 100, comment: "1. Produktklasse"
    t.string "third_product_class", limit: 100, comment: "3. Produktklasse"
    t.string "second_product_class", limit: 100, comment: "2. Produktklasse"
    t.string "product_class_structure", limit: 150, comment: "Produktklassenaufbau"
    t.decimal "price_df_two_years", precision: 16, scale: 4
    t.decimal "price_df_per_metre_two_years_lower_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_two_years_greater_than_ten_km", precision: 16, scale: 4
    t.decimal "price_df_per_metre_two_years_greater_than_fifty_km", precision: 16, scale: 4
    t.decimal "price_one_time_two_years", precision: 16, scale: 4
    t.decimal "price_mce_two_years", precision: 16, scale: 4
    t.string "min_hire_time", limit: 20, comment: "Laufzeit"
    t.decimal "decimal_max_discount", precision: 10, scale: 2, comment: "Maximaler Rabatt"
    t.decimal "price_df_per_metre_one_year_lower_ten_km", precision: 16, scale: 4, default: "0.0", comment: "kl. 10km 1 Jahr"
    t.decimal "price_df_per_metre_one_year_greater_than_ten_km", precision: 16, scale: 4, default: "0.0", comment: "kl. 50km 1 Jahr"
    t.decimal "price_df_per_metre_one_year_greater_than_fifty_km", precision: 16, scale: 4, default: "0.0", comment: ">= 50km 1 Jahr"
    t.decimal "price_df_one_year", precision: 16, scale: 4, default: "0.0", comment: "Mindestpr. 1 Jahr"
    t.string "international_title", limit: 100, comment: "Titel (International)"
    t.string "cost_location", limit: 50, comment: "Kostenstelle"
    t.index ["creator_id"], name: "fk_rails_2794712893"
    t.index ["creator_uuid"], name: "fk_rails_f873bba76c"
    t.index ["f_type"], name: "index_products_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_2cd8d46b2c"
    t.index ["mandant_uuid"], name: "fk_rails_ed4b89c89e"
    t.index ["parent_id"], name: "fk_rails_89506052d0"
    t.index ["parent_uuid"], name: "fk_rails_4fa3f9e14c"
    t.index ["system_type"], name: "index_products_on_system_type", length: 10
    t.index ["uuid"], name: "index_products_on_uuid", unique: true
  end

  create_table "project_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "original_id"
    t.string "name"
    t.text "description"
    t.decimal "price_target", precision: 16, scale: 4
    t.decimal "price_actual", precision: 16, scale: 4
    t.float "position", limit: 53
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "creator_id"
    t.integer "mandant_id"
    t.boolean "active"
    t.boolean "del_flag"
    t.date "start_date"
    t.date "end_date"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil
    t.integer "history_user_id"
    t.string "f_type", limit: 50
    t.string "space_actual", limit: 50
    t.string "space_target", limit: 50
    t.string "description_actual", limit: 2000
    t.string "description_target", limit: 2000
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "uuid", limit: 150
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 150
    t.string "system_type"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "title", limit: 150, comment: "Titel"
    t.string "prefix", limit: 150, comment: "Präfix"
    t.index ["creator_id"], name: "fk_rails_1f6a6ac9e2"
    t.index ["creator_uuid"], name: "fk_rails_b0c42f0474"
    t.index ["mandant_id"], name: "fk_rails_bff639d211"
    t.index ["mandant_uuid"], name: "fk_rails_0b72e20366"
  end

  create_table "project_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "parent_id"
    t.string "name"
    t.text "description"
    t.decimal "price_target", precision: 16, scale: 4
    t.decimal "price_actual", precision: 16, scale: 4
    t.float "position", limit: 53, default: 1.0
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "creator_id"
    t.integer "mandant_id"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.string "f_type", limit: 50, default: "Aggregationsebene"
    t.string "space_actual", limit: 50
    t.string "space_target", limit: 50
    t.string "description_actual", limit: 50
    t.string "description_target", limit: 50
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "uuid", limit: 150
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "system_type"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.string "title", limit: 150, comment: "Titel"
    t.string "prefix", limit: 150, comment: "Präfix"
    t.index ["creator_id"], name: "fk_rails_9f3d66f3d5"
    t.index ["creator_uuid"], name: "fk_rails_c0cf6b623f"
    t.index ["f_type"], name: "index_project_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_4e6b967716"
    t.index ["mandant_uuid"], name: "fk_rails_fb11d1e192"
    t.index ["parent_id"], name: "fk_rails_f2cd2ebe95"
    t.index ["parent_uuid"], name: "fk_rails_15bb2dca65"
    t.index ["system_type"], name: "index_project_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_project_items_on_uuid", unique: true
  end

  create_table "quick_save_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 65, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 65, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MPLS-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "original_uuid", limit: 65, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 74, comment: "Contains the Universally Unique Identifier of this history element"
    t.string "history_reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need history_reference_id)"
    t.integer "history_reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need history_reference_model)"
    t.string "history_reference_uuid", limit: 150, comment: "Generic attribute which can contain a uuid, which this data set is referenced (need history_reference_model)"
    t.index ["original_id"], name: "index_quick_save_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_quick_save_histories_on_uuid_and_version"
  end

  create_table "quick_saves", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "class_name", limit: 1000
    t.string "field_name", limit: 1000
    t.string "primary_key", limit: 1000
    t.text "old_value"
    t.text "new_value"
    t.string "user_login", limit: 50
    t.integer "mandant_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.integer "dataset_version"
    t.string "table_name"
    t.string "uuid", limit: 64
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 64
    t.string "system_type"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:n-Relation,need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MPLS-004M)"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.index ["mandant_id"], name: "fk_rails_30e4a7b2e0"
    t.index ["system_type"], name: "index_quick_saves_on_system_type", length: 2
    t.index ["uuid"], name: "index_quick_saves_on_uuid", unique: true
  end

  create_table "reporting_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 68, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 68, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "original_uuid", limit: 68, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 76, comment: "Contains the Universally Unique Identifier of this history element"
    t.string "institute_name_a", limit: 75, comment: "Institut A"
    t.string "institute_name_b", limit: 50, comment: "Institut B"
    t.string "institut_a", limit: 5, comment: "Institut A"
    t.string "institut_b", limit: 5, comment: "Institut B"
    t.string "at_reference", limit: 50, comment: "AT-Referenz"
    t.integer "product_id", comment: "Produkt"
    t.string "product_uuid", limit: 61, comment: "Produkt"
    t.text "product_name", size: :medium, comment: "Produkt"
    t.text "product_title", size: :tiny, comment: "Produkt"
    t.string "street_a", limit: 100, comment: "Straße A"
    t.string "zip_code_a", limit: 22, comment: "Postleitzahl A"
    t.string "zip_code_b", limit: 22, comment: "Postleitzahl B"
    t.string "house_number_a", limit: 10, comment: "Hausnummer A"
    t.string "house_number_b", limit: 10, comment: "Hausnummer B"
    t.string "street_b", limit: 100, comment: "Straße B"
    t.date "desired_schedule", comment: "Wunschtermin"
    t.datetime "target_date", precision: nil, comment: "Solltermin"
    t.datetime "old_target_date", precision: nil, comment: "1. Solltermin"
    t.text "reason_for_shift", size: :medium, comment: "Grund der Verschiebung"
    t.datetime "actual_date", precision: nil, comment: "Isttermin"
    t.decimal "working_days", precision: 10, scale: 2, comment: "Werktage zwischen Soll/Ist"
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.decimal "percent_refund", precision: 10, scale: 2, comment: "Prozent Erstattung"
    t.decimal "price_refund", precision: 16, scale: 4
    t.string "sp_no", limit: 30, comment: "SP-ID"
    t.date "to_date", comment: "Datum bis"
    t.date "from_date", comment: "Datum von"
    t.string "location_a", limit: 50, comment: "Ort A"
    t.string "location_b", limit: 50, comment: "Ort B"
    t.integer "inventory_id", comment: "Bestand"
    t.string "inventory_uuid", limit: 63, comment: "Bestand"
    t.integer "suspended_days", comment: "Angehaltende Tage"
    t.index ["original_id"], name: "index_reporting_item_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_reporting_item_histories_on_uuid_and_version"
  end

  create_table "reporting_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 68, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 68, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "institute_name_a", limit: 75, comment: "Institut A"
    t.string "institute_name_b", limit: 50, comment: "Institut B"
    t.string "institut_a", limit: 5, comment: "Institut A"
    t.string "institut_b", limit: 5, comment: "Institut B"
    t.string "at_reference", limit: 50, comment: "AT-Referenz"
    t.integer "product_id", comment: "Produkt"
    t.string "product_uuid", limit: 61, comment: "Produkt"
    t.text "product_name", size: :medium, comment: "Produkt"
    t.text "product_title", size: :tiny, comment: "Produkt"
    t.string "street_a", limit: 100, comment: "Straße A"
    t.string "zip_code_a", limit: 22, comment: "Postleitzahl A"
    t.string "zip_code_b", limit: 22, comment: "Postleitzahl B"
    t.string "house_number_a", limit: 10, comment: "Hausnummer A"
    t.string "house_number_b", limit: 10, comment: "Hausnummer B"
    t.string "street_b", limit: 100, comment: "Straße B"
    t.date "desired_schedule", comment: "Wunschtermin"
    t.datetime "target_date", precision: nil, comment: "Solltermin"
    t.datetime "old_target_date", precision: nil, comment: "1. Solltermin"
    t.text "reason_for_shift", size: :medium, comment: "Grund der Verschiebung"
    t.datetime "actual_date", precision: nil, comment: "Isttermin"
    t.decimal "working_days", precision: 10, scale: 2, comment: "Werktage zwischen Soll/Ist"
    t.decimal "price_periodical", precision: 16, scale: 4
    t.decimal "price_one_time", precision: 16, scale: 4
    t.decimal "percent_refund", precision: 10, scale: 2, comment: "Prozent Erstattung"
    t.decimal "price_refund", precision: 16, scale: 4
    t.string "sp_no", limit: 30, comment: "SP-ID"
    t.date "to_date", comment: "Datum bis"
    t.date "from_date", comment: "Datum von"
    t.string "location_a", limit: 50, comment: "Ort A"
    t.string "location_b", limit: 50, comment: "Ort B"
    t.integer "inventory_id", comment: "Bestand"
    t.string "inventory_uuid", limit: 63, comment: "Bestand"
    t.integer "suspended_days", comment: "Angehaltende Tage"
    t.index ["f_type"], name: "index_reporting_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_2c867fd382"
    t.index ["parent_uuid"], name: "fk_rails_b99382089d"
    t.index ["system_type"], name: "index_reporting_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_reporting_items_on_uuid", unique: true
  end

  create_table "research_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "group_name"
    t.string "street"
    t.string "house_number"
    t.string "house_number_addition"
    t.string "zip_code", limit: 10
    t.string "location"
    t.string "district"
    t.string "kls_no"
    t.string "response_key"
    t.string "response_text"
    t.text "address_hit_type"
    t.text "bandwidth"
    t.text "product_list"
    t.text "address_type"
    t.boolean "active"
    t.boolean "del_flag"
    t.float "version", limit: 53
    t.text "save_info", size: :long
    t.text "comment"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil
    t.integer "history_user_id"
    t.integer "original_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "request_string"
    t.string "uuid", limit: 150
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 150
    t.string "system_type"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.text "address", size: :medium
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_fe3ffd452e"
    t.index ["mandant_id"], name: "fk_rails_a343375344"
  end

  create_table "research_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "group_name"
    t.string "street"
    t.string "house_number"
    t.string "house_number_addition"
    t.string "zip_code", limit: 10
    t.string "location"
    t.string "district"
    t.string "kls_no"
    t.string "response_key"
    t.string "response_text"
    t.text "address_hit_type"
    t.text "bandwidth"
    t.text "product_list"
    t.text "address_type"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.float "version", limit: 53
    t.text "save_info", size: :long
    t.text "comment"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "request_string"
    t.string "uuid", limit: 150
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "system_type"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.text "address", size: :medium
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_bc90bbd529"
    t.index ["f_type"], name: "index_research_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_665b3996ae"
    t.index ["parent_id"], name: "fk_rails_24ded4bd44"
    t.index ["parent_uuid"], name: "fk_rails_b6a125dca9"
    t.index ["system_type"], name: "index_research_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_research_items_on_uuid", unique: true
  end

  create_table "role_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "f_type", limit: 100
    t.text "tags"
    t.string "name", limit: 150
    t.string "state"
    t.string "title", limit: 150
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 58
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 66
    t.string "system_type"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.index ["creator_id"], name: "fk_rails_27fcc74a9d"
    t.index ["mandant_id"], name: "fk_rails_0a4256e8da"
  end

  create_table "role_join_widget_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "role_id"
    t.integer "widget_item_id"
    t.string "role_uuid", limit: 58
    t.string "widget_item_uuid", limit: 65
    t.integer "history_role_id"
    t.integer "history_widget_item_id"
    t.string "history_role_uuid"
    t.string "history_widget_item_uuid"
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", comment: "Contains the Universally Unique Identifier of this history element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
  end

  create_table "role_join_widget_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "role_id"
    t.integer "widget_item_id"
    t.string "role_uuid", limit: 58
    t.string "widget_item_uuid", limit: 65
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
    t.index ["uuid"], name: "index_role_join_widget_items_on_uuid", unique: true
  end

  create_table "roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "f_type", limit: 100
    t.string "state"
    t.text "tags"
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 58
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 58
    t.string "system_type"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.index ["creator_id"], name: "fk_rails_ab70952940"
    t.index ["f_type"], name: "index_roles_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_d62670a0af"
    t.index ["parent_id"], name: "fk_rails_4404228d2f"
    t.index ["parent_uuid"], name: "fk_rails_5ec7b1fac6"
    t.index ["system_type"], name: "index_roles_on_system_type", length: 2
    t.index ["uuid"], name: "index_roles_on_uuid", unique: true
  end

  create_table "sbm_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "uuid", limit: 62
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.text "tags", size: :medium
    t.string "state"
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 70
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.decimal "price_amount", precision: 16, scale: 4
    t.integer "customer_group_id", comment: "Kundengruppe"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 62
    t.string "customer_group_uuid", limit: 68
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_4e8f894bfe"
    t.index ["mandant_id"], name: "fk_rails_832e886a8e"
  end

  create_table "sbm_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 62
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.string "parent_uuid", limit: 62
    t.float "parent_version", limit: 53
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.string "title", limit: 1000
    t.text "description"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.decimal "price_amount", precision: 16, scale: 4
    t.integer "customer_group_id", comment: "Kundengruppe"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "customer_group_uuid", limit: 68
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_cc3b23f50a"
    t.index ["f_type"], name: "index_sbm_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_b087730f88"
    t.index ["parent_id"], name: "fk_rails_2180104228"
    t.index ["parent_uuid"], name: "fk_rails_cf48b81953"
    t.index ["system_type"], name: "index_sbm_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_sbm_items_on_uuid", unique: true
  end

  create_table "schema_info", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "version"
  end

  create_table "serial_e_mail_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 67
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, default: 0.0
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 75
    t.integer "template_item_id", comment: "Vorlage"
    t.boolean "indeed_sent", default: false, comment: "Gesendet?"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 67
    t.string "template_item_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_c5b12f7e3e"
    t.index ["mandant_id"], name: "fk_rails_fb4f71fba0"
    t.index ["template_item_id"], name: "fk_rails_b1278dce4b"
    t.index ["template_item_uuid"], name: "fk_rails_b2cbe3af7d"
  end

  create_table "serial_e_mail_join_groups", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "serial_e_mail_id"
    t.integer "group_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "group_uuid", limit: 59
    t.string "serial_e_mail_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["group_id"], name: "fk_rails_17b7311250"
    t.index ["mandant_id"], name: "fk_rails_c5807d58f4"
    t.index ["serial_e_mail_id"], name: "fk_rails_6e7fe9f881"
    t.index ["serial_e_mail_uuid"], name: "fk_rails_e48deafd51"
  end

  create_table "serial_e_mail_join_mandants", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "serial_e_mail_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "serial_e_mail_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_1d14593a6e"
    t.index ["serial_e_mail_id"], name: "fk_rails_737ebeee5f"
    t.index ["serial_e_mail_uuid"], name: "fk_rails_5e9823cf66"
  end

  create_table "serial_e_mail_join_roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "serial_e_mail_id"
    t.integer "role_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "role_uuid", limit: 58
    t.string "serial_e_mail_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_68e52c7f7b"
    t.index ["role_id"], name: "fk_rails_7034701727"
    t.index ["role_uuid"], name: "fk_rails_9e8a0f8b5f"
    t.index ["serial_e_mail_id"], name: "fk_rails_c9d347d700"
    t.index ["serial_e_mail_uuid"], name: "fk_rails_d04d7e650e"
  end

  create_table "serial_e_mail_join_users", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "serial_e_mail_id"
    t.integer "user_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "user_uuid", limit: 58
    t.string "serial_e_mail_uuid", limit: 67
    t.string "updater_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_819fbec021"
    t.index ["serial_e_mail_id"], name: "fk_rails_bd5e76c24a"
    t.index ["serial_e_mail_uuid"], name: "fk_rails_cdc2851d77"
    t.index ["user_id"], name: "fk_rails_b703ef7d39"
  end

  create_table "serial_e_mails", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 67
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 67
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, default: 0.0
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.integer "template_item_id", comment: "Vorlage"
    t.boolean "indeed_sent", default: false, comment: "Gesendet?"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "template_item_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_9ac613d3ca"
    t.index ["f_type"], name: "index_serial_e_mails_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_a9aa2441ed"
    t.index ["parent_id"], name: "fk_rails_bb84d1e3ad"
    t.index ["parent_uuid"], name: "fk_rails_3ce6f96d39"
    t.index ["system_type"], name: "index_serial_e_mails_on_system_type", length: 2
    t.index ["template_item_id"], name: "fk_rails_7e7a058c2c"
    t.index ["template_item_uuid"], name: "fk_rails_b354057695"
    t.index ["uuid"], name: "index_serial_e_mails_on_uuid", unique: true
  end

  create_table "sessions", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data", size: :medium
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "sis_group_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 150
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, default: 0.0
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 150
    t.boolean "sis_group", default: true, comment: "sis_group"
    t.string "sis_organization_no"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_00e8025a80"
    t.index ["mandant_id"], name: "fk_rails_d9197d01dc"
  end

  create_table "sis_groups", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 150
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, default: 0.0
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.boolean "sis_group", default: true, comment: "sis_group"
    t.string "sis_organization_no"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["creator_id"], name: "fk_rails_addc1d27af"
    t.index ["f_type"], name: "index_sis_groups_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_52ce94c400"
    t.index ["parent_id"], name: "fk_rails_a642c86273"
    t.index ["parent_uuid"], name: "fk_rails_a58082c2c9"
    t.index ["system_type"], name: "index_sis_groups_on_system_type", length: 2
    t.index ["uuid"], name: "index_sis_groups_on_uuid", unique: true
  end

  create_table "sis_locations", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "StandortID"
    t.string "Land"
    t.string "Stadt"
    t.string "Standort"
    t.string "TKTechnik", limit: 50
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
  end

  create_table "sis_organizations", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "OrgID"
    t.string "Gesellschaft"
    t.string "Organisation"
    t.string "old_Gesellschaft"
    t.string "old_Organisation"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
  end

  create_table "sla_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "uuid", limit: 62
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.text "tags", size: :medium
    t.string "state", limit: 100
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :medium
    t.datetime "history_date", precision: nil, comment: "Historie-Datum"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.integer "original_id", comment: "Original-ID"
    t.string "history_uuid", limit: 70
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "service_time", limit: 100
    t.string "operation_time", limit: 100
    t.string "availability_sp", limit: 100
    t.string "availability_pri", limit: 100
    t.string "availability_sec", limit: 100
    t.string "time_to_repair_sp", limit: 100
    t.string "time_to_repair_pri", limit: 100
    t.string "time_to_repair_sec", limit: 100
    t.string "response_time", limit: 100
    t.string "information_time", limit: 100
    t.string "on_site_time", limit: 100
    t.string "time_to_repair", limit: 100
    t.string "availability", limit: 100
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 62
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.string "recovery_time", limit: 100, comment: "Wiederherstellungszeit"
    t.index ["creator_id"], name: "fk_rails_07e9efe974"
    t.index ["mandant_id"], name: "fk_rails_4cf02ccc41"
  end

  create_table "sla_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 62
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 62
    t.float "parent_version", limit: 53, default: 0.0
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "service_time", limit: 100
    t.string "operation_time", limit: 100
    t.string "availability_sp", limit: 100
    t.string "availability_pri", limit: 100
    t.string "availability_sec", limit: 100
    t.string "time_to_repair_sp", limit: 100
    t.string "time_to_repair_pri", limit: 100
    t.string "time_to_repair_sec", limit: 100
    t.string "response_time", limit: 100
    t.string "information_time", limit: 100
    t.string "on_site_time", limit: 100
    t.string "time_to_repair", limit: 100
    t.string "availability", limit: 100
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.string "recovery_time", limit: 100, comment: "Wiederherstellungszeit"
    t.index ["creator_id"], name: "fk_rails_12bf33473f"
    t.index ["f_type"], name: "index_sla_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_51af46dcfd"
    t.index ["parent_id"], name: "fk_rails_4be41a0adb"
    t.index ["parent_uuid"], name: "fk_rails_a9d354c321"
    t.index ["system_type"], name: "index_sla_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_sla_items_on_uuid", unique: true
  end

  create_table "statistic_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.text "hierachy_name"
    t.string "title", limit: 1000
    t.text "description"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 150
    t.string "history_uuid", limit: 150
  end

  create_table "statistics", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.string "reference_uuid", limit: 150
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type"
    t.string "f_type"
    t.string "state"
    t.text "tags", size: :medium
    t.string "name", limit: 1000
    t.text "hierachy_name"
    t.string "title", limit: 1000
    t.text "description"
    t.index ["f_type"], name: "index_statistics_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_c7aff607f7"
    t.index ["parent_uuid"], name: "fk_rails_5353f15ef1"
    t.index ["system_type"], name: "index_statistics_on_system_type", length: 2
    t.index ["uuid"], name: "index_statistics_on_uuid", unique: true
  end

  create_table "survey_item_histories", id: { comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.string "uuid", limit: 150
    t.bigint "mandant_id", comment: "Mandant-ID"
    t.bigint "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.bigint "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.bigint "creator_id", comment: "Ersteller"
    t.bigint "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.text "tags", size: :tiny
    t.string "state", limit: 100
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 150
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.text "survey_as_json", size: :medium
    t.text "survey_result", size: :medium
    t.float "parent_version", limit: 53
    t.string "question_type", limit: 100
    t.text "choices", size: :medium
    t.boolean "is_required", default: true, comment: "Pflichtfeld"
    t.boolean "has_other", default: false, comment: "Hat Andere?"
    t.string "visible_if", limit: 100
    t.boolean "use_code_content", default: true, comment: "Ben. Umfrage-Code"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 150
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
  end

  create_table "survey_items", id: { comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "uuid", limit: 150
    t.bigint "mandant_id", comment: "Mandant-ID"
    t.bigint "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.bigint "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.bigint "creator_id", comment: "Ersteller"
    t.bigint "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :tiny
    t.string "name", limit: 150
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.text "survey_as_json", size: :medium
    t.text "survey_result", size: :medium
    t.float "parent_version", limit: 53
    t.string "question_type", limit: 100
    t.text "choices", size: :medium
    t.boolean "is_required", default: true, comment: "Pflichtfeld"
    t.boolean "has_other", default: false, comment: "Hat Andere?"
    t.string "visible_if", limit: 100
    t.boolean "use_code_content", default: true, comment: "Ben. Umfrage-Code"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.index ["f_type"], name: "index_survey_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_4336b4cb00"
    t.index ["system_type"], name: "index_survey_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_survey_items_on_uuid", unique: true
  end

  create_table "tableWithJsonStr", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "jsonStr"
  end

  create_table "table_history_join_roles", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "table_id"
    t.string "table_name"
    t.string "description"
    t.integer "history_table_id"
    t.string "history_table_name"
    t.integer "mandant_id"
    t.integer "role_id"
    t.datetime "history_date", precision: nil
    t.string "history_type"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "table_join_mandant_histories", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "table_id"
    t.string "table_name"
    t.integer "history_table_id"
    t.string "history_table_name"
    t.integer "mandant_id"
    t.string "basic_plattform_name"
    t.string "sis_organization_no"
    t.datetime "history_date", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "history_table_uuid", limit: 150
    t.string "table_uuid", limit: 150
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
  end

  create_table "table_join_mandants", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "table_id"
    t.string "table_name"
    t.integer "mandant_id"
    t.string "basic_plattform_name"
    t.string "sis_organization_no"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "table_uuid", limit: 150
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
  end

  create_table "table_join_roles", id: false, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "table_id"
    t.string "table_name"
    t.string "description"
    t.integer "mandant_id"
    t.integer "role_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
  end

  create_table "template_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "f_type", limit: 100
    t.text "tags", size: :medium
    t.string "state", limit: 100
    t.text "name", size: :medium
    t.text "title", size: :medium
    t.text "description", size: :medium
    t.text "subject", size: :medium
    t.text "body", size: :medium
    t.boolean "just_for_creator", default: false, comment: "Is thist template only for the creator"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "uuid", limit: 67
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 75
    t.string "system_type", limit: 100
    t.float "reference_version", limit: 53, default: 0.0
    t.float "parent_version", limit: 53, default: 0.0
    t.string "to", limit: 2000
    t.string "cc", limit: 2000
    t.string "bcc", limit: 2000
    t.string "from", limit: 150
    t.string "publish_date", limit: 100
    t.string "mandant_uuid", limit: 61
    t.string "user_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.boolean "select_existing_attachments", default: false, comment: "Referenzanhänge anhängen"
    t.string "attach_functions", limit: 100, comment: "Anhang-Funktionen"
    t.index ["creator_id"], name: "fk_rails_7ecd56c5ae"
  end

  create_table "template_item_join_attach_page_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "template_item_id"
    t.integer "page_item_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "attach_page_item_id", limit: 100
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "page_item_uuid", limit: 63
    t.string "template_item_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_9596a0e4ee"
    t.index ["template_item_id"], name: "fk_rails_3ded1d384b"
    t.index ["template_item_uuid"], name: "fk_rails_46a34c3a96"
  end

  create_table "template_item_join_groups", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "template_item_id"
    t.integer "group_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "group_uuid", limit: 59
    t.string "template_item_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["group_id"], name: "fk_rails_93de2802eb"
    t.index ["mandant_id"], name: "fk_rails_2e067d0e6a"
    t.index ["template_item_id"], name: "fk_rails_9c3228585c"
    t.index ["template_item_uuid"], name: "fk_rails_986f64198b"
  end

  create_table "template_item_join_roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "template_item_id"
    t.integer "role_id"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 150
    t.string "mandant_uuid", limit: 61
    t.string "role_uuid", limit: 58
    t.string "template_item_uuid", limit: 67
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_249a9efafc"
    t.index ["role_id"], name: "fk_rails_3a609ff2ad"
    t.index ["role_uuid"], name: "fk_rails_3c271349c4"
    t.index ["template_item_id"], name: "fk_rails_bdf91d4d05"
    t.index ["template_item_uuid"], name: "fk_rails_26b8a82a79"
  end

  create_table "template_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.float "position", limit: 53
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0
    t.string "f_type", limit: 100
    t.string "state", limit: 100
    t.text "tags", size: :medium
    t.text "name", size: :medium
    t.text "title", size: :medium
    t.text "description", size: :medium
    t.text "subject", size: :medium
    t.text "body", size: :medium
    t.boolean "just_for_creator", default: false, comment: "Is thist template only for the creator"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "uuid", limit: 67
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 67
    t.string "system_type", limit: 100
    t.float "reference_version", limit: 53, default: 0.0
    t.float "parent_version", limit: 53, default: 0.0
    t.string "to", limit: 2000
    t.string "cc", limit: 2000
    t.string "bcc", limit: 2000
    t.string "from", limit: 150
    t.string "publish_date", limit: 100
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "reference field which could contain a reference to a extension_item (by default nil)"
    t.string "extension_item_uuid", limit: 68
    t.boolean "select_existing_attachments", default: false, comment: "Referenzanhänge anhängen"
    t.string "attach_functions", limit: 100, comment: "Anhang-Funktionen"
    t.index ["creator_id"], name: "fk_rails_f0fbb12335"
    t.index ["f_type"], name: "index_template_items_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_348ec1cd0a"
    t.index ["name"], name: "index_template_items_on_name", length: 5
    t.index ["parent_id"], name: "fk_rails_586b41e00b"
    t.index ["parent_uuid"], name: "fk_rails_790480df93"
    t.index ["system_type"], name: "index_template_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_template_items_on_uuid", unique: true
  end

  create_table "todo_item_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "parent_id", comment: "Eltern-Element"
    t.bigint "mandant_id", comment: "Mandant-ID"
    t.integer "creator_id", comment: "creator_id"
    t.boolean "active", default: true
    t.boolean "del_flag", default: false
    t.float "version", limit: 53
    t.float "position", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "f_type", limit: 100
    t.string "name"
    t.text "description", size: :medium
    t.text "comment"
    t.text "attach"
    t.string "responsible_user_id", limit: 100
    t.boolean "favourite", default: false, comment: "favourite"
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil
    t.integer "history_user_id"
    t.integer "original_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 63
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 71
    t.string "system_type"
    t.string "title", limit: 150
    t.string "state"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 63
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_965f998268"
  end

  create_table "todo_items", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "parent_id", comment: "Eltern-Element"
    t.bigint "mandant_id", comment: "Mandant-ID"
    t.integer "creator_id", comment: "creator_id"
    t.boolean "active", default: true
    t.boolean "del_flag"
    t.float "version", limit: 53
    t.float "position", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "f_type", limit: 100
    t.string "name"
    t.text "description", size: :medium
    t.text "comment"
    t.text "attach"
    t.string "responsible_user_id", limit: 100
    t.boolean "favourite", default: false, comment: "favourite"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 63
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 63
    t.string "system_type"
    t.string "title", limit: 150
    t.string "state"
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.index ["creator_id"], name: "fk_rails_f43bb05bc3"
    t.index ["f_type"], name: "index_todo_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_29d0c44629"
    t.index ["parent_uuid"], name: "fk_rails_f67a716189"
    t.index ["system_type"], name: "index_todo_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_todo_items_on_uuid", unique: true
  end

  create_table "user_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.text "login", size: :medium, comment: "Login"
    t.text "password", size: :medium, comment: "Passwort"
    t.text "last_name", size: :medium, comment: "Nachname"
    t.text "first_name", size: :medium, comment: "Vorname"
    t.string "information", limit: 1000, comment: "Bemerkungen"
    t.text "mail_name", size: :medium, comment: "E-Mail-Name"
    t.text "mail_address", size: :medium, comment: "E-Mail"
    t.text "mail_signature", size: :medium, comment: "Signatur"
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.text "phone_extension", size: :medium, comment: "Durchwahl"
    t.string "phone_type", limit: 10, comment: "phone_type"
    t.string "phone_ip", limit: 35, comment: "phone_ip"
    t.text "nav_start", size: :medium, comment: "nav_start"
    t.string "export_view", limit: 10, comment: "export_view"
    t.datetime "login_at", precision: nil, comment: "Letzter Login"
    t.boolean "active", default: true, comment: "Aktiv"
    t.string "default_billing_month", comment: "default_billing_month"
    t.string "navigation_type", comment: "navigation_type"
    t.boolean "quick_editable", default: false, comment: "quick_edit"
    t.datetime "remember_token_expires_at", precision: nil, comment: "remember_token_expires_at"
    t.string "remember_token", comment: "remember_token"
    t.string "connect_status", comment: "connect_status"
    t.datetime "last_connect_status", precision: nil, comment: "last_connect_status"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.string "telephone_url", comment: "telephone_url"
    t.boolean "quick_page_design", default: false, comment: "Quick-Seitenkonfig."
    t.integer "mandant_id", comment: "Mandant-ID"
    t.integer "parent_id", comment: "Eltern-Element"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.string "f_type", comment: "Elementtyp"
    t.text "tags", size: :medium, comment: "Marker"
    t.text "state", size: :medium, comment: "Status"
    t.text "name", size: :medium, comment: "Name"
    t.text "title", size: :medium, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :long, comment: "Historie-Info"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.integer "original_id", comment: "Original-ID"
    t.string "uuid", limit: 58, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.string "history_uuid", limit: 66, comment: "Historie-UUID"
    t.string "system_type", comment: "Systemtyp"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.string "history_user_uuid", limit: 58, comment: "Historie-Benutzer"
    t.string "original_uuid", limit: 58, comment: "Original-ID"
    t.datetime "last_password_change", precision: nil, comment: "Letzte PW-Änderung"
    t.text "password_hash", size: :medium, comment: "Passwort-Hash"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.text "hierachy_name", size: :medium, comment: "hierachy_name"
    t.text "remember_json", size: :medium, comment: "Remember-JSON"
    t.boolean "quick_memory", default: false, comment: "Quick-Memory"
    t.string "quick_search_target", limit: 100, default: "inventory", comment: "Standardsuche"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.string "salutation", limit: 25, comment: "Anrede"
    t.string "supervisor_uuid", limit: 58, comment: "Vorgesetzter"
    t.date "last_validation", comment: "Letzte Validierung"
    t.date "next_validation", comment: "Nächste Validierung"
    t.string "validation_interval", limit: 100, comment: "Prüfintervall"
    t.integer "remaining_login_attempts", default: 5, comment: "Anzahl verbleibender Login Versuche"
    t.string "show_inventory_max_month", limit: 5, default: "12", comment: "Maximale Anzeige Bestand"
    t.index ["creator_id"], name: "fk_rails_af257fc5b7"
  end

  create_table "user_join_chatrooms", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "user_id", comment: "Benutzer"
    t.integer "chatroom_id", comment: "chatroom_id"
    t.boolean "admin", default: false, comment: "admin"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.datetime "last_seen", precision: nil, comment: "last_seen"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "notification_status"
    t.boolean "notification_status_mail", default: false, comment: "notification_status_mail"
    t.string "uuid", limit: 150
    t.string "chatroom_uuid", limit: 62, comment: "chatroom_uuid"
    t.string "user_uuid", limit: 58
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["chatroom_id"], name: "fk_rails_30fe9d7834"
    t.index ["mandant_id"], name: "fk_rails_abd7a787bf"
    t.index ["user_id"], name: "fk_rails_5ef610aca1"
  end

  create_table "user_join_customer_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "user_id"
    t.integer "customer_id"
    t.string "user_uuid", limit: 58
    t.string "customer_uuid", limit: 62
    t.integer "history_user_id"
    t.integer "history_customer_id"
    t.string "history_user_uuid", limit: 58
    t.string "history_customer_uuid", limit: 150
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "history_info", size: :long
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "original_uuid", limit: 150
    t.string "history_uuid", limit: 150
  end

  create_table "user_join_customers", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "user_id"
    t.integer "customer_id"
    t.string "user_uuid", limit: 58
    t.string "customer_uuid", limit: 62
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.index ["uuid"], name: "index_user_join_customers_on_uuid", unique: true
  end

  create_table "user_join_groups", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "user_id", comment: "Benutzer"
    t.integer "group_id", comment: "group_id"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :medium
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "uuid", limit: 150
    t.string "user_uuid", limit: 58
    t.string "group_uuid", limit: 59
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["group_id"], name: "fk_rails_5f3701e0cb"
    t.index ["mandant_id"], name: "fk_rails_3d6772f7a4"
    t.index ["user_id"], name: "fk_rails_01b2cc4781"
  end

  create_table "user_join_mandants", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "user_id", comment: "Benutzer"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.boolean "active", default: true, comment: "Aktiv"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.boolean "is_favorite", default: false, comment: "Favorit"
    t.string "uuid", limit: 150
    t.string "user_uuid", limit: 58
    t.string "mandant_uuid", limit: 61
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_20791c05d4"
    t.index ["user_id"], name: "fk_rails_e3a970d55e"
  end

  create_table "user_join_messages", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "user_id", comment: "Benutzer"
    t.integer "message_id", comment: "Nachricht-ID"
    t.integer "chatroom_id", comment: "chatroom_id"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.datetime "last_seen", precision: nil, comment: "last_seen"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "uuid", limit: 150
    t.string "user_uuid", limit: 58, comment: "Benutzer"
    t.string "message_uuid", limit: 61
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "chatroom_uuid", limit: 62
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["chatroom_id"], name: "fk_rails_4e90ece22a"
    t.index ["mandant_id"], name: "fk_rails_09d8a404fb"
    t.index ["mandant_uuid"], name: "fk_rails_eff6c885bc"
    t.index ["message_id"], name: "fk_rails_68940bed81"
    t.index ["user_id"], name: "fk_rails_f4bf54c75d"
    t.index ["user_uuid"], name: "fk_rails_0fd795520f"
  end

  create_table "user_join_project_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "user_id", comment: "Benutzer"
    t.integer "project_item_id", comment: "project_item_id"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "uuid", limit: 150
    t.string "user_uuid", limit: 58, comment: "Benutzer"
    t.string "project_item_uuid", limit: 150, comment: "project_item_uuid"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_757f83a5bd"
    t.index ["mandant_uuid"], name: "fk_rails_bab74d056f"
    t.index ["project_item_id"], name: "fk_rails_8bed4f7643"
    t.index ["project_item_uuid"], name: "fk_rails_31dd1c0cf3"
    t.index ["user_id"], name: "fk_rails_41765b5357"
    t.index ["user_uuid"], name: "fk_rails_368a2c16f1"
  end

  create_table "user_join_roles", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "user_id", comment: "Benutzer"
    t.integer "role_id", comment: "Rolle"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.text "mandant_ids", size: :medium
    t.text "controllers", size: :medium
    t.string "uuid", limit: 150
    t.string "user_uuid", limit: 58
    t.string "role_uuid", limit: 58, comment: "Rolle"
    t.string "mandant_uuid", limit: 61
    t.text "mandant_uuids", size: :medium
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_e32f451e55"
    t.index ["role_id"], name: "fk_rails_b837395c89"
    t.index ["role_uuid"], name: "fk_rails_b02535e58d"
    t.index ["user_id"], name: "fk_rails_5048fb937e"
  end

  create_table "user_join_todo_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "user_id", comment: "Benutzer"
    t.integer "todo_item_id", comment: "todo_item_id"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.string "uuid", limit: 150
    t.string "todo_item_uuid", limit: 63
    t.string "user_uuid", limit: 58, comment: "Benutzer"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.index ["mandant_id"], name: "fk_rails_9681784fbb"
    t.index ["mandant_uuid"], name: "fk_rails_2e864377c3"
    t.index ["todo_item_id"], name: "fk_rails_81cd65b3ba"
    t.index ["user_id"], name: "fk_rails_158d97fde5"
    t.index ["user_uuid"], name: "fk_rails_03a7f93d78"
  end

  create_table "user_join_widget_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.integer "user_id", comment: "Letzter Bearbeiter"
    t.integer "widget_item_id", comment: "widget_item_id"
    t.string "user_uuid", limit: 58, comment: "Benutzer"
    t.string "widget_item_uuid", limit: 65, comment: "widget_item_id"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.integer "history_widget_item_id", comment: "history_widget_item_id"
    t.string "history_user_uuid", limit: 58, comment: "Historie-Benutzer"
    t.string "history_widget_item_uuid", limit: 100, comment: "history_widget_item_id"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "uuid", limit: 85
    t.text "history_info", size: :medium, comment: "Historie-Info"
    t.integer "original_id", comment: "Original-ID"
    t.string "original_uuid", limit: 73, comment: "Original-ID"
    t.string "history_uuid", limit: 150, comment: "Historie-UUID"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.float "position", limit: 53, comment: "Position"
    t.boolean "active", default: true, comment: "Aktiv"
  end

  create_table "user_join_widget_items", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.integer "user_id", comment: "Letzter Bearbeiter"
    t.integer "widget_item_id", comment: "widget_item_id"
    t.string "user_uuid", limit: 58, comment: "Benutzer"
    t.string "widget_item_uuid", limit: 65, comment: "widget_item_id"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "uuid", limit: 85
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.float "position", limit: 53, comment: "Position"
    t.boolean "active", default: true, comment: "Aktiv"
    t.index ["uuid"], name: "index_user_join_widget_items_on_uuid", unique: true
  end

  create_table "user_search_fields", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "field_type", limit: 200, comment: "field_type"
    t.string "search_page", limit: 100, default: "inventory"
    t.string "field_name", limit: 300
    t.boolean "order_field", default: false, null: false
    t.string "order_field_direction", limit: 5, default: "ASC"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "mandant_id"
    t.integer "user_id", comment: "This field contains the user id of the creator of these element."
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the user who has changed this data set."
    t.string "creator_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "lock_user_uuid", limit: 58
    t.text "hierachy_name"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.float "position", limit: 53, comment: "Position"
    t.index ["field_name"], name: "index_user_search_fields_on_field_name", length: 10
    t.index ["field_type"], name: "index_user_search_fields_on_field_type", length: 13
    t.index ["mandant_id"], name: "fk_rails_b1d1407b1c"
    t.index ["user_id"], name: "fk_rails_edac561d40"
  end

  create_table "users", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.text "login", size: :medium, comment: "Login"
    t.text "password", size: :medium, comment: "Passwort"
    t.text "last_name", size: :medium, comment: "Nachname"
    t.text "first_name", size: :medium, comment: "Vorname"
    t.text "information", size: :medium, comment: "Bemerkungen"
    t.text "mail_name", size: :medium, comment: "E-Mail-Name"
    t.text "mail_address", size: :medium, comment: "E-Mail"
    t.text "mail_signature", size: :medium, comment: "Signatur"
    t.datetime "created_at", precision: nil, comment: "Erstellt"
    t.datetime "updated_at", precision: nil, comment: "Geändert"
    t.text "phone_extension", size: :medium, comment: "Durchwahl"
    t.string "phone_type", limit: 10, comment: "phone_type"
    t.string "phone_ip", limit: 35, comment: "phone_ip"
    t.text "nav_start", size: :medium, comment: "nav_start"
    t.string "export_view", limit: 10, comment: "export_view"
    t.datetime "login_at", precision: nil, comment: "Letzter Login"
    t.boolean "active", default: true, comment: "Aktiv"
    t.string "default_billing_month", limit: 30, comment: "default_billing_month"
    t.integer "mandant_id", comment: "Mandant-ID"
    t.string "navigation_type", limit: 50, comment: "navigation_type"
    t.boolean "quick_editable", default: false, comment: "quick_edit"
    t.datetime "remember_token_expires_at", precision: nil, comment: "remember_token_expires_at"
    t.string "remember_token", comment: "remember_token"
    t.string "connect_status", limit: 20, comment: "connect_status"
    t.datetime "last_connect_status", precision: nil, comment: "last_connect_status"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.string "telephone_url", comment: "telephone_url"
    t.boolean "quick_page_design", default: false, comment: "Quick-Seitenkonfig."
    t.integer "parent_id", comment: "Eltern-Element"
    t.decimal "position", precision: 10, scale: 2, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.integer "creator_id", comment: "Ersteller"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.decimal "version", precision: 10, scale: 2, default: "0.0", comment: "Version"
    t.string "f_type", comment: "Elementtyp"
    t.text "tags", size: :medium, comment: "Marker"
    t.text "state", size: :medium, comment: "Status"
    t.text "name", size: :medium, comment: "Name"
    t.text "title", size: :medium, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "uuid", limit: 58, comment: "UUID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.string "parent_uuid", limit: 58, comment: "Eltern-UIID"
    t.string "system_type", comment: "Systemtyp"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.integer "parent_version", default: 0, comment: "Eltern-Version"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "last_password_change", precision: nil, comment: "Letzte PW-Änderung"
    t.text "password_hash", size: :medium, comment: "Passwort-Hash"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.text "hierachy_name", size: :medium, comment: "hierachy_name"
    t.text "remember_json", size: :medium, comment: "Remember-JSON"
    t.boolean "quick_memory", default: false, comment: "Quick-Memory"
    t.string "quick_search_target", limit: 100, default: "inventory", comment: "Standardsuche"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.string "salutation", limit: 25, comment: "Anrede"
    t.string "supervisor_uuid", limit: 58, comment: "supervisor_uuid"
    t.date "last_validation", comment: "last_validation"
    t.date "next_validation", comment: "next_validation"
    t.string "validation_interval", limit: 25, comment: "Prüfintervall"
    t.integer "remaining_login_attempts", default: 5, comment: "Anzahl verbleibender Login Versuche"
    t.string "show_inventory_max_month", limit: 5, default: "12", comment: "Maximale Anzeige Bestand"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["creator_id"], name: "fk_rails_ad52186b75"
    t.index ["creator_uuid"], name: "fk_rails_5fb6d19cff"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["f_type"], name: "index_users_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_790579ebc1"
    t.index ["mandant_uuid"], name: "fk_rails_88da17f1df"
    t.index ["parent_id"], name: "fk_rails_684a13307d"
    t.index ["parent_uuid"], name: "fk_rails_2412cc2244"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["system_type"], name: "index_users_on_system_type", length: 2
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
    t.index ["uuid"], name: "index_users_on_uuid", unique: true
  end

  create_table "version_item_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 66, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 66, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MCE-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "original_uuid", limit: 66, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 75, comment: "Contains the Universally Unique Identifier of this history element"
    t.string "history_reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need history_reference_id)"
    t.integer "history_reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need history_reference_model)"
    t.string "history_reference_uuid", limit: 150, comment: "Generic attribute which can contain a uuid, which this data set is referenced (need history_reference_model)"
    t.index ["original_id"], name: "index_version_item_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_version_item_histories_on_uuid_and_version"
  end

  create_table "version_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 66, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 66, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:n-Relation,need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MCE-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.index ["f_type"], name: "index_version_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_e2d17528de"
    t.index ["parent_uuid"], name: "fk_rails_e4ebf66748"
    t.index ["system_type"], name: "index_version_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_version_items_on_uuid", unique: true
  end

  create_table "wba_article_histories", id: { comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "wba_id"
    t.integer "mandant_id"
    t.float "position", limit: 53
    t.text "description", size: :medium
    t.bigint "quantity", comment: "Menge"
    t.decimal "price_unit", precision: 16, scale: 4
    t.integer "wba_history_id"
    t.integer "original_id"
    t.datetime "history_date", precision: nil
    t.text "history_info", size: :long
    t.integer "history_user_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.decimal "price_unit_gross", precision: 16, scale: 4
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "creator_id"
    t.integer "del_flag", limit: 1
    t.string "state"
    t.string "f_type"
    t.string "title", limit: 1000
    t.string "name", limit: 1000
    t.text "group_description", size: :medium
    t.string "uuid", limit: 65
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 73
    t.string "system_type"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.decimal "decimal_quantity", precision: 10, scale: 2, comment: "Menge"
    t.decimal "value_added_tax", precision: 10, scale: 2, comment: "MWST"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 65
    t.string "wba_uuid", limit: 57
    t.string "wba_history_uuid", limit: 150
    t.text "extra_fields", size: :medium
    t.string "material_no", limit: 30
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.string "cost_location", comment: "Kostenstelle"
    t.string "wba_no"
    t.string "profit_center_no", limit: 100
    t.index ["creator_id"], name: "fk_rails_8b88a22382"
    t.index ["mandant_id"], name: "fk_rails_85642ba8e6"
    t.index ["wba_id"], name: "fk_rails_4461a3a833"
    t.index ["wba_uuid"], name: "fk_rails_1257ca81f7"
  end

  create_table "wba_articles", id: { comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "wba_id"
    t.integer "mandant_id"
    t.float "position", limit: 53
    t.text "description", size: :medium
    t.bigint "quantity", comment: "Menge"
    t.decimal "price_unit", precision: 16, scale: 4
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.decimal "price_unit_gross", precision: 16, scale: 4
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.integer "creator_id"
    t.integer "del_flag", limit: 1, default: 0
    t.string "state"
    t.string "f_type"
    t.string "title", limit: 1000
    t.string "name", limit: 1000
    t.text "group_description", size: :medium
    t.string "uuid", limit: 65
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 65
    t.string "system_type"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.decimal "decimal_quantity", precision: 10, scale: 2, comment: "Menge"
    t.decimal "value_added_tax", precision: 10, scale: 2, comment: "MWST"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "wba_uuid", limit: 57
    t.text "extra_fields", size: :medium
    t.string "material_no", limit: 30
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.string "cost_location", comment: "Kostenstelle"
    t.string "wba_no"
    t.string "profit_center_no", limit: 100
    t.index ["creator_id"], name: "fk_rails_f3beb1b3b8"
    t.index ["f_type"], name: "index_wba_articles_on_f_type", length: 2
    t.index ["mandant_id"], name: "fk_rails_7ad0ade016"
    t.index ["parent_uuid"], name: "fk_rails_42de4001e3"
    t.index ["system_type"], name: "index_wba_articles_on_system_type", length: 2
    t.index ["uuid"], name: "index_wba_articles_on_uuid", unique: true
    t.index ["wba_id"], name: "fk_rails_556dc94a70"
    t.index ["wba_uuid"], name: "fk_rails_5fc66854d1"
  end

  create_table "wba_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.integer "mandant_id"
    t.integer "customer_id"
    t.integer "inventory_id"
    t.string "sap_customer_no"
    t.string "wba_no", comment: "WBA-Nummer/PSP-Element"
    t.datetime "wba_date", precision: nil
    t.string "distribution_channel"
    t.string "cost_location", comment: "Kostenstelle"
    t.string "order_no"
    t.string "vp_no"
    t.string "product_no"
    t.text "comment"
    t.string "state", limit: 50
    t.integer "processor_id", comment: "Bearbeiter"
    t.boolean "processed", default: false
    t.datetime "processing_date", precision: nil
    t.integer "approver_id"
    t.boolean "approved", default: false
    t.datetime "approval_date", precision: nil
    t.boolean "sent", default: false
    t.datetime "send_date", precision: nil
    t.boolean "active", default: true
    t.integer "original_id"
    t.datetime "history_date", precision: nil
    t.text "history_info", size: :long
    t.integer "history_user_id"
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.decimal "value_added_tax", precision: 10, scale: 2, comment: "MWST"
    t.string "customer_name", limit: 150
    t.string "contact_first_name", limit: 50
    t.string "contact_last_name", limit: 50
    t.string "street", limit: 50
    t.string "zip_code", limit: 10
    t.string "location", limit: 50
    t.datetime "manual_billing_date", precision: nil
    t.float "version", limit: 53, default: 0.0
    t.text "save_info", size: :long
    t.string "input_type", limit: 50
    t.string "output_type", limit: 50
    t.datetime "input_date", precision: nil
    t.datetime "output_date", precision: nil
    t.boolean "delivery_by_third", default: false
    t.string "technician_name", limit: 50
    t.string "technician_type", limit: 50
    t.datetime "technician_from_date", precision: nil
    t.datetime "technician_to_date", precision: nil
    t.decimal "decimal_technician_duration", precision: 10, scale: 2
    t.integer "technician_distance"
    t.decimal "price_consumables_purchase_net", precision: 16, scale: 4
    t.decimal "price_consumables_sale_net", precision: 16, scale: 4
    t.string "f_type"
    t.string "title", limit: 1000
    t.string "name", limit: 1000
    t.text "description"
    t.integer "creator_id"
    t.integer "del_flag", limit: 1
    t.text "manual_billing_comment", size: :medium
    t.string "manual_billing_mail_attachments"
    t.string "mail_attachments"
    t.string "uuid", limit: 57
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 150
    t.string "history_uuid", limit: 65
    t.string "system_type"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.boolean "billed", default: false, comment: "ist abgerechnet"
    t.integer "biller_id", comment: "Abrechner"
    t.date "first_execution_date", comment: "Erste Ausführung"
    t.date "last_execution_date", comment: "Letzte Ausführung"
    t.text "standing_configuration_description", size: :medium
    t.string "regular_circle", limit: 100
    t.integer "billing_account_id", comment: "Abrechnungskonto"
    t.bigint "billing_item_id", comment: "Abrechnung"
    t.bigint "first_billing_item_id", comment: "1. Vormonatabrechnung"
    t.bigint "second_billing_item_id", comment: "2. Vormonatabrechnung"
    t.boolean "billing_copy_to_processor", default: false, comment: "Rechn. an Bearbeiter"
    t.string "wba_type", limit: 100
    t.integer "customer_group_id", comment: "Kundengruppe"
    t.string "product_name", limit: 100
    t.boolean "standing_configuration_active", default: false, comment: "Dauerauftrag aktiv"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "processor_uuid", limit: 58
    t.string "approver_uuid", limit: 58
    t.string "biller_uuid", limit: 58
    t.string "first_billing_item_uuid", limit: 150
    t.string "second_billing_item_uuid", limit: 150
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "history_user_uuid", limit: 58
    t.string "original_uuid", limit: 57
    t.string "customer_uuid", limit: 62
    t.string "inventory_uuid", limit: 63
    t.string "billing_account_uuid", limit: 69
    t.string "billing_item_uuid", limit: 66
    t.string "customer_group_uuid", limit: 68
    t.date "billing_to_date", comment: "Abrechnungsdatum bis"
    t.date "billing_from_date", comment: "Abrechnungsdatum von"
    t.text "external_comment", size: :medium
    t.text "extra_fields", size: :medium
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.string "customer_title", limit: 150
    t.boolean "customer_e_mail_after_billing", default: false, comment: "Kunden-Info nach Abrechnung"
    t.text "orderer_mail"
    t.string "sales_opportunity_no", limit: 25
    t.string "customer_order_no", limit: 50, comment: "Auftrag"
    t.string "profit_center_no", limit: 100
    t.string "tags", limit: 2000
    t.string "billing_no", comment: "Rechnungsnummer"
    t.index ["approver_id"], name: "fk_rails_eb77d8a8a6"
    t.index ["biller_id"], name: "fk_rails_8ec4db5bfe"
    t.index ["billing_account_id"], name: "fk_rails_e068c2f559"
    t.index ["creator_id"], name: "fk_rails_ae2391c958"
    t.index ["inventory_id"], name: "fk_rails_6f75c80db7"
    t.index ["mandant_id"], name: "fk_rails_9c30a13cf0"
    t.index ["processor_id"], name: "fk_rails_aa32543110"
  end

  create_table "wbas", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.integer "mandant_id"
    t.integer "customer_id"
    t.integer "inventory_id"
    t.string "sap_customer_no"
    t.string "wba_no", comment: "WBA-Nummer/PSP-Element"
    t.datetime "wba_date", precision: nil
    t.string "distribution_channel"
    t.string "cost_location", comment: "Kostenstelle"
    t.string "order_no"
    t.string "vp_no"
    t.string "product_no"
    t.text "comment"
    t.string "state", limit: 50, default: "afoot"
    t.integer "processor_id", comment: "Bearbeiter"
    t.boolean "processed", default: false
    t.datetime "processing_date", precision: nil
    t.integer "approver_id"
    t.boolean "approved", default: false
    t.datetime "approval_date", precision: nil
    t.boolean "sent", default: false
    t.datetime "send_date", precision: nil
    t.boolean "active", default: true
    t.datetime "created_at", precision: nil
    t.datetime "updated_at", precision: nil
    t.decimal "value_added_tax", precision: 10, scale: 2, comment: "MWST"
    t.string "customer_name", limit: 150
    t.string "contact_first_name", limit: 50
    t.string "contact_last_name", limit: 50
    t.string "street", limit: 50
    t.string "zip_code", limit: 10
    t.string "location", limit: 50
    t.datetime "manual_billing_date", precision: nil
    t.float "version", limit: 53, default: 1.0
    t.text "save_info", size: :long
    t.string "input_type", limit: 50
    t.string "output_type", limit: 50
    t.datetime "input_date", precision: nil
    t.datetime "output_date", precision: nil
    t.boolean "delivery_by_third", default: false
    t.string "technician_name", limit: 50
    t.string "technician_type", limit: 50
    t.datetime "technician_from_date", precision: nil
    t.datetime "technician_to_date", precision: nil
    t.decimal "decimal_technician_duration", precision: 10, scale: 2
    t.integer "technician_distance"
    t.decimal "price_consumables_purchase_net", precision: 16, scale: 4
    t.decimal "price_consumables_sale_net", precision: 16, scale: 4
    t.string "f_type"
    t.string "title", limit: 1000
    t.string "name", limit: 1000
    t.text "description"
    t.integer "creator_id"
    t.integer "del_flag", limit: 1, default: 0
    t.text "manual_billing_comment", size: :medium
    t.string "manual_billing_mail_attachments"
    t.string "mail_attachments"
    t.string "uuid", limit: 57
    t.string "reference_uuid", limit: 150
    t.string "parent_uuid", limit: 57
    t.string "system_type"
    t.integer "lock_user_id", comment: "This field contains the user id of the creator of these element."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.float "position", limit: 53
    t.string "reference_model"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need reference_model)"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table"
    t.float "reference_version", limit: 53
    t.float "parent_version", limit: 53
    t.boolean "billed", default: false, comment: "ist abgerechnet"
    t.integer "biller_id", comment: "Abrechner"
    t.date "first_execution_date", comment: "Erste Ausführung"
    t.date "last_execution_date", comment: "Letzte Ausführung"
    t.text "standing_configuration_description", size: :medium
    t.string "regular_circle", limit: 100
    t.integer "billing_account_id", comment: "Abrechnungskonto"
    t.bigint "billing_item_id", comment: "Abrechnung"
    t.bigint "first_billing_item_id", comment: "1. Vormonatabrechnung"
    t.bigint "second_billing_item_id", comment: "2. Vormonatabrechnung"
    t.boolean "billing_copy_to_processor", default: false, comment: "Rechn. an Bearbeiter"
    t.string "wba_type", limit: 100
    t.integer "customer_group_id", comment: "Kundengruppe"
    t.string "product_name", limit: 100
    t.boolean "standing_configuration_active", default: false, comment: "Dauerauftrag aktiv"
    t.string "mandant_uuid", limit: 61
    t.string "updater_uuid", limit: 58
    t.string "processor_uuid", limit: 58
    t.string "approver_uuid", limit: 58
    t.string "biller_uuid", limit: 58
    t.string "first_billing_item_uuid", limit: 150
    t.string "second_billing_item_uuid", limit: 150
    t.string "creator_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.string "customer_uuid", limit: 62
    t.string "inventory_uuid", limit: 63
    t.string "billing_account_uuid", limit: 69
    t.string "billing_item_uuid", limit: 66
    t.string "customer_group_uuid", limit: 68
    t.date "billing_to_date", comment: "Abrechnungsdatum bis"
    t.date "billing_from_date", comment: "Abrechnungsdatum von"
    t.text "external_comment", size: :medium
    t.text "extra_fields", size: :medium
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.text "hierachy_name"
    t.string "customer_title", limit: 150
    t.boolean "customer_e_mail_after_billing", default: false, comment: "Kunden-Info nach Abrechnung"
    t.text "orderer_mail"
    t.string "sales_opportunity_no", limit: 25
    t.string "customer_order_no", limit: 50, comment: "Auftrag"
    t.string "profit_center_no", limit: 100
    t.string "tags", limit: 2000
    t.string "billing_no", comment: "Rechnungsnummer"
    t.index ["approver_id"], name: "fk_rails_45e6c6f7f1"
    t.index ["approver_uuid"], name: "fk_rails_f9f62d8459"
    t.index ["biller_id"], name: "fk_rails_6fba3bc812"
    t.index ["biller_uuid"], name: "fk_rails_c2af780b55"
    t.index ["billing_account_id"], name: "fk_rails_c828af8910"
    t.index ["creator_id"], name: "fk_rails_26be2f4525"
    t.index ["creator_uuid"], name: "fk_rails_95477b22cc"
    t.index ["f_type"], name: "index_wbas_on_f_type", length: 2
    t.index ["inventory_id"], name: "fk_rails_bc45300d54"
    t.index ["inventory_uuid"], name: "fk_rails_3b2176e393"
    t.index ["mandant_id"], name: "fk_rails_09e22f3eea"
    t.index ["parent_id"], name: "fk_rails_fd39e74391"
    t.index ["parent_uuid"], name: "fk_rails_32f296cd3d"
    t.index ["processor_id"], name: "fk_rails_c5b42cc703"
    t.index ["processor_uuid"], name: "fk_rails_47fca9ad6a"
    t.index ["state"], name: "by_state", length: 4
    t.index ["system_type"], name: "index_wbas_on_system_type", length: 2
    t.index ["uuid"], name: "index_wbas_on_uuid", unique: true
  end

  create_table "web_service_item_histories", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 71, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 71, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MPLS-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", size: :long, comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "original_uuid", limit: 71, comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 80, comment: "Contains the Universally Unique Identifier of this history element"
    t.string "history_reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need history_reference_id)"
    t.integer "history_reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (need history_reference_model)"
    t.string "history_reference_uuid", limit: 150, comment: "Generic attribute which can contain a uuid, which this data set is referenced (need history_reference_model)"
    t.index ["creator_id"], name: "fk_rails_21c0bbd572"
    t.index ["creator_uuid"], name: "fk_rails_3066e74b60"
    t.index ["lock_user_id"], name: "fk_rails_068c40e28f"
    t.index ["lock_user_uuid"], name: "fk_rails_b93385f9b9"
    t.index ["mandant_id"], name: "fk_rails_3862340765"
    t.index ["mandant_uuid"], name: "fk_rails_02908bc5ea"
    t.index ["original_id"], name: "index_web_service_item_histories_on_original_id"
    t.index ["updater_id"], name: "fk_rails_06cdfaffec"
    t.index ["updater_uuid"], name: "fk_rails_c73fa945f1"
    t.index ["uuid", "version"], name: "index_web_service_item_histories_on_uuid_and_version"
  end

  create_table "web_service_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "uuid", limit: 71, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.string "mandant_uuid", limit: 61, comment: "reference field which could contain a reference to a mandant (by default the main mandant of the user)"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "extension_item_uuid", limit: 68, comment: "This field contains the user id of the user who has locked this data set."
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 71, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, comment: "This field contains an integer of the data set version of the parent data set"
    t.float "position", limit: 53, comment: "Can be used to sort elements with the same parent_id"
    t.string "reference_model", comment: "Generic attribute which can contain a ruby model class, which this data set is referenced (need reference_id)"
    t.integer "reference_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:1-Relation, need reference_model)"
    t.string "reference_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.float "reference_version", limit: 53, comment: "This field contains an integer of the data set version of the reference data set"
    t.integer "reference_parent_id", comment: "Generic attribute which can contain a id, which this data set is referenced (for 1:n-Relation,need reference_model)"
    t.string "reference_parent_uuid", limit: 150, comment: "Contains the Universally Unique Identifier of the reference element"
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "lock_user_id", comment: "This field contains the user id of the user who has locked this data set."
    t.string "creator_uuid", limit: 58, comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", limit: 58, comment: "This field contains the user id of the user who has changed this data set."
    t.string "lock_user_uuid", limit: 58, comment: "This field contains the user id of the user who has locked this data set."
    t.datetime "locked_at", precision: nil, comment: " datetime when this data set was locked."
    t.text "save_info", size: :long, comment: "This field contains json object change information (reference to the history data set, which fields have change, last value of the field, quick changes."
    t.float "version", limit: 53, comment: "This field contains an integer of the data set version of this data set"
    t.string "system_type", limit: 100, comment: "it will be used to show is this a system relevant element or an individual element"
    t.string "f_type", limit: 100, comment: "Can be used to group this data set"
    t.string "state", limit: 100, comment: "Can be used to give a data set a state"
    t.text "tags", comment: "Can contain some tags for a search/filter"
    t.string "name", limit: 150, comment: "unique/shortcut name of an data set (example MPLS-004M)"
    t.text "hierachy_name", comment: "displayed hierachy name"
    t.string "title", limit: 150, comment: "Title of an data set (example: Multiconnect 4 Megabyte) "
    t.text "description", size: :long, comment: "Data set of an data set (example: This is a Multiconnect 4 Megabyte) "
    t.index ["creator_id"], name: "fk_rails_7b8c9e81e1"
    t.index ["creator_uuid"], name: "fk_rails_46f3dced1d"
    t.index ["lock_user_id"], name: "fk_rails_cee7887715"
    t.index ["lock_user_uuid"], name: "fk_rails_006b095362"
    t.index ["mandant_id"], name: "fk_rails_e73a998ee4"
    t.index ["mandant_uuid"], name: "fk_rails_b175bec0e5"
    t.index ["parent_id"], name: "fk_rails_4b0ec35c7f"
    t.index ["parent_uuid"], name: "fk_rails_2d63fec1d5"
    t.index ["updater_id"], name: "fk_rails_6cc9559403"
    t.index ["updater_uuid"], name: "fk_rails_2e73841084"
    t.index ["uuid"], name: "index_web_service_items_on_uuid", unique: true
  end

  create_table "widget_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 65, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :medium, comment: "Historie-Info"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.integer "original_id", comment: "Original-ID"
    t.string "history_user_uuid", limit: 58, comment: "Historie-Benutzer"
    t.string "original_uuid", limit: 65, comment: "Original-ID"
    t.string "history_uuid", limit: 73, comment: "Historie-UUID"
    t.text "source_code", size: :medium, comment: "source_code"
    t.string "widget_item_layout_uuid", limit: 72, comment: "widget_item_layout_uuid"
    t.string "style", limit: 100, comment: "style"
    t.boolean "automatic_access_check", default: true, comment: "Automatische Zugriffsüberprüfung"
    t.index ["original_id"], name: "index_widget_item_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_widget_item_histories_on_uuid_and_version"
  end

  create_table "widget_item_layout_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 72, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150, comment: "Eltern-UIID"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :medium, comment: "Historie-Info"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.integer "original_id", comment: "Original-ID"
    t.string "history_user_uuid", limit: 58, comment: "Historie-Benutzer"
    t.string "original_uuid", limit: 72, comment: "Original-ID"
    t.string "history_uuid", limit: 80, comment: "Historie-UUID"
    t.text "source_code", size: :medium, comment: "source_code"
    t.index ["original_id"], name: "index_widget_item_layout_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_widget_item_layout_histories_on_uuid_and_version"
  end

  create_table "widget_item_layouts", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 72, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 72, comment: "Eltern-UIID"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "source_code", size: :medium, comment: "source_code"
    t.index ["f_type"], name: "index_widget_item_layouts_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_601647602d"
    t.index ["parent_uuid"], name: "fk_rails_cf99484c10"
    t.index ["system_type"], name: "index_widget_item_layouts_on_system_type", length: 2
    t.index ["uuid"], name: "index_widget_item_layouts_on_uuid", unique: true
  end

  create_table "widget_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 65, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 65, comment: "Eltern-UIID"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 58, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "source_code", size: :medium, comment: "source_code"
    t.string "widget_item_layout_uuid", limit: 72, comment: "widget_item_layout_uuid"
    t.string "style", limit: 100, comment: "style"
    t.boolean "automatic_access_check", default: true, comment: "Automatische Zugriffsüberprüfung"
    t.index ["f_type"], name: "index_widget_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_009cabd1d3"
    t.index ["parent_uuid"], name: "fk_rails_4ad2f694ba"
    t.index ["system_type"], name: "index_widget_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_widget_items_on_uuid", unique: true
  end

  create_table "wiki_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 63
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 150
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100, default: "private"
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.text "hierachy_name"
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "history_info", size: :long
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table", unsigned: true
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.string "original_uuid", limit: 63
    t.string "history_uuid", limit: 71
    t.text "content", size: :medium
    t.string "path", limit: 150
    t.text "attach", size: :medium
    t.text "comment", size: :medium
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
  end

  create_table "wiki_item_join_group_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "wiki_item_id"
    t.integer "group_id"
    t.string "wiki_item_uuid", limit: 63
    t.string "group_uuid", limit: 59
    t.integer "history_wiki_item_id"
    t.integer "history_group_id"
    t.string "history_wiki_item_uuid", limit: 150
    t.string "history_group_uuid", limit: 150
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "history_info", size: :long
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 150
    t.text "hierachy_name"
  end

  create_table "wiki_item_join_groups", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "wiki_item_id"
    t.integer "group_id"
    t.string "wiki_item_uuid", limit: 63
    t.string "group_uuid", limit: 59
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "hierachy_name"
    t.index ["uuid"], name: "index_wiki_item_join_groups_on_uuid", unique: true
  end

  create_table "wiki_item_join_mandant_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "wiki_item_id"
    t.integer "mandant_id"
    t.string "wiki_item_uuid"
    t.string "mandant_uuid"
    t.integer "history_wiki_item_id"
    t.integer "history_mandant_id"
    t.string "history_wiki_item_uuid"
    t.string "history_mandant_uuid"
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.text "history_info", size: :long, comment: "This field contains json object change information (reference to the original data set, which fields contains which have changed, last value of these fields."
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.integer "history_user_uuid", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", comment: "Contains the Universally Unique Identifier of this history element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
  end

  create_table "wiki_item_join_mandants", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "wiki_item_id"
    t.integer "mandant_id"
    t.string "wiki_item_uuid"
    t.string "mandant_uuid"
    t.string "creator_uuid", comment: "This field contains the user id of the creator of these element."
    t.string "updater_uuid", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.boolean "active", default: true, comment: "Is these data set active"
    t.boolean "del_flag", default: false, comment: "Is these data set logical deleted"
    t.string "uuid", comment: "Contains the Universally Unique Identifier of this element"
    t.string "hierachy_name", limit: 2000, comment: "displayed hierachy name"
    t.index ["uuid"], name: "index_wiki_item_join_mandants_on_uuid", unique: true
  end

  create_table "wiki_item_join_role_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "wiki_item_id"
    t.integer "role_id"
    t.string "wiki_item_uuid", limit: 63
    t.string "role_uuid", limit: 58
    t.integer "history_wiki_item_id"
    t.integer "history_role_id"
    t.string "history_wiki_item_uuid", limit: 150
    t.string "history_role_uuid", limit: 150
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "history_info", size: :long
    t.integer "history_user_id", comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_id", comment: "id of the data set in the original table"
    t.string "history_user_uuid", limit: 58, comment: "user id who saved this data set (changed the origingal)."
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 150
    t.text "hierachy_name"
  end

  create_table "wiki_item_join_roles", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "wiki_item_id"
    t.integer "role_id"
    t.string "wiki_item_uuid", limit: 63
    t.string "role_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "hierachy_name"
    t.index ["uuid"], name: "index_wiki_item_join_roles_on_uuid", unique: true
  end

  create_table "wiki_item_join_user_histories", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "wiki_item_id"
    t.integer "user_id"
    t.string "wiki_item_uuid", limit: 63
    t.string "user_uuid", limit: 58
    t.integer "history_wiki_item_id"
    t.integer "history_user_id"
    t.string "history_wiki_item_uuid", limit: 150
    t.string "history_user_uuid", limit: 58
    t.datetime "history_date", precision: nil, comment: "History datetime when this data set was saved."
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "history_info", size: :long
    t.integer "original_id", comment: "id of the data set in the original table"
    t.integer "original_uuid", comment: "id of the data set in the original table"
    t.string "history_uuid", limit: 150
    t.text "hierachy_name"
  end

  create_table "wiki_item_join_users", id: :integer, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "wiki_item_id"
    t.integer "user_id"
    t.string "wiki_item_uuid", limit: 63
    t.string "user_uuid", limit: 58
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.integer "creator_id", comment: "This field contains the user id of the creator of these element."
    t.integer "updater_id", comment: "This field contains the user id of the user who has changed this data set."
    t.integer "mandant_id"
    t.string "mandant_uuid", limit: 61
    t.string "uuid", limit: 150
    t.text "hierachy_name"
    t.index ["uuid"], name: "index_wiki_item_join_users_on_uuid", unique: true
  end

  create_table "wiki_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 63, comment: "Contains the Universally Unique Identifier of this element"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 63, comment: "Contains the Universally Unique Identifier of the parent element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58
    t.string "updater_uuid", limit: 58
    t.string "lock_user_uuid", limit: 58
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100
    t.string "f_type", limit: 100
    t.string "state", limit: 100, default: "private"
    t.text "tags", size: :medium
    t.string "name", limit: 150
    t.text "hierachy_name"
    t.string "title", limit: 150
    t.text "description", size: :medium
    t.text "content", size: :medium
    t.string "path", limit: 150
    t.text "attach", size: :medium
    t.text "comment", size: :medium
    t.string "extension_item_uuid", limit: 68, comment: "Erweiterung"
    t.integer "extension_item_id", comment: "This field contains the user id of the user who has locked this data set."
    t.index ["f_type"], name: "index_wiki_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_2b0fa1a36e"
    t.index ["parent_uuid"], name: "fk_rails_31ebad3fe3"
    t.index ["system_type"], name: "index_wiki_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_wiki_items_on_uuid", unique: true
  end

  create_table "workflow_item_histories", id: { type: :integer, comment: "ID" }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", options: "ENGINE=InnoDB ROW_FORMAT=COMPRESSED", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 74, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Eltern-Element"
    t.string "parent_uuid", limit: 74, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.text "history_info", size: :medium, comment: "Historie-Info"
    t.datetime "history_date", precision: nil, comment: "Historie erstellt am"
    t.integer "history_user_id", comment: "Historie-Benutzer"
    t.string "history_user_uuid", limit: 58, comment: "Historie-Benutzer"
    t.integer "original_id", comment: "Original-ID"
    t.string "original_uuid", limit: 67, comment: "Original-ID"
    t.string "history_uuid", limit: 150, comment: "Historie-UUID"
    t.string "workflow_condition", limit: 100, comment: "Bedingung"
    t.string "condition_type", limit: 100, comment: "Bedingungstyp"
    t.text "condition_value", size: :medium, comment: "Bedingungswert"
    t.text "action_source_code", size: :medium, comment: "action_source_code"
    t.integer "attribute_item_id", comment: "Tabellenattribut"
    t.text "attribute_item_uuid", size: :medium, comment: "Tabellenattribut"
    t.string "condition_rule_type", limit: 100, comment: "Bedingungstyp"
    t.index ["original_id"], name: "index_workflow_item_histories_on_original_id"
    t.index ["uuid", "version"], name: "index_workflow_item_histories_on_uuid_and_version"
  end

  create_table "workflow_items", id: { type: :integer, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.datetime "created_at", precision: nil, comment: "Erstellt am"
    t.datetime "updated_at", precision: nil, comment: "Geändert am"
    t.string "uuid", limit: 67, comment: "UUID"
    t.integer "mandant_id", comment: "Mandant"
    t.string "mandant_uuid", limit: 61, comment: "Mandant"
    t.integer "extension_item_id", comment: "Erweiterung"
    t.string "extension_item_uuid", limit: 67, comment: "Erweiterung"
    t.integer "parent_id", comment: "Can be used to reference to an parent element of the same table", unsigned: true
    t.string "parent_uuid", limit: 67, comment: "Eltern-Element"
    t.float "parent_version", limit: 53, default: 0.0, comment: "Eltern-Version"
    t.float "position", limit: 53, comment: "Position"
    t.text "reference_model", size: :medium, comment: "Model-Klasse"
    t.integer "reference_id", comment: "Referenz-ID"
    t.string "reference_uuid", limit: 150, comment: "Referenz-UUID"
    t.integer "reference_version", default: 0, comment: "Referenz-Version"
    t.boolean "active", default: true, comment: "Aktiv"
    t.boolean "del_flag", default: false, comment: "gelöscht"
    t.integer "creator_id", comment: "Ersteller"
    t.integer "updater_id", comment: "Letzter Bearbeiter"
    t.integer "lock_user_id", comment: "Gesperrt von"
    t.string "creator_uuid", limit: 58, comment: "Ersteller"
    t.string "updater_uuid", limit: 58, comment: "Letzter Bearbeiter"
    t.string "lock_user_uuid", limit: 150, comment: "Gesperrt von"
    t.datetime "locked_at", precision: nil, comment: "Gesperrt am"
    t.text "save_info", size: :medium, comment: "Original-Info"
    t.float "version", limit: 53, default: 0.0, comment: "Version"
    t.string "system_type", limit: 100, comment: "Systemtyp"
    t.string "f_type", limit: 100, comment: "Elementtyp"
    t.string "state", limit: 100, comment: "Status"
    t.text "tags", size: :medium, comment: "Marker"
    t.string "name", limit: 150, comment: "Name"
    t.string "hierachy_name", limit: 2000, comment: "Hierachie-Name"
    t.string "title", limit: 150, comment: "Titel"
    t.text "description", size: :medium, comment: "Beschreibung"
    t.string "workflow_condition", limit: 100, comment: "Bedingung"
    t.string "condition_type", limit: 100, comment: "Bedingungstyp"
    t.text "condition_value", size: :medium, comment: "Bedingungswert"
    t.text "action_source_code", size: :medium, comment: "action_source_code"
    t.integer "attribute_item_id", comment: "Tabellenattribut"
    t.string "attribute_item_uuid", limit: 68, comment: "Tabellenattribut"
    t.string "condition_rule_type", limit: 100, comment: "Bedingungstyp"
    t.index ["f_type"], name: "index_workflow_items_on_f_type", length: 2
    t.index ["parent_id"], name: "fk_rails_5f2fb728fe"
    t.index ["parent_uuid"], name: "fk_rails_6e64029cb0"
    t.index ["system_type"], name: "index_workflow_items_on_system_type", length: 2
    t.index ["uuid"], name: "index_workflow_items_on_uuid", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "attribute_item_histories", "mandants"
  add_foreign_key "attribute_items", "attribute_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "attribute_items", "mandants"
  add_foreign_key "billing_account_histories", "mandants"
  add_foreign_key "billing_account_histories", "users", column: "creator_id"
  add_foreign_key "billing_accounts", "billing_accounts", column: "parent_id"
  add_foreign_key "billing_accounts", "billing_accounts", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "billing_accounts", "mandants"
  add_foreign_key "billing_accounts", "users", column: "creator_id"
  add_foreign_key "billing_item_archives", "billing_item_archives", column: "parent_id", name: "fk_rails_bi_archive_parent_id", on_delete: :cascade
  add_foreign_key "billing_item_archives", "billing_item_archives", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "billing_item_histories", "billing_accounts"
  add_foreign_key "billing_item_histories", "mandants"
  add_foreign_key "billing_item_histories", "products"
  add_foreign_key "billing_item_histories", "users", column: "creator_id"
  add_foreign_key "billing_items", "billing_items", column: "main_billing_item_id"
  add_foreign_key "billing_items", "billing_items", column: "main_billing_item_uuid", primary_key: "uuid"
  add_foreign_key "billing_items", "billing_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "billing_items", "billing_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "billing_items", "mandants"
  add_foreign_key "billing_items", "products"
  add_foreign_key "bpm_items", "bpm_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "bpm_items", "bpm_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "business_profile_histories", "business_profiles", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "business_profiles", "business_profiles", column: "parent_id", on_delete: :cascade
  add_foreign_key "business_profiles", "business_profiles", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "chatrooms", "chatrooms", column: "parent_id"
  add_foreign_key "chatrooms", "chatrooms", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "chatrooms", "mandants"
  add_foreign_key "chatrooms", "users"
  add_foreign_key "chatrooms", "users", column: "creator_id"
  add_foreign_key "comment_item_histories", "mandants"
  add_foreign_key "comment_item_histories", "users", column: "creator_id"
  add_foreign_key "comment_items", "comment_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "comment_items", "comment_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "comment_items", "mandants"
  add_foreign_key "comment_items", "users", column: "creator_id"
  add_foreign_key "customer_group_histories", "mandants"
  add_foreign_key "customer_group_histories", "users", column: "creator_id"
  add_foreign_key "customer_groups", "customer_groups", column: "parent_id"
  add_foreign_key "customer_groups", "customer_groups", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "customer_groups", "mandants"
  add_foreign_key "customer_groups", "users", column: "creator_id"
  add_foreign_key "customer_histories", "billing_accounts"
  add_foreign_key "customer_histories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "customer_histories", "users", column: "creator_id"
  add_foreign_key "customer_histories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "customers", "billing_accounts"
  add_foreign_key "customers", "customers", column: "parent_id"
  add_foreign_key "customers", "customers", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "customers", "mandants"
  add_foreign_key "customers", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "customers", "users", column: "creator_id"
  add_foreign_key "customers", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "data_item_histories", "mandants"
  add_foreign_key "data_item_histories", "users", column: "creator_id"
  add_foreign_key "data_items", "data_items", column: "parent_id"
  add_foreign_key "data_items", "data_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "data_items", "mandants"
  add_foreign_key "dynamic_inter_company_service_vlans", "dynamic_inter_company_service_vlans", column: "parent_id", on_delete: :cascade
  add_foreign_key "dynamic_inter_company_service_vlans", "dynamic_inter_company_service_vlans", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "dynamic_items", "dynamic_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "dynamic_items", "dynamic_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "dynamic_items", "products", column: "di_product_uuid", primary_key: "uuid"
  add_foreign_key "dynamic_location_items", "dynamic_location_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "dynamic_location_items", "dynamic_location_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "dynamic_tc_system_items", "dynamic_tc_system_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "dynamic_tc_system_items", "dynamic_tc_system_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "e_mail_histories", "mandants"
  add_foreign_key "e_mail_histories", "users", column: "creator_id"
  add_foreign_key "e_mail_join_attach_page_items", "e_mails"
  add_foreign_key "e_mail_join_attach_page_items", "e_mails", column: "e_mail_uuid", primary_key: "uuid"
  add_foreign_key "e_mail_join_attach_page_items", "mandants"
  add_foreign_key "e_mail_join_groups", "e_mails"
  add_foreign_key "e_mail_join_groups", "e_mails", column: "e_mail_uuid", primary_key: "uuid"
  add_foreign_key "e_mail_join_groups", "groups"
  add_foreign_key "e_mail_join_groups", "mandants"
  add_foreign_key "e_mail_join_roles", "e_mails"
  add_foreign_key "e_mail_join_roles", "e_mails", column: "e_mail_uuid", primary_key: "uuid"
  add_foreign_key "e_mail_join_roles", "mandants"
  add_foreign_key "e_mail_join_roles", "roles"
  add_foreign_key "e_mail_join_roles", "roles", column: "role_uuid", primary_key: "uuid"
  add_foreign_key "e_mails", "e_mails", column: "parent_id"
  add_foreign_key "e_mails", "e_mails", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "event_item_histories", "mandants"
  add_foreign_key "event_item_histories", "users", column: "creator_id"
  add_foreign_key "event_items", "event_items", column: "parent_id"
  add_foreign_key "event_items", "event_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "event_items", "mandants"
  add_foreign_key "event_items", "users", column: "creator_id"
  add_foreign_key "event_logs", "event_logs", column: "parent_id", on_delete: :cascade
  add_foreign_key "event_logs", "event_logs", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "extension_items", "extension_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "extension_items", "extension_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "gantt_charts", "gantt_charts", column: "parent_id", on_delete: :cascade
  add_foreign_key "gantt_charts", "gantt_charts", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "group_histories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "group_histories", "users", column: "creator_id"
  add_foreign_key "group_histories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "group_join_project_items", "groups"
  add_foreign_key "group_join_project_items", "groups", column: "group_uuid", primary_key: "uuid"
  add_foreign_key "group_join_project_items", "mandants"
  add_foreign_key "group_join_project_items", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "group_join_project_items", "project_items"
  add_foreign_key "group_join_project_items", "project_items", column: "project_item_uuid", primary_key: "uuid"
  add_foreign_key "group_join_todo_items", "groups"
  add_foreign_key "group_join_todo_items", "mandants"
  add_foreign_key "group_join_todo_items", "todo_items"
  add_foreign_key "group_join_todo_items", "todo_items", column: "todo_item_uuid", primary_key: "uuid"
  add_foreign_key "groups", "groups", column: "parent_id"
  add_foreign_key "groups", "groups", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "groups", "mandants"
  add_foreign_key "groups", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "groups", "users", column: "creator_id"
  add_foreign_key "groups", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "inventories", "customers", column: "customer_uuid", primary_key: "uuid"
  add_foreign_key "inventories", "inventories", column: "inventory_uuid", primary_key: "uuid"
  add_foreign_key "inventories", "inventories", column: "parent_id"
  add_foreign_key "inventories", "inventories", column: "parent_id", name: "inventories_ibfk_1"
  add_foreign_key "inventories", "inventories", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "inventories", "mandants"
  add_foreign_key "inventories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "inventories", "products"
  add_foreign_key "inventories", "products", column: "product_uuid", primary_key: "uuid"
  add_foreign_key "inventories", "users", column: "creator_id"
  add_foreign_key "inventories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "inventories", "users", column: "updater_id"
  add_foreign_key "inventories", "users", column: "updater_uuid", primary_key: "uuid"
  add_foreign_key "inventory_histories", "mandants"
  add_foreign_key "inventory_histories", "products"
  add_foreign_key "inventory_hotspot_histories", "inventories"
  add_foreign_key "inventory_hotspot_histories", "users", column: "creator_id"
  add_foreign_key "inventory_hotspots", "inventories"
  add_foreign_key "inventory_hotspots", "inventory_hotspots", column: "parent_id"
  add_foreign_key "inventory_hotspots", "inventory_hotspots", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "inventory_hotspots", "mandants"
  add_foreign_key "inventory_hotspots", "users", column: "creator_id"
  add_foreign_key "inventory_join_sis_group_histories", "mandants"
  add_foreign_key "inventory_join_sis_group_histories", "sis_groups", column: "sis_group_uuid", primary_key: "uuid"
  add_foreign_key "inventory_join_sis_groups", "mandants"
  add_foreign_key "inventory_join_sis_groups", "sis_groups"
  add_foreign_key "inventory_join_sis_groups", "sis_groups", column: "sis_group_uuid", primary_key: "uuid"
  add_foreign_key "inventory_location_histories", "users", column: "creator_id"
  add_foreign_key "inventory_locations", "inventory_locations", column: "parent_id"
  add_foreign_key "inventory_locations", "inventory_locations", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "inventory_locations", "users", column: "creator_id"
  add_foreign_key "inventory_service_histories", "mandants"
  add_foreign_key "inventory_services", "mandants"
  add_foreign_key "inventory_services", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "invoice_number_ranges", "invoice_number_ranges", column: "parent_id", on_delete: :cascade
  add_foreign_key "invoice_number_ranges", "invoice_number_ranges", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "invoice_transfer_articles", "invoice_transfer_articles", column: "parent_id", on_delete: :cascade
  add_foreign_key "invoice_transfer_articles", "invoice_transfer_articles", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "invoice_transfers", "invoice_transfers", column: "parent_id", on_delete: :cascade
  add_foreign_key "invoice_transfers", "invoice_transfers", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "letters", "letter_creators"
  add_foreign_key "link_item_join_groups", "groups"
  add_foreign_key "link_item_join_groups", "link_items", column: "link_item_uuid", primary_key: "uuid"
  add_foreign_key "link_item_join_groups", "mandants"
  add_foreign_key "link_item_join_mandants", "link_items", column: "link_item_uuid", primary_key: "uuid"
  add_foreign_key "link_item_join_mandants", "mandants"
  add_foreign_key "link_item_join_roles", "link_items", column: "link_item_uuid", primary_key: "uuid"
  add_foreign_key "link_item_join_roles", "mandants"
  add_foreign_key "link_item_join_roles", "roles"
  add_foreign_key "link_item_join_roles", "roles", column: "role_uuid", primary_key: "uuid"
  add_foreign_key "link_item_join_users", "link_items", column: "link_item_uuid", primary_key: "uuid"
  add_foreign_key "link_item_join_users", "mandants"
  add_foreign_key "link_item_join_users", "users"
  add_foreign_key "link_items", "link_items", column: "parent_id"
  add_foreign_key "link_items", "link_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "lookup_group_histories", "mandants"
  add_foreign_key "lookup_group_histories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "lookup_group_histories", "users", column: "creator_id"
  add_foreign_key "lookup_group_histories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "lookup_groups", "lookup_groups", column: "parent_id", on_delete: :cascade
  add_foreign_key "lookup_groups", "lookup_groups", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "lookup_groups", "mandants"
  add_foreign_key "lookup_groups", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "lookup_groups", "users", column: "creator_id"
  add_foreign_key "lookup_groups", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "lookups", "lookup_groups", column: "lookup_group_uuid", primary_key: "uuid"
  add_foreign_key "lookups", "lookup_groups", on_delete: :cascade
  add_foreign_key "lookups", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "mandant_histories", "mandants"
  add_foreign_key "mandant_histories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "mandant_histories", "users", column: "creator_id"
  add_foreign_key "mandant_histories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "mandants", "mandants", column: "parent_id"
  add_foreign_key "mandants", "mandants", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "mandants", "users", column: "creator_id"
  add_foreign_key "mandants", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "message_histories", "chatrooms"
  add_foreign_key "message_histories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "message_histories", "users"
  add_foreign_key "message_histories", "users", column: "creator_id"
  add_foreign_key "message_histories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "chatrooms", column: "chatroom_uuid", primary_key: "uuid"
  add_foreign_key "messages", "mandants"
  add_foreign_key "messages", "messages", column: "parent_id"
  add_foreign_key "messages", "messages", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "messages", "users"
  add_foreign_key "messages", "users", column: "creator_id"
  add_foreign_key "notification_histories", "mandants"
  add_foreign_key "notification_histories", "users", column: "creator_id"
  add_foreign_key "notifications", "mandants"
  add_foreign_key "notifications", "notifications", column: "parent_id"
  add_foreign_key "notifications", "notifications", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "notifications", "users", column: "creator_id"
  add_foreign_key "order_histories", "mandants"
  add_foreign_key "order_histories", "orders", column: "parent_id"
  add_foreign_key "order_histories", "orders", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "order_histories", "products"
  add_foreign_key "order_histories", "products", column: "product_uuid", primary_key: "uuid"
  add_foreign_key "order_product_histories", "mandants"
  add_foreign_key "order_products", "mandants"
  add_foreign_key "order_products", "order_products", column: "parent_id"
  add_foreign_key "order_products", "order_products", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "ordering_item_histories", "mandants"
  add_foreign_key "ordering_item_histories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "ordering_item_histories", "ordering_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "ordering_item_histories", "products"
  add_foreign_key "ordering_item_histories", "products", column: "product_uuid", primary_key: "uuid"
  add_foreign_key "ordering_item_histories", "users", column: "creator_id"
  add_foreign_key "ordering_item_histories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "ordering_item_histories", "users", column: "lock_user_id"
  add_foreign_key "ordering_item_histories", "users", column: "lock_user_uuid", primary_key: "uuid"
  add_foreign_key "ordering_item_histories", "users", column: "updater_id"
  add_foreign_key "ordering_item_histories", "users", column: "updater_uuid", primary_key: "uuid"
  add_foreign_key "ordering_items", "mandants"
  add_foreign_key "ordering_items", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "ordering_items", "ordering_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "ordering_items", "ordering_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "ordering_items", "products"
  add_foreign_key "ordering_items", "products", column: "product_uuid", primary_key: "uuid"
  add_foreign_key "ordering_items", "users", column: "creator_id"
  add_foreign_key "ordering_items", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "ordering_items", "users", column: "lock_user_id"
  add_foreign_key "ordering_items", "users", column: "lock_user_uuid", primary_key: "uuid"
  add_foreign_key "ordering_items", "users", column: "updater_id"
  add_foreign_key "ordering_items", "users", column: "updater_uuid", primary_key: "uuid"
  add_foreign_key "orders", "mandants"
  add_foreign_key "orders", "orders", column: "parent_id"
  add_foreign_key "orders", "orders", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "products", column: "product_uuid", primary_key: "uuid"
  add_foreign_key "page_item_histories", "mandants"
  add_foreign_key "page_items", "mandants"
  add_foreign_key "page_items", "page_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "page_items", "page_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "price_list_item_histories", "mandants"
  add_foreign_key "price_list_item_histories", "users", column: "creator_id"
  add_foreign_key "price_list_items", "mandants"
  add_foreign_key "price_list_items", "price_list_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "price_list_items", "price_list_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "price_list_items", "users", column: "creator_id"
  add_foreign_key "product_histories", "mandants"
  add_foreign_key "product_histories", "users", column: "creator_id"
  add_foreign_key "products", "mandants"
  add_foreign_key "products", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "products", "products", column: "parent_id"
  add_foreign_key "products", "products", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "products", "users", column: "creator_id"
  add_foreign_key "products", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "project_item_histories", "mandants"
  add_foreign_key "project_item_histories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "project_item_histories", "users", column: "creator_id"
  add_foreign_key "project_item_histories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "project_items", "mandants"
  add_foreign_key "project_items", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "project_items", "project_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "project_items", "project_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "project_items", "users", column: "creator_id"
  add_foreign_key "project_items", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "quick_saves", "mandants"
  add_foreign_key "reporting_items", "reporting_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "reporting_items", "reporting_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "research_item_histories", "mandants"
  add_foreign_key "research_item_histories", "users", column: "creator_id"
  add_foreign_key "research_items", "mandants"
  add_foreign_key "research_items", "research_items", column: "parent_id"
  add_foreign_key "research_items", "research_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "research_items", "users", column: "creator_id"
  add_foreign_key "role_histories", "mandants"
  add_foreign_key "role_histories", "users", column: "creator_id"
  add_foreign_key "roles", "mandants"
  add_foreign_key "roles", "roles", column: "parent_id"
  add_foreign_key "roles", "roles", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "roles", "users", column: "creator_id"
  add_foreign_key "sbm_item_histories", "mandants"
  add_foreign_key "sbm_item_histories", "users", column: "creator_id"
  add_foreign_key "sbm_items", "mandants"
  add_foreign_key "sbm_items", "sbm_items", column: "parent_id"
  add_foreign_key "sbm_items", "sbm_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "sbm_items", "users", column: "creator_id"
  add_foreign_key "serial_e_mail_histories", "mandants"
  add_foreign_key "serial_e_mail_histories", "template_items"
  add_foreign_key "serial_e_mail_histories", "template_items", column: "template_item_uuid", primary_key: "uuid"
  add_foreign_key "serial_e_mail_histories", "users", column: "creator_id"
  add_foreign_key "serial_e_mail_join_groups", "groups"
  add_foreign_key "serial_e_mail_join_groups", "mandants"
  add_foreign_key "serial_e_mail_join_groups", "serial_e_mails"
  add_foreign_key "serial_e_mail_join_groups", "serial_e_mails", column: "serial_e_mail_uuid", primary_key: "uuid"
  add_foreign_key "serial_e_mail_join_mandants", "mandants"
  add_foreign_key "serial_e_mail_join_mandants", "serial_e_mails"
  add_foreign_key "serial_e_mail_join_mandants", "serial_e_mails", column: "serial_e_mail_uuid", primary_key: "uuid"
  add_foreign_key "serial_e_mail_join_roles", "mandants"
  add_foreign_key "serial_e_mail_join_roles", "roles"
  add_foreign_key "serial_e_mail_join_roles", "roles", column: "role_uuid", primary_key: "uuid"
  add_foreign_key "serial_e_mail_join_roles", "serial_e_mails"
  add_foreign_key "serial_e_mail_join_roles", "serial_e_mails", column: "serial_e_mail_uuid", primary_key: "uuid"
  add_foreign_key "serial_e_mail_join_users", "mandants"
  add_foreign_key "serial_e_mail_join_users", "serial_e_mails"
  add_foreign_key "serial_e_mail_join_users", "serial_e_mails", column: "serial_e_mail_uuid", primary_key: "uuid"
  add_foreign_key "serial_e_mail_join_users", "users"
  add_foreign_key "serial_e_mails", "mandants"
  add_foreign_key "serial_e_mails", "serial_e_mails", column: "parent_id", on_delete: :cascade
  add_foreign_key "serial_e_mails", "serial_e_mails", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "serial_e_mails", "template_items"
  add_foreign_key "serial_e_mails", "template_items", column: "template_item_uuid", primary_key: "uuid"
  add_foreign_key "serial_e_mails", "users", column: "creator_id"
  add_foreign_key "sis_group_histories", "mandants"
  add_foreign_key "sis_group_histories", "users", column: "creator_id"
  add_foreign_key "sis_groups", "mandants"
  add_foreign_key "sis_groups", "sis_groups", column: "parent_id", on_delete: :cascade
  add_foreign_key "sis_groups", "sis_groups", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "sis_groups", "users", column: "creator_id"
  add_foreign_key "sla_item_histories", "mandants"
  add_foreign_key "sla_item_histories", "users", column: "creator_id"
  add_foreign_key "sla_items", "mandants"
  add_foreign_key "sla_items", "sla_items", column: "parent_id"
  add_foreign_key "sla_items", "sla_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "sla_items", "users", column: "creator_id"
  add_foreign_key "statistics", "statistics", column: "parent_id", on_delete: :cascade
  add_foreign_key "statistics", "statistics", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "survey_items", "survey_items", column: "parent_id"
  add_foreign_key "template_item_histories", "users", column: "creator_id"
  add_foreign_key "template_item_join_attach_page_items", "mandants"
  add_foreign_key "template_item_join_attach_page_items", "template_items"
  add_foreign_key "template_item_join_attach_page_items", "template_items", column: "template_item_uuid", primary_key: "uuid"
  add_foreign_key "template_item_join_groups", "groups"
  add_foreign_key "template_item_join_groups", "mandants"
  add_foreign_key "template_item_join_groups", "template_items"
  add_foreign_key "template_item_join_groups", "template_items", column: "template_item_uuid", primary_key: "uuid"
  add_foreign_key "template_item_join_roles", "mandants"
  add_foreign_key "template_item_join_roles", "roles"
  add_foreign_key "template_item_join_roles", "roles", column: "role_uuid", primary_key: "uuid"
  add_foreign_key "template_item_join_roles", "template_items"
  add_foreign_key "template_item_join_roles", "template_items", column: "template_item_uuid", primary_key: "uuid"
  add_foreign_key "template_items", "mandants"
  add_foreign_key "template_items", "template_items", column: "parent_id"
  add_foreign_key "template_items", "template_items", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "template_items", "users", column: "creator_id"
  add_foreign_key "todo_item_histories", "users", column: "creator_id"
  add_foreign_key "todo_items", "todo_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "todo_items", "todo_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "todo_items", "users", column: "creator_id"
  add_foreign_key "user_histories", "users", column: "creator_id"
  add_foreign_key "user_join_chatrooms", "chatrooms"
  add_foreign_key "user_join_chatrooms", "mandants"
  add_foreign_key "user_join_chatrooms", "users"
  add_foreign_key "user_join_groups", "groups"
  add_foreign_key "user_join_groups", "mandants"
  add_foreign_key "user_join_groups", "users"
  add_foreign_key "user_join_mandants", "mandants"
  add_foreign_key "user_join_mandants", "users"
  add_foreign_key "user_join_messages", "chatrooms"
  add_foreign_key "user_join_messages", "mandants"
  add_foreign_key "user_join_messages", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "user_join_messages", "messages"
  add_foreign_key "user_join_messages", "users"
  add_foreign_key "user_join_messages", "users", column: "user_uuid", primary_key: "uuid"
  add_foreign_key "user_join_project_items", "mandants"
  add_foreign_key "user_join_project_items", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "user_join_project_items", "project_items"
  add_foreign_key "user_join_project_items", "project_items", column: "project_item_uuid", primary_key: "uuid"
  add_foreign_key "user_join_project_items", "users"
  add_foreign_key "user_join_project_items", "users", column: "user_uuid", primary_key: "uuid"
  add_foreign_key "user_join_roles", "mandants"
  add_foreign_key "user_join_roles", "roles"
  add_foreign_key "user_join_roles", "roles", column: "role_uuid", primary_key: "uuid"
  add_foreign_key "user_join_roles", "users"
  add_foreign_key "user_join_todo_items", "mandants"
  add_foreign_key "user_join_todo_items", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "user_join_todo_items", "todo_items"
  add_foreign_key "user_join_todo_items", "users"
  add_foreign_key "user_join_todo_items", "users", column: "user_uuid", primary_key: "uuid"
  add_foreign_key "user_search_fields", "mandants"
  add_foreign_key "user_search_fields", "users"
  add_foreign_key "users", "mandants"
  add_foreign_key "users", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "users", "users", column: "creator_id"
  add_foreign_key "users", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "users", "users", column: "parent_id"
  add_foreign_key "users", "users", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "version_items", "version_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "version_items", "version_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "wba_article_histories", "mandants"
  add_foreign_key "wba_article_histories", "users", column: "creator_id"
  add_foreign_key "wba_article_histories", "wbas"
  add_foreign_key "wba_article_histories", "wbas", column: "wba_uuid", primary_key: "uuid"
  add_foreign_key "wba_articles", "mandants"
  add_foreign_key "wba_articles", "users", column: "creator_id"
  add_foreign_key "wba_articles", "wba_articles", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "wba_articles", "wbas"
  add_foreign_key "wba_articles", "wbas", column: "wba_uuid", primary_key: "uuid"
  add_foreign_key "wba_histories", "billing_accounts"
  add_foreign_key "wba_histories", "inventories"
  add_foreign_key "wba_histories", "mandants"
  add_foreign_key "wba_histories", "users", column: "approver_id"
  add_foreign_key "wba_histories", "users", column: "biller_id"
  add_foreign_key "wba_histories", "users", column: "creator_id"
  add_foreign_key "wba_histories", "users", column: "processor_id"
  add_foreign_key "wbas", "billing_accounts"
  add_foreign_key "wbas", "inventories"
  add_foreign_key "wbas", "inventories", column: "inventory_uuid", primary_key: "uuid"
  add_foreign_key "wbas", "mandants"
  add_foreign_key "wbas", "users", column: "approver_id"
  add_foreign_key "wbas", "users", column: "approver_uuid", primary_key: "uuid"
  add_foreign_key "wbas", "users", column: "biller_id"
  add_foreign_key "wbas", "users", column: "biller_uuid", primary_key: "uuid"
  add_foreign_key "wbas", "users", column: "creator_id"
  add_foreign_key "wbas", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "wbas", "users", column: "processor_id"
  add_foreign_key "wbas", "users", column: "processor_uuid", primary_key: "uuid"
  add_foreign_key "wbas", "wbas", column: "parent_id"
  add_foreign_key "wbas", "wbas", column: "parent_uuid", primary_key: "uuid"
  add_foreign_key "web_service_item_histories", "mandants"
  add_foreign_key "web_service_item_histories", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "web_service_item_histories", "users", column: "creator_id"
  add_foreign_key "web_service_item_histories", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "web_service_item_histories", "users", column: "lock_user_id"
  add_foreign_key "web_service_item_histories", "users", column: "lock_user_uuid", primary_key: "uuid"
  add_foreign_key "web_service_item_histories", "users", column: "updater_id"
  add_foreign_key "web_service_item_histories", "users", column: "updater_uuid", primary_key: "uuid"
  add_foreign_key "web_service_items", "mandants"
  add_foreign_key "web_service_items", "mandants", column: "mandant_uuid", primary_key: "uuid"
  add_foreign_key "web_service_items", "users", column: "creator_id"
  add_foreign_key "web_service_items", "users", column: "creator_uuid", primary_key: "uuid"
  add_foreign_key "web_service_items", "users", column: "lock_user_id"
  add_foreign_key "web_service_items", "users", column: "lock_user_uuid", primary_key: "uuid"
  add_foreign_key "web_service_items", "users", column: "updater_id"
  add_foreign_key "web_service_items", "users", column: "updater_uuid", primary_key: "uuid"
  add_foreign_key "web_service_items", "web_service_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "web_service_items", "web_service_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "widget_item_layouts", "widget_item_layouts", column: "parent_id", on_delete: :cascade
  add_foreign_key "widget_item_layouts", "widget_item_layouts", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "widget_items", "widget_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "widget_items", "widget_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "wiki_items", "wiki_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "wiki_items", "wiki_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
  add_foreign_key "workflow_items", "workflow_items", column: "parent_id", on_delete: :cascade
  add_foreign_key "workflow_items", "workflow_items", column: "parent_uuid", primary_key: "uuid", on_delete: :cascade
end
