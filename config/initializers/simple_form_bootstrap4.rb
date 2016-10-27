# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|
  config.error_notification_class = 'alert alert-danger'
  config.button_class = 'btn'
  config.boolean_label_class = nil

  config.wrappers :vertical_form, tag: 'div', class: 'form-group', error_class: 'has-danger' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'form-control-label'

    b.use :input, class: 'form-control'
    b.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' }
    b.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' } # Don't use .form-control-feedback here, since this will apply the error color which we dont want for the hint
  end

  config.wrappers :vertical_file_input, tag: 'div', class: 'form-group', error_class: 'has-danger' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :readonly
    b.use :label, class: 'form-control-label'

    b.use :input
    b.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' }
    b.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
  end

  config.wrappers :vertical_boolean, tag: 'div', class: 'form-group', error_class: 'has-danger' do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: 'div', class: 'checkbox' do |ba|
      ba.use :label_input
    end

    b.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' }
    b.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
  end

  config.wrappers :vertical_radio_and_checkboxes, tag: 'div', class: 'form-group', error_class: 'has-danger' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'form-control-label formtitle'
    b.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' }
    b.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
    b.wrapper tag: 'div', class: 'row' do |c|
      c.use :input
    end
  end

  config.wrappers :horizontal_form, tag: 'div', class: 'form-group row', error_class: 'has-danger' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'col-sm-3 form-control-label'

    b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
      ba.use :input, class: 'form-control'
      ba.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' },
        class: 'form-control-danger'
      ba.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
    end
  end

  config.wrappers :horizontal_file_input, tag: 'div', class: 'form-group row', error_class: 'has-danger' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :readonly
    b.use :label, class: 'col-sm-3 form-control-label'

    b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' },
        class: 'form-control-danger'
      ba.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
    end
  end

  config.wrappers :regular_boolean, tag: 'div', class: 'form-group row', error_class: 'has-danger' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :readonly
    b.use :label, class: 'col-sm-3 form-control-label'

    b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' },
        class: 'form-control-danger'
      ba.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
    end
  end

  config.wrappers :horizontal_boolean, tag: 'div', class: 'form-group row', error_class: 'has-danger' do |b|
    b.use :html5
    b.optional :readonly

    b.wrapper tag: 'div', class: 'col-sm-offset-3 col-sm-9' do |wr|
      wr.wrapper tag: 'div', class: 'checkbox' do |ba|
        ba.use :label_input
      end

      wr.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' }
      wr.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
    end
  end

  config.wrappers :horizontal_radio_and_checkboxes, tag: 'div', class: 'form-group row', error_class: 'has-danger' do |b|
    b.use :html5
    b.optional :readonly

    b.use :label, class: 'col-sm-3 form-control-label'

    b.wrapper tag: 'div', class: 'col-sm-9' do |ba|
      ba.use :input
      ba.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' },
        class: 'form-control-danger'
      ba.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
    end
  end

  config.wrappers :inline_form, tag: 'div', class: 'form-group', error_class: 'has-danger' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'sr-only'

    b.use :input, class: 'form-control'
    b.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' }
    b.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
  end

  config.wrappers :multi_select, tag: 'div', class: 'form-group', error_class: 'has-danger' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'form-control-label'
    b.wrapper tag: 'div', class: 'form-inline' do |ba|
      ba.use :input, class: 'form-control'
      ba.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' },
        class: 'form-control-danger'
      ba.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
    end
  end

  config.wrappers :horizontal_select_date, tag: 'div', class: 'form-group row', error_class: 'has-danger' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'col-sm-3 form-control-label'
    b.wrapper tag: 'div', class: 'col-sm-9' do |bb|
      bb.wrapper tag: 'div', class: 'form-inline' do |ba|
        ba.use :input, class: 'form-control custom-select'
        ba.use :error, wrap_with: { tag: 'span', class: 'form-control-feedback' }
        ba.use :hint,  wrap_with: { tag: 'span', class: 'form-text text-muted' }
      end
    end
  end

  # Wrappers for forms and inputs using the Bootstrap toolkit.
  # Check the Bootstrap docs (http://getbootstrap.com)
  # to learn about the different styles for forms and inputs,
  # buttons and other elements.
  config.default_wrapper = :horizontal_form
  config.wrapper_mappings = {
    check_boxes: :horizontal_radio_and_checkboxes,
    radio_buttons: :horizontal_radio_and_checkboxes,
    file: :horizontal_file_input,
    boolean: :regular_boolean,
    datetime: :horizontal_select_date,
    date: :horizontal_select_date,
    time: :multi_select
  }
end