filetype plugin on
runtime! plugin/requirements.vim

describe 'enable: Requirements_matched_filename()'
    it 'to enable file type detection: basic filename'
        Expect Requirements_matched_filename('requirements.txt') to_be_true
        Expect Requirements_matched_filename('requirements-dev.txt') to_be_true
        Expect Requirements_matched_filename('dev-requirements.txt') to_be_true
        Expect Requirements_matched_filename('requires.txt') to_be_true
        Expect Requirements_matched_filename('constraints.txt') to_be_true
    end

    it 'to enable file type detection: pip-tools filename'
        Expect Requirements_matched_filename('requirements.in') to_be_true
        Expect Requirements_matched_filename('requirements-dev.in') to_be_true
        Expect Requirements_matched_filename('dev-requirements.in') to_be_true
        Expect Requirements_matched_filename('requires.in') to_be_true
    end

    it 'to enable file type detection: directory structure'
        Expect Requirements_matched_filename('requirements/dev.txt') to_be_true
        Expect Requirements_matched_filename('requires/tests.in') to_be_true
    end
end

describe 'disable: Requirements_matched_filename()'
    it 'to disable: file type detection: basic filename'
        Expect Requirements_matched_filename('requirements.text') to_be_false
    end

    it 'to disable: file type detection: pip-tools filename'
        Expect Requirements_matched_filename('requirements.ini') to_be_false
    end

    it 'to disable: file type detection: directory structure'
        Expect Requirements_matched_filename('require/dev.txt') to_be_false
        Expect Requirements_matched_filename('requirements-dev/dev.txt') to_be_false
        Expect Requirements_matched_filename('dev-requirements/dev.txt') to_be_false
    end
end

describe 'g:requirements#detect_filename_pattern'
    it 'use g:requirements#detect_filename_pattern'
        Expect Requirements_matched_filename('freeze.txt') to_be_false
        let g:requirements#detect_filename_pattern = 'freeze'
        Expect Requirements_matched_filename('freeze.txt') to_be_true
    end
end

" vim: et sw=4 ts=4 sts=4:
