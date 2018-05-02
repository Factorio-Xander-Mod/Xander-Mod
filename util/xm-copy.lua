function xm_copy(source_typ, source_name, new_name)
	out = table.deepcopy(data.raw[source_typ][source_name])
	out.name = new_name
	return out
end