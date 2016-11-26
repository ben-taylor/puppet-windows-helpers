module Puppet::Parser::Functions
	newfunction(:escape_unc_path, :type => :rvalue) do | args |
		original_path = args[0]
        if (original_path[0] == '\\')
            original_path = '\\' + original_path
        end
		original_path.gsub! '\\', '\\\\\\'
	end

end